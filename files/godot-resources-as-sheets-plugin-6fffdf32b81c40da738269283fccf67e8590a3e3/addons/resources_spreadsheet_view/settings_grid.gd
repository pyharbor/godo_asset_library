@tool
class_name SettingsGrid
extends GridContainer

const SETTING_PREFIX = "addons/resources_spreadsheet_view/"


func _ready():
	for x in get_children():
		var setting = SETTING_PREFIX + TextEditingUtils.pascal_case_to_snake_case(x.name)
		if x is BaseButton:
			x.toggled.connect(_set_setting.bind(setting))
			if !ProjectSettings.has_setting(setting):
				_set_setting(x.button_pressed, setting)

			else:
				x.button_pressed = ProjectSettings.get_setting(setting)

		elif x is Range:
			x.value_changed.connect(_set_setting.bind(setting))
			if !ProjectSettings.has_setting(setting):
				_set_setting(x.value, setting)

			else:
				x.value = ProjectSettings.get_setting(setting)


func _set_setting(new_value, setting):
	ProjectSettings.set_setting(setting, new_value)
