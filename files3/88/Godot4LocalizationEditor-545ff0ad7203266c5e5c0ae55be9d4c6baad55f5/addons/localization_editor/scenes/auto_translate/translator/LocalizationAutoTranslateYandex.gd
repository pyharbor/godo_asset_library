# List of locales supported by Yandex translator for LocalizationEditor : MIT License
# @author Vladimir Petrenko
# @see https://www.deepl.com/docs-api/translate-text/translate-text/
extends Object
class_name LocalizationAutoTranslateYandex

static func locales() -> Array: #[LocalizationLocaleSingle]:
	return [
		LocalizationLocaleSingle.new("az", "Azerbaijani"),
		LocalizationLocaleSingle.new("sq", "Albanian"),
		LocalizationLocaleSingle.new("am", "Amharic"),
		LocalizationLocaleSingle.new("en", "English"),
		LocalizationLocaleSingle.new("ar", "Arabic"),
		LocalizationLocaleSingle.new("hy", "Armenian"),
		LocalizationLocaleSingle.new("af", "Afrikaans"),
		LocalizationLocaleSingle.new("eu", "Basque"),
		LocalizationLocaleSingle.new("ba", "Bashkir"),
		LocalizationLocaleSingle.new("be", "Belarusian"),
		LocalizationLocaleSingle.new("bn", "Bengal"),
		LocalizationLocaleSingle.new("my", "Burmese"),
		LocalizationLocaleSingle.new("bg", "Bulgarian"),
		LocalizationLocaleSingle.new("bs", "Bosnian"),
		LocalizationLocaleSingle.new("cy", "Welsh"),
		LocalizationLocaleSingle.new("hu", "Hungarian"),
		LocalizationLocaleSingle.new("vi", "Vietnamese"),
		LocalizationLocaleSingle.new("ht", "Haitian (Creole)"),
		LocalizationLocaleSingle.new("gl", "Galician"),
		LocalizationLocaleSingle.new("nl", "Dutch"),
		LocalizationLocaleSingle.new("mrj", "Hill Mari"),
		LocalizationLocaleSingle.new("el", "Greek"),
		LocalizationLocaleSingle.new("ka", "Georgian"),
		LocalizationLocaleSingle.new("gu", "Gujarati"),
		LocalizationLocaleSingle.new("da", "Danish"),
		LocalizationLocaleSingle.new("he", "Hebrew"),
		LocalizationLocaleSingle.new("yi", "Yiddish"),
		LocalizationLocaleSingle.new("id", "Indonesian"),
		LocalizationLocaleSingle.new("ga", "Irish"),
		LocalizationLocaleSingle.new("it", "Italian"),
		LocalizationLocaleSingle.new("is", "Icelandic"),
		LocalizationLocaleSingle.new("es", "Spanish"),
		LocalizationLocaleSingle.new("kk", "Kazakh"),
		LocalizationLocaleSingle.new("kn", "Kannada"),
		LocalizationLocaleSingle.new("ca", "Catalan"),
		LocalizationLocaleSingle.new("ky", "Kirghiz"),
		LocalizationLocaleSingle.new("zh", "Chinese"),
		LocalizationLocaleSingle.new("ko", "Korean"),
		LocalizationLocaleSingle.new("xh", "Xhosa"),
		LocalizationLocaleSingle.new("km", "Khmer"),
		LocalizationLocaleSingle.new("lo", "Laotian"),
		LocalizationLocaleSingle.new("la", "Latin"),
		LocalizationLocaleSingle.new("lv", "Latvian"),
		LocalizationLocaleSingle.new("lt", "Lithuanian"),
		LocalizationLocaleSingle.new("lb", "Luxembourg"),
		LocalizationLocaleSingle.new("mg", "Malagasy"),
		LocalizationLocaleSingle.new("ms", "Malay"),
		LocalizationLocaleSingle.new("ml", "Malayalam"),
		LocalizationLocaleSingle.new("mt", "Maltese"),
		LocalizationLocaleSingle.new("mk", "Macedonian"),
		LocalizationLocaleSingle.new("mi", "Maori"),
		LocalizationLocaleSingle.new("mr", "Marathi"),
		LocalizationLocaleSingle.new("mhr", "Mari"),
		LocalizationLocaleSingle.new("mn", "Mongolian"),
		LocalizationLocaleSingle.new("de", "German"),
		LocalizationLocaleSingle.new("ne", "Nepalese"),
		LocalizationLocaleSingle.new("no", "Norwegian"),
		LocalizationLocaleSingle.new("pa", "Punjabi"),
		LocalizationLocaleSingle.new("pap", "Papiamento"),
		LocalizationLocaleSingle.new("fa", "Persian"),
		LocalizationLocaleSingle.new("pl", "Polish"),
		LocalizationLocaleSingle.new("pt", "Portuguese"),
		LocalizationLocaleSingle.new("ro", "Romanian"),
		LocalizationLocaleSingle.new("ru", "Russian"),
		LocalizationLocaleSingle.new("ceb", "Cebuano"),
		LocalizationLocaleSingle.new("sr", "Serbian"),
		LocalizationLocaleSingle.new("si", "Sinhalese"),
		LocalizationLocaleSingle.new("sk", "Slovak"),
		LocalizationLocaleSingle.new("sl", "Slovenian"),
		LocalizationLocaleSingle.new("sw", "Swahili"),
		LocalizationLocaleSingle.new("su", "Sundanese"),
		LocalizationLocaleSingle.new("tg", "Tajik"),
		LocalizationLocaleSingle.new("th", "Thai"),
		LocalizationLocaleSingle.new("tl", "Tagalog"),
		LocalizationLocaleSingle.new("ta", "Tamil"),
		LocalizationLocaleSingle.new("tt", "Tartar"),
		LocalizationLocaleSingle.new("te", "Telugu"),
		LocalizationLocaleSingle.new("tr", "Turkish"),
		LocalizationLocaleSingle.new("udm", "Udmurt"),
		LocalizationLocaleSingle.new("uz", "Uzbek"),
		LocalizationLocaleSingle.new("uk", "Ukrainian"),
		LocalizationLocaleSingle.new("ur", "Urdu"),
		LocalizationLocaleSingle.new("fi", "Finnish"),
		LocalizationLocaleSingle.new("fr", "French"),
		LocalizationLocaleSingle.new("hi", "Hindi"),
		LocalizationLocaleSingle.new("hr", "Croatian"),
		LocalizationLocaleSingle.new("cs", "Czech"),
		LocalizationLocaleSingle.new("sv", "Swedish"),
		LocalizationLocaleSingle.new("gd", "Scottish"),
		LocalizationLocaleSingle.new("et", "Estonian"),
		LocalizationLocaleSingle.new("eo", "Esperanto"),
		LocalizationLocaleSingle.new("jv", "Javanese"),
		LocalizationLocaleSingle.new("ja", "Japanese")
	]

static func label_by_code(code: String) -> String:
	for locale in locales():
		if locale.code == code:
			return locale.code + " " + locale.name
	return ""
