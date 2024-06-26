// NPContents.js

// variables used throughout functions below
var attr;
var sImg;
var sTemp;
var xpath;

function Initialize(locale) {
	displayStatus(NPContentsOverviewStatus, "npContents1");
	displayStatus(NPContentsAgreementStatus, "npContents2");
	displayStatus(NPContentsArticleStatus, "npContents3");
	displayStatus(NPContentsPossessorsStatus, "npContents4");
	displayStatus(NPContentsQPStatus, "npContents5");
	displayStatus(NPContentsAdjPStatus, "npContents6");
	displayStatus(NPContentsCompoundsStatus, "npContents7");
	displayStatus(NPContentsCatMapStatus, "npContents8");
	displayStatus(NPContentsTestingStatus, "npContents9");

	displayOutputGrammarItems();

	pawsApp.setLeftOffAt("NPContents" + locale + ".htm");
}
function displayOutputGrammarItems() {
	attr = pawsApp.getAnswerValue("/paws/@outputGrammar");

	if (attr == "False") {
		NPContentsCatMapRow.style.display = "none";
		NPContentsTestingRow.style.display = "none";
	}
}
function displayStatus(idOfItem, strElem) {
	attr = pawsApp.getAnswerValue("//np/" + strElem + "/@checkedOff");
	sImg = "&nbsp;&nbsp;<img src='";
	if (attr == "no") {
		sImg = sImg + "UnCheckedOff.gif'>";
	} else {
		sImg = sImg + "CheckedOff.gif'>";
	}
	idOfItem.innerHTML = sImg;
}
function StatusClicked(idOfItem, strElem) {
	xpath = "//np/" + strElem + "/@checkedOff";
	attr = pawsApp.getAnswerValue(xpath);
	sImg = "&nbsp;&nbsp;<img src='";
	if (attr == "no") {
		sImg = sImg + "CheckedOff.gif'>";
		sTemp = "yes";
	} else {
		sImg = sImg + "UnCheckedOff.gif'>";
		sTemp = "no";
	}
	pawsApp.setAnswerValue(xpath, sTemp);
	idOfItem.innerHTML = sImg;
}