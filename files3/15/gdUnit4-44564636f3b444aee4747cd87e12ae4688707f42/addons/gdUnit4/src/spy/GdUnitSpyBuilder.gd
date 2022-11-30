class_name GdUnitSpyBuilder
extends GdUnitClassDoubler



static func build(caller :Object, to_spy, push_errors :bool = true, debug_write = false):
	var memory_pool :int = caller.get_meta(GdUnitMemoryPool.META_PARAM)
	
	# if resource path load it before
	if GdObjects.is_scene_resource_path(to_spy):
		to_spy = load(to_spy)
	# spy checked PackedScene
	if GdObjects.is_scene(to_spy):
		return spy_on_scene(caller, to_spy.instantiate(), memory_pool, debug_write)
	# spy checked a scene instance
	if GdObjects.is_instance_scene(to_spy):
		return spy_on_scene(caller, to_spy, memory_pool, debug_write)
	
	var spy := spy_on_script(to_spy, [], debug_write)
	if spy == null:
		return null
	var spy_instance = spy.new()
	copy_properties(to_spy, spy_instance)
	GdUnitObjectInteractions.reset(spy_instance)
	spy_instance.__set_singleton(to_spy)
	spy_instance.__set_caller(caller)
	return GdUnitTools.register_auto_free(spy_instance, memory_pool)

static func get_class_info(clazz :Variant) -> Dictionary:
	var clazz_path := GdObjects.extract_class_path(clazz)
	var clazz_name :String = GdObjects.extract_class_name(clazz).value()
	return {
		"class_name" : clazz_name,
		"class_path" : clazz_path
	}

static func spy_on_script(instance, function_excludes :PackedStringArray, debug_write) -> GDScript:
	if GdObjects.is_array_type(instance):
		if GdUnitSettings.is_verbose_assert_errors():
			push_error("Can't build spy checked type '%s'! Spy checked Container Built-In Type not supported!" % instance.get_class())
		return null
	var class_info := get_class_info(instance)
	var clazz_name :String = class_info.get("class_name")
	var clazz_path :PackedStringArray = class_info.get("class_path", [clazz_name])
	if not GdObjects.is_instance(instance):
		if GdUnitSettings.is_verbose_assert_errors():
			push_error("Can't build spy for class type '%s'! Using an instance instead e.g. 'spy(<instance>)'" % [clazz_name])
		return null
	var lines := load_template(GdUnitSpyImpl, class_info)
	lines += double_functions(clazz_name, clazz_path, GdUnitSpyFunctionDoubler.new(), function_excludes)
	
	var spy := GDScript.new()
	spy.source_code = "\n".join(lines)
	spy.resource_name = "Spy%s.gd" % clazz_name
	spy.resource_path = GdUnitTools.create_temp_dir("spy") + "/Spy%s_%d.gd" % [clazz_name, Time.get_ticks_msec()]
	
	if debug_write:
		DirAccess.remove_absolute(spy.resource_path)
		ResourceSaver.save(spy, spy.resource_path)
	var error := spy.reload(true)
	if error != OK:
		push_error("Unexpected Error!, SpyBuilder error, please contact the developer.")
		return null
	return spy

static func spy_on_scene(caller :Object, scene :Node, memory_pool, debug_write) -> Object:
	if scene.get_script() == null:
		if GdUnitSettings.is_verbose_assert_errors():
			push_error("Can't create a spy checked a scene without script '%s'" % scene.get_scene_file_path())
		return null
	# buils spy checked original script
	var scene_script = scene.get_script().new()
	var spy := spy_on_script(scene_script, GdUnitClassDoubler.EXLCUDE_SCENE_FUNCTIONS, debug_write)
	scene_script.free()
	if spy == null:
		return null
	# replace original script whit spy 
	scene.set_script(spy)
	scene.__set_caller(caller)
	return GdUnitTools.register_auto_free(scene, memory_pool)

const EXCLUDE_PROPERTIES_TO_COPY = ["script", "type"]

static func copy_properties(source :Object, dest :Object) -> void:
	for property in source.get_property_list():
		var property_name = property["name"]
		var property_value = source.get(property_name)
		if EXCLUDE_PROPERTIES_TO_COPY.has(property_name):
			continue
		#if dest.get(property_name) == null:
		#	prints("|%s|" % property_name, source.get(property_name))
		
		# check for invalid name property
		if property_name == "name" and property_value == "":
			dest.set(property_name, "<empty>");
			continue
		dest.set(property_name, property_value)
