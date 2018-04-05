// LanguageProperties.js

// variables used throughout functions below
var attr;

function Initialize() {
	LangPropLangNameEn.value = pawsApp.getAnswerValue("//language/langNames/langName[@lang='en']");
	LangPropLangNameEs.value = pawsApp.getAnswerValue("//language/langNames/langName[@lang='es']");
	LangPropLangNameFr.value = pawsApp.getAnswerValue("//language/langNames/langName[@lang='fr']");
	LangPropLangAbbr.value = pawsApp.getAnswerValue("//language/langAbbr");

	LangPropFont.value = pawsApp.getanswervalue("//language/font/fontName");
	attr = pawsApp.getAnswerValue("//language/font/@rtl");
	if (attr == "False")
	LangPropRTLLTR.checked = true; else
	LangPropRTLRTL.checked = true;

	ShowBackNextButtons.style.display = "none";
	Return.style.display = "";

	Refresh()
}
function RLangPropRTL(radio) {
	radio.checked = true;
	saveData();
	Refresh();
}

function saveData() {
	var sTemp;
	pawsApp.setAnswerValue("//language/langNames/langName[@lang='en']", LangPropLangNameEn.value);
	pawsApp.setAnswerValue("//language/langNames/langName[@lang='es']", LangPropLangNameEs.value);
	pawsApp.setAnswerValue("//language/langNames/langName[@lang='fr']", LangPropLangNameFr.value);
	pawsApp.setAnswerValue("//language/langAbbr", LangPropLangAbbr.value);

	//TODO: figure what to do if any of these are missing!
	sTemp = "False" // use default if all else fails...
	if (LangPropRTLLTR.checked)
	sTemp = "False";
	if (LangPropRTLRTL.checked)
	sTemp = "True";

	pawsApp.setAnswerValue("//language/font/@rtl", sTemp);

	pawsApp.languageNameChanged();
	pawsApp.saveData();
}
function ButtonLangPropFont() {
	saveData();
	pawsApp.changeFontInfo();
	Initialize();
}
function ButtonNext() {
	saveData();
	window.navigate("LanguageFilesNewMode");
}
function Refresh() {
	var valArray = new Array();
}
