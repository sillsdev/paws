// Contents.js

// variables used throughout functions below
var attr;
var sImg;
var sTemp;
var xpath;

function Initialize(locale) {
	displayStatus(ContentsOverallTypologyQuestionsStatus, "typology");
	displayStatus(ContentsQuantifiersStatus, "qp");
	displayStatus(ContentsAdverbsStatus, "advp");
	displayStatus(ContentsAdjectivesStatus, "adjp");
	displayStatus(ContentsSimpleNPStatus, "np");
	displayStatus(ContentsProperNamesStatus, "prop");
	displayStatus(ContentsPronounsStatus, "pron");
	displayStatus(ContentsPrepositionsStatus, "pp");
	displayStatus(ContentsSingleClausesStatus, "ip");
	displayStatus(ContentsCompsStatus, "comp");
	displayStatus(ContentsQuestionsStatus, "q");
	displayStatus(ContentsRelClStatus, "relcl");
	displayStatus(ContentsAdvClsStatus, "advcl");
	displayStatus(ContentsNegativeStatus, "neg");
	displayStatus(ContentsCoordStatus, "coord");
	displayStatus(ContentsFocusStatus, "focus");
	displayStatus(ContentsExclamationsStatus, "excl");
	displayStatus(ContentsFinalStatus, "final");

	displayCheckBoxValue(OutputGrammar, "/paws/@outputGrammar");
	/* displayCheckBoxValue(OutputWriter, "/paws/@outputWriter"); */
	displayCheckBoxValue(OutputWriterPractical, "/paws/@outputWriterPractical");
	displayCheckBoxValue(OutputWriterPracticalSpanish, "/paws/@outputWriterPracticalSpanish");
	displayCheckBoxValue(OutputWriterPracticalFrench, "/paws/@outputWriterPracticalFrench");

    pawsApp.setLeftOffAt("Contents" + locale + ".htm");
	Refresh();
}
function displayCheckBoxValue(checkboxID, xpath) {
	sTemp = checkboxID.value = pawsApp.getAnswerValue(xpath);
	if (sTemp == "True")
	checkboxID.checked = true; else
	checkboxID.checked = false;
}
function displayStatus(idOfItem, strElem) {
	attr = pawsApp.getAnswerValue("//" + strElem + "/@checkedOff");
	sImg = "&nbsp;&nbsp;<img src='";
	if (attr == "no") {
		sImg = sImg + "UnCheckedOff.gif'>";
	} else {
		sImg = sImg + "CheckedOff.gif'>";
	}
	idOfItem.innerHTML = sImg;
}
function saveData() {
	pawsApp.setAnswerValue("/paws/@outputGrammar", OutputGrammar.value);

	/*pawsApp.setAnswerValue("/paws/@outputWriter", OutputWriter.value);*/

	pawsApp.setAnswerValue("/paws/@outputWriterPractical", OutputWriterPractical.value);

	pawsApp.setAnswerValue("/paws/@outputWriterPracticalSpanish", OutputWriterPracticalSpanish.value);

	pawsApp.setAnswerValue("/paws/@outputWriterPracticalFrench", OutputWriterPracticalFrench.value);

	pawsApp.saveData();
}
function SetOutputViaDescription(item) {
	switch (item) {
		case "grammar":
		if (OutputGrammar.checked) {
			OutputGrammar.checked = false;
		} else {
			OutputGrammar.checked = true;
		}
		break;
		/*case "writer":
		if (OutputWriter.checked) {
			OutputWriter.checked = false;
		} else {
			OutputWriter.checked = true;
		}
		break;*/
		case "writerPractical":
		if (OutputWriterPractical.checked) {
			OutputWriterPractical.checked = false;
		} else {
			OutputWriterPractical.checked = true;
		}
		break;
		case "writerPracticalSpanish":
		if (OutputWriterPracticalSpanish.checked) {
			OutputWriterPracticalSpanish.checked = false;
		} else {
			OutputWriterPracticalSpanish.checked = true;
		}
		break;
		case "writerPracticalFrench":
		if (OutputWriterPracticalFrench.checked) {
			OutputWriterPracticalFrench.checked = false;
		} else {
			OutputWriterPracticalFrench.checked = true;
		}
		break;
	}
	SetOutput(item);
}
function SetOutput(item) {
	switch (item) {
		case "grammar":
		if (OutputGrammar.checked) {
			OutputGrammar.value = "True";
		} else {
			OutputGrammar.value = "False";
		}
		break;
		/*case "writer":
		if (OutputWriter.checked) {
			OutputWriter.value = "True";
		} else {
			OutputWriter.value = "False";
		}
		break;*/
		case "writerPractical":
		if (OutputWriterPractical.checked) {
			OutputWriterPractical.value = "True";
		} else {
			OutputWriterPractical.value = "False";
		}
		break;
		case "writerPracticalSpanish":
		if (OutputWriterPracticalSpanish.checked) {
			OutputWriterPracticalSpanish.value = "True";
		} else {
			OutputWriterPracticalSpanish.value = "False";
		}
		break;
		case "writerPracticalFrench":
		if (OutputWriterPracticalFrench.checked) {
			OutputWriterPracticalFrench.value = "True";
		} else {
			OutputWriterPracticalFrench.value = "False";
		}
		break;
	}
	saveData();
	Refresh();
}
function StatusClicked(idOfItem, strElem) {
	xpath = "//" + strElem + "/@checkedOff";
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
function Refresh() {

	/*if (! OutputWriter.checked && ! OutputWriterPractical.checked && ! OutputWriterPracticalSpanish.checked) {
		OutputWriter.checked = true;
	}*/

	if (! OutputWriterPractical.checked && ! OutputWriterPracticalSpanish.checked && ! OutputWriterPracticalFrench.checked) {
		OutputWriterPractical.checked = true;
	}
	if (OutputGrammar.checked) {
		SettingUpAParser.style.display = "";
		InstructionsAddFeatures.style.display = "";
		InstructionsSaveResultsWriterOnly.style.display = "none";
		InstructionsSaveResultsParser.style.display = "";
		InstructionsMakeChanges.style.display = "";
	} else {
		SettingUpAParser.style.display = "none";
		InstructionsAddFeatures.style.display = "none";
		InstructionsSaveResultsWriterOnly.style.display = "";
		InstructionsSaveResultsParser.style.display = "none";
		InstructionsMakeChanges.style.display = "none";
	}
}