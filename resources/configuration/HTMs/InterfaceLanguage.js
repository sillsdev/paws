// InterfaceLanguage.js

// variables used throughout functions below
var attr;

function Initialize() {
	attr = pawsApp.getInterfaceLanguage();
	if (attr == "en")
	InterfaceLangEn.checked = true;
	else if (attr == "es")
	InterfaceLangEs.checked = true;
	else
    InterfaceLangFr.checked = true;
    
	Return.style.display = "";

	Refresh()
}
function RInterfaceLang(radio) {
	radio.checked = true;
	saveData();
	Refresh();
}

function saveData() {
	var sTemp;

	//TODO: figure what to do if any of these are missing!
	sTemp = "en" // use default if all else fails...
	if (InterfaceLangEn.checked)
	sTemp = "en";
	if (InterfaceLangEs.checked)
	sTemp = "es";
	if (InterfaceLangFr.checked)
	sTemp = "fr";

	pawsApp.setInterfaceLanguage(sTemp);
}

function copyFiles() {
	var sTemp;

	sTemp = "en" // use default if all else fails...
	if (InterfaceLangEn.checked)
	sTemp = "en";
	if (InterfaceLangEs.checked)
	sTemp = "es";
	if (InterfaceLangFr.checked)
	sTemp = "fr";

	pawsApp.CopyFiles("Localizations/" + sTemp + "/HTMs", "HTMs");
	pawsApp.CopyFiles("Localizations/" + sTemp + "/Transforms", "Transforms");
	pawsApp.CopyFiles("Localizations/" + sTemp + "/XmlPageDescriptions", "XmlPageDescriptions");
	pawsApp.CopyFile("Localizations/" + sTemp + "/LocalizedItems_" + sTemp + ".xml", "LocalizedItems.xml");
	pawsApp.saveInterfaceLanguage();
}

function Refresh() {
	var valArray = new Array();
}