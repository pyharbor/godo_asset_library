# List of locales supported by Microsoft translator for LocalizationEditor : MIT License
# @author Vladimir Petrenko
# @see https://translator.microsoft.com/
extends Object
class_name LocalizationAutoTranslateMicrosoft

static func locales() -> Array: #[LocalizationLocaleSingle]:
	return [
		LocalizationLocaleSingle.new("af", "Afrikaans"),
		LocalizationLocaleSingle.new("sq", "Albanian"),
		LocalizationLocaleSingle.new("am", "Amharic"),
		LocalizationLocaleSingle.new("ar", "Arabic"),
		LocalizationLocaleSingle.new("hy", "Armenian"),
		LocalizationLocaleSingle.new("as", "Assamese"),
		LocalizationLocaleSingle.new("az", "Azerbaijani (Latin)"),
		LocalizationLocaleSingle.new("bn", "Bangla"),
		LocalizationLocaleSingle.new("ba", "Bashkir"),
		LocalizationLocaleSingle.new("eu", "Basque"),
		LocalizationLocaleSingle.new("bs", "Bosnian (Latin)"),
		LocalizationLocaleSingle.new("bg", "Bulgarian"),
		LocalizationLocaleSingle.new("yue", "Cantonese (Traditional)"),
		LocalizationLocaleSingle.new("ca", "Catalan"),
		LocalizationLocaleSingle.new("lzh", "Chinese (Literary)"),
		LocalizationLocaleSingle.new("zh-Hans", "Chinese Simplified"),
		LocalizationLocaleSingle.new("zh-Hant", "Chinese Traditional"),
		LocalizationLocaleSingle.new("hr", "Croatian"),
		LocalizationLocaleSingle.new("cs", "Czech"),
		LocalizationLocaleSingle.new("da", "Danish"),
		LocalizationLocaleSingle.new("prs", "Dari"),
		LocalizationLocaleSingle.new("dv", "Divehi"),
		LocalizationLocaleSingle.new("nl", "Dutch"),
		LocalizationLocaleSingle.new("en", "English"),
		LocalizationLocaleSingle.new("et", "Estonian"),
		LocalizationLocaleSingle.new("fo", "Faroese"),
		LocalizationLocaleSingle.new("fj", "Fijian"),
		LocalizationLocaleSingle.new("fil", "Filipino"),
		LocalizationLocaleSingle.new("fi", "Finnish"),
		LocalizationLocaleSingle.new("fr", "French"),
		LocalizationLocaleSingle.new("fr-ca", "French (Canada)"),
		LocalizationLocaleSingle.new("gl", "Galician"),
		LocalizationLocaleSingle.new("ka", "Georgian"),
		LocalizationLocaleSingle.new("de", "German"),
		LocalizationLocaleSingle.new("el", "Greek"),
		LocalizationLocaleSingle.new("gu", "Gujarati"),
		LocalizationLocaleSingle.new("ht", "Haitian Creole"),
		LocalizationLocaleSingle.new("he", "Hebrew"),
		LocalizationLocaleSingle.new("hi", "Hindi"),
		LocalizationLocaleSingle.new("mww", "Hmong Daw (Latin)"),
		LocalizationLocaleSingle.new("hu", "Hungarian"),
		LocalizationLocaleSingle.new("is", "Icelandic"),
		LocalizationLocaleSingle.new("id", "Indonesian"),
		LocalizationLocaleSingle.new("ikt", "Inuinnaqtun"),
		LocalizationLocaleSingle.new("iu", "Inuktitut"),
		LocalizationLocaleSingle.new("iu-Latn", "Inuktitut (Latin)"),
		LocalizationLocaleSingle.new("ga", "Irish"),
		LocalizationLocaleSingle.new("it", "Italian"),
		LocalizationLocaleSingle.new("ja", "Japanese"),
		LocalizationLocaleSingle.new("kn", "Kannada"),
		LocalizationLocaleSingle.new("kk", "Kazakh"),
		LocalizationLocaleSingle.new("km", "Khmer"),
		LocalizationLocaleSingle.new("tlh-Latn", "Klingon"),
		LocalizationLocaleSingle.new("tlh-Piqd", "Klingon (plqaD)"),
		LocalizationLocaleSingle.new("ko", "Korean"),
		LocalizationLocaleSingle.new("ku", "Kurdish (Central)"),
		LocalizationLocaleSingle.new("kmr", "Kurdish (Northern)"),
		LocalizationLocaleSingle.new("ky", "Kyrgyz (Cyrillic)"),
		LocalizationLocaleSingle.new("lo", "Lao"),
		LocalizationLocaleSingle.new("lv", "Latvian"),
		LocalizationLocaleSingle.new("lt", "Lithuanian"),
		LocalizationLocaleSingle.new("mk", "Macedonian"),
		LocalizationLocaleSingle.new("mg", "Malagasy"),
		LocalizationLocaleSingle.new("ms", "Malay (Latin)"),
		LocalizationLocaleSingle.new("ml", "Malayalam"),
		LocalizationLocaleSingle.new("mt", "Maltese"),
		LocalizationLocaleSingle.new("mi", "Maori"),
		LocalizationLocaleSingle.new("mr", "Marathi"),
		LocalizationLocaleSingle.new("mn-Cyrl", "Mongolian (Cyrillic)"),
		LocalizationLocaleSingle.new("mn-Mong", "Mongolian (Traditional)"),
		LocalizationLocaleSingle.new("my", "Myanmar"),
		LocalizationLocaleSingle.new("ne", "Nepali"),
		LocalizationLocaleSingle.new("nb", "Norwegian"),
		LocalizationLocaleSingle.new("or", "Odia"),
		LocalizationLocaleSingle.new("ps", "Pashto"),
		LocalizationLocaleSingle.new("fa", "Persian"),
		LocalizationLocaleSingle.new("pl", "Polish"),
		LocalizationLocaleSingle.new("pt", "Portuguese (Brazil)"),
		LocalizationLocaleSingle.new("pt-pt", "Portuguese (Portugal)"),
		LocalizationLocaleSingle.new("pa", "Punjabi"),
		LocalizationLocaleSingle.new("otq", "Queretaro Otomi"),
		LocalizationLocaleSingle.new("ro", "Romanian"),
		LocalizationLocaleSingle.new("ru", "Russian"),
		LocalizationLocaleSingle.new("sm", "Samoan (Latin)"),
		LocalizationLocaleSingle.new("sr-Cyrl", "Serbian (Cyrillic)"),
		LocalizationLocaleSingle.new("sr-Latn", "Serbian (Latin)"),
		LocalizationLocaleSingle.new("sk", "Slovak"),
		LocalizationLocaleSingle.new("sl", "Slovenian"),
		LocalizationLocaleSingle.new("so", "Somali (Arabic)"),
		LocalizationLocaleSingle.new("es", "Spanish"),
		LocalizationLocaleSingle.new("sw", "Swahili (Latin)"),
		LocalizationLocaleSingle.new("sv", "Swedish"),
		LocalizationLocaleSingle.new("ty", "Tahitian"),
		LocalizationLocaleSingle.new("ta", "Tamil"),
		LocalizationLocaleSingle.new("tt", "Tatar (Latin)"),
		LocalizationLocaleSingle.new("te", "Telugu"),
		LocalizationLocaleSingle.new("th", "Thai"),
		LocalizationLocaleSingle.new("bo", "Tibetan"),
		LocalizationLocaleSingle.new("ti", "Tigrinya"),
		LocalizationLocaleSingle.new("to", "Tongan"),
		LocalizationLocaleSingle.new("tr", "Turkish"),
		LocalizationLocaleSingle.new("tk", "Turkmen (Latin)"),
		LocalizationLocaleSingle.new("uk", "Ukrainian"),
		LocalizationLocaleSingle.new("hsb", "Upper Sorbian"),
		LocalizationLocaleSingle.new("ur", "Urdu"),
		LocalizationLocaleSingle.new("ug", "Uyghur (Arabic)"),
		LocalizationLocaleSingle.new("uz", "Uzbek (Latin)"),
		LocalizationLocaleSingle.new("vi", "Vietnamese"),
		LocalizationLocaleSingle.new("cy", "Welsh"),
		LocalizationLocaleSingle.new("yua", "Yucatec Maya"),
		LocalizationLocaleSingle.new("zu", "Zulu")
	]

static func label_by_code(code: String) -> String:
	for locale in locales():
		if locale.code == code:
			return locale.code + " " + locale.name
	return ""