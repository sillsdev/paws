<?xml version="1.0" encoding="UTF-8"?>
<!--
<!DOCTYPE xsl:stylesheet [
	<!ENTITY nbsp "&#160;">
]>
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
	<xsl:include href="PAWSSKCommon.xsl"/>
	<!--
================================================================
Convert XML Page description to HTML and JScript code
  Input:    xml file conforming to PAWSSKHtmlMapper.dtd
  Output: HTML within embedded JScript
================================================================
Revision History is at the end of this file.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Preamble
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-->
	<xsl:param name="prmInstallPath"/>
	<xsl:param name="prmLangAbbr"/>
	<xsl:param name="prmRtlScript"/>
	<xsl:param name="prmStylesheet"/>
	<xsl:param name="prmWorkingPath"/>
	<xsl:param name="prmLocale" select="'_en'"/>
	<xsl:param name="prmBackLabel" select="'Back'"/>
	<xsl:param name="prmNextLabel" select="'Next'"/>
	<xsl:param name="prmReturnToContentsLabel" select="'Return to Contents'"/>
	<xsl:param name="prmTypeOfFeature" select="'Type of Feature'"/>
	<xsl:param name="prmFeature" select="'Feature'"/>
	<xsl:param name="prmExplanation" select="'Explanation'"/>
	<xsl:param name="prmMorphemes" select="'Morphemes'"/>
	<xsl:param name="prmOutputGrammar" select="'False'"/>
	<xsl:param name="prmInterlinearOutputStyle" select="'standard'"/>
	<xsl:param name="prmVernacular" select="'Language:'"/>
	<xsl:param name="prmIpa" select="'IPA:'"/>
	<xsl:param name="prmFree" select="'Free:'"/>
	<xsl:param name="prmGloss" select="'Gloss:'"/>
	<xsl:param name="prmAddExample" select="' Add another example'"/>
	<xsl:variable name="Section">
		<xsl:value-of select="//form/@section"/>
	</xsl:variable>
	<xsl:variable name="sLastVisible" select="'LastVisible'"/>
	<xsl:variable name="minInterlinearToShow" select="'3'"/>
	<xsl:key name="TechnicalTerms" match="technicalTerm" use="@id"/>
	<!--
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Main template
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-->
	<xsl:template match="/">
		<xsl:comment>PAWS generated html page</xsl:comment>
		<xsl:comment>
			<xsl:text>PageCount="</xsl:text>
			<xsl:choose>
				<xsl:when test="page/@countOutputGrammar and $prmOutputGrammar='True'">
					<xsl:value-of select="page/@countOutputGrammar"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="page/@count"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:text>"</xsl:text>
		</xsl:comment>
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<title>
					<xsl:value-of select="/page/title"/>
				</title>
				<style type="text/css">
					<xsl:value-of select="$prmStylesheet"/>
					<xsl:text>
BODY {
  background-image: url(</xsl:text>
					<xsl:value-of select="$prmInstallPath"/>
					<xsl:text>Styles/p12c08.gif);
}
</xsl:text>
				</style>
				<xsl:call-template name="JScript"/>
			</head>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<!--
		GetInterlinearIDType
	-->
	<xsl:template name="GetInterlinearIDType">
		<xsl:param name="type"/>
		<xsl:choose>
			<xsl:when test="$type='vernacular'">
				<xsl:text>v</xsl:text>
			</xsl:when>
			<xsl:when test="$type='ipa'">
				<xsl:text>i</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>f</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!--
		GetInterlinearLineType
	-->
	<xsl:template name="GetInterlinearLineType">
		<xsl:param name="sType"/>
		<xsl:choose>
			<xsl:when test="$sType='vernacular'">
				<xsl:text>vernacular</xsl:text>
			</xsl:when>
			<xsl:when test="$sType='ipa'">
				<xsl:text>ipa</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>free</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!--
		GetPathForInterlinearEntry
	-->
	<xsl:template name="GetPathForInterlinearEntry">
		<xsl:choose>
			<xsl:when test="@section">
				<xsl:value-of select="@section"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$Section"/>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>/</xsl:text>
		<xsl:value-of select="./@dataItem"/>
	</xsl:template>
	<!--
  - - - - - - - -
  JScript
  - - - - - - - -
  -->
	<xsl:template name="JScript">
		<script type="text/javascript">
  // variables used throughout functions below
var attr;
	// would like to use enums, but apparently they are not supported yet
var HeadPosInitial = 1;
var HeadPosFinal = 2;

var SpecPosInitial = 1;
var SpecPosInternal = 2;
var SpecPosFinal = 3;
var SpecPosUnknown = 4;
<xsl:for-each select="//textBox[contains(@dataItem,'Example') or @dataItem='example'][@kind!='table' and @kind!='other']">
	<xsl:text>var </xsl:text>
	<xsl:value-of select="@id"/>
	<xsl:value-of select="$sLastVisible"/>
	<xsl:text>= 3;
</xsl:text>
</xsl:for-each>
			<xsl:for-each select="//textBox[contains(@dataItem,'Example') or @dataItem='example'][@kind!='table' and @kind!='other']">
	<xsl:text>function InsertClicked</xsl:text>
	<xsl:value-of select="@id"/>
	<xsl:text>()
{
	</xsl:text>
	<xsl:value-of select="@id"/>
	<xsl:value-of select="$sLastVisible"/>
	<xsl:text>= Math.min(10,</xsl:text>
	<xsl:value-of select="@id"/>
	<xsl:value-of select="$sLastVisible"/>
	<xsl:text>+1);
		switch (</xsl:text>
	<xsl:value-of select="@id"/>
	<xsl:value-of select="$sLastVisible"/>
	<xsl:text>)
	{
</xsl:text>
	<xsl:call-template name="CreateInterlinearDisplayCase">
		<xsl:with-param name="iCount" select="$minInterlinearToShow+1"/>
	</xsl:call-template>
	<xsl:text>
	}
	</xsl:text>
	<xsl:text>if (</xsl:text>
	<xsl:value-of select="@id"/>
	<xsl:value-of select="$sLastVisible"/>
	<xsl:text> &gt; </xsl:text>
	<xsl:value-of select="$maxInterlinear"/>
	<xsl:text>)
	</xsl:text>
	<xsl:value-of select="@id"/>
	<xsl:text>InsertAction.style.display = "none";
		else
	</xsl:text>
	<xsl:value-of select="@id"/>
	<xsl:text>InsertAction.style.display = "";
	</xsl:text>
	<xsl:text>
}
</xsl:text>
</xsl:for-each>

function Initialize(locale)
{
var sTemp;
var thisTextarea;
var thisTable;
var maxForms;
pawsApp.useWaitCursor();
<xsl:apply-templates select="//textBox | //groupName | //catMap | //featureItem | //checkbox | //contentCheckBoxOther" mode="load"/>
pawsApp.setLeftOffAt("<xsl:value-of select="$prmWorkingPath"/>
			<xsl:value-of select="//page/@id"/>.htm");
Refresh();
pawsApp.useDefaultCursor();
}
function GetSpecifierPos()
{
	attr = pawsApp.getAnswerValue("//typology/@wordOrder");
	if (attr == "SVO" || attr == "SOV")
		return SpecPosInitial;
	else
	  {
		if (attr == "VSO" || attr == "OSV")
			return SpecPosInternal;
		  else
			return SpecPosFinal;
	  }
}
function GetHeadPos()
{
	attr = pawsApp.getAnswerValue("//typology/@wordOrder");
	if (attr == "SVO" || attr == "VSO" || attr == "VOS")
	   return HeadPosInitial;
	else
	   return HeadPosFinal;
}

function GetPositionBasedOnSpecifier(sAttr)
{
	var eSpecPos;
	if (sAttr == "unknown")
	  {
		// set default
		eSpecPos = GetSpecifierPos();
		if (eSpecPos == SpecPosInitial || eSpecPos == SpecPosInternal)
			return "before";
		else
			return  "after";
	  }
	else
		return sAttr;
}
function GetPositionBasedOnHead(sAttr, bSame)
{
	var eHeadPos;
	if (sAttr == "unknown")
	  {
		// set default
		eHeadPos = GetHeadPos();
		if (eHeadPos == HeadPosInitial)
		  {
			if (bSame)
				return "before";
			else
				return "after";
		  }
		else
		  {
			if (bSame)
				return "after";
			else
				return "before";
		  }
	  }
	else
		return sAttr;
}
<xsl:apply-templates select="//groupName" mode="checked"/>
function saveData()
{
var sTemp;
<xsl:apply-templates select="//textBox | //groupName | //catMap | //featureItem | //checkbox" mode="save"/>
pawsApp.saveData();
}
function ButtonNext()
{
	saveData();
	attr = pawsApp.getAnswerValue("/paws/@outputGrammar");
	if (attr == "False") {
			pawsApp.load ("<xsl:variable name="sGoToNoGrammar" select="normalize-space(//button[@value='Next']/@gotoNoGrammar)"/>
			<xsl:variable name="sGoTo" select="normalize-space(//button[@value='Next']/@goto)"/>
			<xsl:value-of select="$prmInstallPath"/>
			<xsl:text>HTMs/</xsl:text>
			<xsl:choose>
				<xsl:when test="string-length($sGoToNoGrammar) &gt; 0">
					<xsl:value-of select="$sGoToNoGrammar"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$sGoTo"/>
				</xsl:otherwise>
			</xsl:choose>");
			}
	 else {
			pawsApp.load ("<xsl:value-of select="$prmInstallPath"/>HTMs/<xsl:value-of select="$sGoTo"/>");
			}
}
function ButtonBack()
{
	saveData();
	attr = pawsApp.getAnswerValue("/paws/@outputGrammar");
	if (attr == "False")
	pawsApp.load ("<xsl:variable name="sBackGoToNoGrammar" select="normalize-space(//button[@value='Back']/@gotoNoGrammar)"/>
			<xsl:variable name="sBackGoTo" select="normalize-space(//button[@value='Back']/@goto)"/>
			<xsl:value-of select="$prmInstallPath"/>
			<xsl:text>HTMs/</xsl:text>
			<xsl:choose>
				<xsl:when test="string-length($sBackGoToNoGrammar) &gt; 0">
					<xsl:value-of select="$sBackGoToNoGrammar"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$sBackGoTo"/>
				</xsl:otherwise>
			</xsl:choose>");
			else
			pawsApp.load ("<xsl:value-of select="$prmInstallPath"/>HTMs/<xsl:value-of select="$sBackGoTo"/>");
}
function ReturnContents()
{
	saveData();
	pawsApp.load ("<xsl:value-of select="$prmInstallPath"/>HTMs/Contents<xsl:value-of select="$prmLocale"/>.htm");
}
function Refresh()
{
var valArray = new Array();
<xsl:for-each select="//showWhen">
				<xsl:variable name="showID" select="@id"/>
				<xsl:variable name="showable" select="//*[@show=$showID]"/>
				<xsl:for-each select="./*">
					<xsl:if test="name()='whenValue'">
						<xsl:choose>
							<xsl:when test="@attr">
	sTemp = pawsApp.getAnswerValue("//<xsl:value-of select="@element"/>/@<xsl:value-of select="@attr"/>");
											  </xsl:when>
							<xsl:otherwise>
	sTemp = pawsApp.getAnswerValue("//<xsl:value-of select="@element"/>");
	  </xsl:otherwise>
						</xsl:choose>
		valArray[<xsl:value-of select="position()"/>] = sTemp;
					</xsl:if>
				</xsl:for-each>
if (<xsl:for-each select="./*">
					<xsl:choose>
						<xsl:when test="name(.)='whenRadio' or name()='whenCheckbox'">
							<xsl:value-of select="@button"/>.checked</xsl:when>
						<xsl:when test="name()='whenValue'">(valArray[<xsl:value-of select="position()"/>] == "<xsl:value-of select="@value"/>")</xsl:when>
						<xsl:when test="name()='and'"> &amp;&amp; </xsl:when>
						<xsl:when test="name()='or'"> || </xsl:when>
						<xsl:when test="name()='not'"> !</xsl:when>
						<xsl:when test="name()='openParen'"> ( </xsl:when>
						<xsl:when test="name()='closeParen'"> ) </xsl:when>
					</xsl:choose>
				</xsl:for-each>)
  {
<xsl:for-each select="$showable">
					<xsl:choose>
						<xsl:when test="name()='radio' or name()='checkbox'">
							<xsl:value-of select="@id"/>_tr.style.display = "";
</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="@id"/>.style.display = "";
</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>  }
else
  {
<xsl:for-each select="$showable">
					<xsl:choose>
						<xsl:when test="name()='radio' or name()='checkbox'">
							<xsl:value-of select="@id"/>_tr.style.display = "none";
</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="@id"/>.style.display = "none";
</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>  }
	  </xsl:for-each>
attr = pawsApp.getAnswerValue("/paws/@outputGrammar");
if (attr == "False")
{
			<xsl:for-each select="//instruction[ancestor::form and string-length(normalize-space(@id)) &gt; 0]">
				<xsl:value-of select="@id"/>
				<xsl:text>.style.display = "none";
</xsl:text>
			</xsl:for-each>
}
<xsl:for-each select="//textBox[parent::checkbox]">
if(<xsl:value-of select="../@id"/>.checked) {
   <xsl:value-of select="@id"/>.disabled="";
   }
   else {
   <xsl:value-of select="@id"/>.disabled="yes";
   }
   
</xsl:for-each>

saveData();
}
function CheckBox(checkbox)
{
checkbox.checked = !checkbox.checked;
Refresh();
}

function ShowTermDefinition(msg)
{
pawsApp.showTermDefinition(msg);
}

function CreateExampleRow(idValue, prompt, code, size, cssClass) {
var newRow = document.createElement("tr");
var newCell1 = document.createElement("td");
newCell1.innerHTML=prompt;
var newCell2 = document.createElement("td");
var newTextArea = document.createElement("textarea");
newTextArea.setAttribute("rows", "1");
newTextArea.setAttribute("contenteditable", "true");
newTextArea.setAttribute("class", cssClass);
newTextArea.setAttribute("onfocusout", "saveData()");
newTextArea.setAttribute("wrap", "off");
newTextArea.setAttribute("cols", "40");
newTextArea.setAttribute("id", idValue + code + size);
newTextArea.setAttribute("name", idValue + code + size);
newCell2.appendChild(newTextArea);
newRow.appendChild(newCell1);
newRow.appendChild(newCell2);
return newRow;
}

function ExampleInsertClicked(tableme,idValue,cssClass) {
/*pawsApp.showSomething("ExampleInsertClicked called; idValue='" + idValue + "'");*/
var size = tableme.rows.length;
var trnew = document.createElement("tr");
var tdnew = document.createElement("td");
var tablenew = document.createElement("table");
var tbodynew = document.createElement("tbody");
/*var tableClass = document.createAttribute("class","exampleEntyTable");*/
tablenew.setAttribute("class",cssClass);

var trv = CreateExampleRow(idValue, "<xsl:value-of select="$prmVernacular"/>", "v", size, "vernacular");
var tri = CreateExampleRow(idValue, "<xsl:value-of select="$prmIpa"/>", "i", size, "ipa");
var trg = CreateExampleRow(idValue, "<xsl:value-of select="$prmGloss"/>", "f", size, "free");
tbodynew.appendChild(trv);
tbodynew.appendChild(tri);
tbodynew.appendChild(trg);
tablenew.appendChild(tbodynew);

tdnew.appendChild(tablenew);
trnew.appendChild(tdnew);
var lastRow = document.getElementById(idValue + "InsertAction");
tableme.tBodies[0].insertBefore(trnew,lastRow);
}

function CreateExampleEntryLineSave(sId,sDataPath,i,sCode,sType) {
sTemp = sId + sCode + i;
thisTextarea = document.getElementById(sTemp);
pawsApp.setAnswerValue("//" + sDataPath + "/form[" + i +"]/" + sType, thisTextarea.value);
}

function CreateExampleEntrySave(sId,sDataPath) {
thisTable = document.getElementById(sId);
maxForms = thisTable.rows.length - 1;
maxDataItems = pawsApp.getFormsLength("//" + sDataPath);
for (let i = 1; i &lt;= maxForms; i++) {
if (i &gt; maxDataItems) {
pawsApp.createNewFormEntry("//" + sDataPath, i);
}
CreateExampleEntryLineSave(sId,sDataPath,i,"v","vernacular");
<xsl:if test="$prmInterlinearOutputStyle='Blessymol'">
CreateExampleEntryLineSave(sId,sDataPath,i,"i","ipa");
</xsl:if>
CreateExampleEntryLineSave(sId,sDataPath,i,"f","gloss");
}
}

function CreateExampleEntryLineLoad(sId,sDataPath,i,sCode,sType,defaultGloss) {
sTemp = sId + sCode + i;
thisTextarea = document.getElementById(sTemp);
sTemp = pawsApp.getAnswerValue("//" + sDataPath + "/form[" + i +"]/" + sType);
if (sTemp =="" &amp;&amp; sType=="gloss" &amp;&amp; defaultGloss != "")
sTemp = defaultGloss;
thisTextarea.innerHTML = sTemp;
}

function CreateExampleEntryLoad(sId,sDataPath,defaultGloss,cssClass) {
thisTable = document.getElementById(sId);
maxForms = pawsApp.getFormsLength("//" + sDataPath);
for (let i = 1; i &lt;= maxForms; i++) {
/*if (i &gt; 1) {*/
ExampleInsertClicked(thisTable,sId,cssClass);
/*}*/
CreateExampleEntryLineLoad(sId,sDataPath,i,"v","vernacular","");
<xsl:if test="$prmInterlinearOutputStyle='Blessymol'">
CreateExampleEntryLineLoad(sId,sDataPath,i,"i","ipa","");
</xsl:if>
CreateExampleEntryLineLoad(sId,sDataPath,i,"f","gloss",defaultGloss);
}
}
</script>
	</xsl:template>
	<!--
  - - - - - - - -
  textBox element load
  - - - - - - - -
  -->
	<xsl:template match="//textBox[contains(@dataItem,'Example') or @dataItem='example'][@kind!='table' and @kind!='other']" mode="load">
		<xsl:call-template name="CreateInterlinearEntryLoadJScript">
			<xsl:with-param name="sPath">
				<xsl:call-template name="GetPathForInterlinearEntry"/>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	<xsl:template match="//textBox[@kind='table']" mode="load">
		<xsl:variable name="sPath">
			<xsl:call-template name="GetPathForInterlinearEntry"/>
		</xsl:variable>
<!--		<xsl:text>pawsApp.showSomething("kind = table for '</xsl:text><xsl:value-of select="@id"/><xsl:text>'");</xsl:text>-->
		<xsl:text>CreateExampleEntryLoad("</xsl:text>
		<xsl:value-of select="@id"/>
		<xsl:text>","</xsl:text>
		<xsl:value-of select="$sPath"/>
		<xsl:text>","</xsl:text>
		<xsl:value-of select="gloss"/>
		<xsl:text>","</xsl:text>
		<xsl:choose>
			<xsl:when test="ancestor::featureRow">
				<xsl:text>exampleEntryTable</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>interlinearTable</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>");
</xsl:text>
	</xsl:template>
	<xsl:template match="//textBox[@kind='other'] | //catMap" mode="load">
<!--		<xsl:text>pawsApp.showSomething("kind = other for '</xsl:text><xsl:value-of select="@id"/><xsl:text>'");</xsl:text>-->
		<xsl:value-of select="@id"/>.value = <xsl:text>pawsApp.getAnswerValue("//</xsl:text>
		<xsl:choose>
			<xsl:when test="@section">
				<xsl:value-of select="@section"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$Section"/>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>/</xsl:text>
		<xsl:value-of select="./@dataItem"/>");
	</xsl:template>
	<!--
  - - - - - - - -
  textBox element save
  - - - - - - - -
	-->
	<xsl:template match="//textBox[contains(@dataItem,'Example') or @dataItem='example'][@kind!='table' and @kind!='other']" mode="save">
		<xsl:call-template name="CreateInterlinearEntrySaveJScript">
			<xsl:with-param name="sPath">
				<xsl:call-template name="GetPathForInterlinearEntry"/>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	<xsl:template match="//textBox[@kind='table']" mode="save">
		<xsl:variable name="sPath">
			<xsl:call-template name="GetPathForInterlinearEntry"/>
		</xsl:variable>
		<xsl:text>CreateExampleEntrySave("</xsl:text>
		<xsl:value-of select="@id"/>
		<xsl:text>","</xsl:text>
		<xsl:value-of select="$sPath"/>
		<xsl:text>");
</xsl:text>
	</xsl:template>
	<xsl:template match="//textBox[@kind='other'] | //catMap" mode="save">
		<xsl:text>pawsApp.setAnswerValue("//</xsl:text>
		<xsl:choose>
			<xsl:when test="@section">
				<xsl:value-of select="@section"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$Section"/>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>/</xsl:text>
		<xsl:value-of select="./@dataItem"/>", <xsl:value-of select="@id"/>.value);
	</xsl:template>
	<!--
  - - - - - - - -
  featureItem load
   - - - - - - - -
  -->
	<xsl:template match="//featureItem" mode="load">
	attr = pawsApp.getAnswerValue("//<xsl:value-of select="$Section"/>/<xsl:value-of select="@dataValue"/>/@checked");
	if (attr == "yes")
		  <xsl:value-of select="@name"/>.checked = true;
	else
			  <xsl:value-of select="@name"/>.checked = false;
  </xsl:template>
	<!--
  - - - - - - - -
  featureItem save
   - - - - - - - -
  -->
	<xsl:template match="//featureItem" mode="save">
	//TODO: figure what to do if any of these are missing!
	sTemp = "no" // use default if all else fails...
	if (<xsl:value-of select="@name"/>.checked)
	  sTemp = "yes";
	pawsApp.setAnswerValue("//<xsl:value-of select="$Section"/>/<xsl:value-of select="./@dataValue"/>/@checked", sTemp);
</xsl:template>
	<!--
  - - - - - - - -
  groupName load
   - - - - - - - -
  -->
	<xsl:template match="//groupName" mode="load">
	attr = pawsApp.getAnswerValue("//<xsl:value-of select="$Section"/>/@<xsl:value-of select="./@dataItem"/>");
<xsl:choose>
			<xsl:when test="@position='no'">
				<xsl:for-each select="../radio | ../checkbox">
					<xsl:choose>
						<xsl:when test="position()=1">if (attr == "<xsl:value-of select="@dataValue"/>")
		</xsl:when>
						<xsl:when test="position()>1 and position() != last()">else if (attr == "<xsl:value-of select="@dataValue"/>")
</xsl:when>
						<xsl:otherwise>else
			</xsl:otherwise>
					</xsl:choose>
					<xsl:value-of select="@id"/>.checked = true;
	</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="@position='yesHead'">sPos = GetPositionBasedOnHead(attr, true);
	</xsl:when>
					<xsl:when test="@position='yesHeadDiff'">sPos = GetPositionBasedOnHead(attr, false);
	</xsl:when>
					<xsl:otherwise>sPos = GetPositionBasedOnSpecifier(attr);
</xsl:otherwise>
				</xsl:choose>
				<xsl:for-each select="../radio | ../checkbox">
					<xsl:choose>
						<xsl:when test="position()=1">if (sPos == "<xsl:value-of select="@dataValue"/>")
		</xsl:when>
						<xsl:when test="position()>1 and position() != last()">else if (sPos=="<xsl:value-of select="@dataValue"/>")
</xsl:when>
						<xsl:otherwise>else
</xsl:otherwise>
					</xsl:choose>
					<xsl:value-of select="@id"/>.checked = true;
	</xsl:for-each>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!--
  - - - - - - - -
  groupName save
   - - - - - - - -
  -->
	<xsl:template match="//groupName" mode="save">
	//TODO: figure what to do if any of these are missing!
	sTemp = "<xsl:value-of select="@default"/>" // use default if all else fails...
	<xsl:for-each select="../radio | ../checkbox">if (<xsl:value-of select="@id"/>.checked)
	sTemp = "<xsl:value-of select="@dataValue"/>";
	</xsl:for-each>
	pawsApp.setAnswerValue("//<xsl:value-of select="$Section"/>/@<xsl:value-of select="./@dataItem"/>", sTemp);
</xsl:template>
	<!--
  - - - - - - - -
  groupName checked
   - - - - - - - -
  -->
	<xsl:template match="//groupName" mode="checked">
function <xsl:value-of select="."/>(radio)
{
radio.checked = true;
Refresh();
}
</xsl:template>
	<!-- **************************************************************************
	  Remaining templates are in alphabetical order
	  *************************************************************************** -->
	<!--
   a
	-->
	<xsl:template match="//a">
		<a href="{@href}">
			<xsl:if test="@target">
				<xsl:attribute name="target">
					<xsl:value-of select="@target"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="@onclick">
				<xsl:attribute name="onclick">
					<xsl:value-of select="substring-before(@onclick,'Q')"/>
					<xsl:value-of select="$prmInstallPath"/>
					<xsl:value-of select="substring-after(@onclick,'Q')"/>
				</xsl:attribute>
			</xsl:if><xsl:apply-templates/>
		</a>
	</xsl:template>
	<!--
   br
	-->
	<xsl:template match="//br">
		<br/>
	</xsl:template>
	<!--
   button
	-->
	<xsl:template match="//button">
		<xsl:element name="input">
			<xsl:attribute name="type">button</xsl:attribute>
			<xsl:attribute name="value">
				<xsl:choose>
					<xsl:when test="@value='Back'">
						<xsl:text>&lt;&#x20;</xsl:text>
						<xsl:value-of select="$prmBackLabel"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$prmNextLabel"/>
						<xsl:text>&#x20;&gt;</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="name">B<xsl:value-of select="@value"/></xsl:attribute>
			<xsl:attribute name="id">
				<xsl:value-of select="@id"/>
			</xsl:attribute>
			<xsl:attribute name="onclick">Button<xsl:value-of select="@value"/>()</xsl:attribute>
			<xsl:attribute name="style">width: 78px; height: 24px</xsl:attribute>
		</xsl:element>
		<xsl:if test="position()=1">
			<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
		</xsl:if>
	</xsl:template>
	<!--
   buttons
	-->
	<xsl:template match="//buttons">
		<xsl:apply-templates/>
		<scan>
			<xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
			<a onclick="ReturnContents()">
				<xsl:attribute name="href"><xsl:value-of select="$prmInstallPath"/>HTMs/Contents<xsl:value-of select="$prmLocale"/>.htm</xsl:attribute>
				<xsl:value-of select="$prmReturnToContentsLabel"/>
				<!--<xsl:text>Return to Contents</xsl:text>-->
			</a>
		</scan>
	</xsl:template>
	<!--
   category
	-->
	<xsl:template match="//category">
		<span class="category">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--
   catMap
	-->
	<xsl:template match="//catMap">
		<br/>
  Morphological category to be changed to <span class="category">
			<xsl:value-of select="."/>
		</span> is:&#x20;&#x20;<input type="text" size="30" style="position:relative;top=3px" id="{@id}">
			<xsl:attribute name="name">
				<xsl:value-of select="./@id"/>
			</xsl:attribute>
		</input>
	</xsl:template>
	<!--
		- - - - - - - -
		checkbox load
		- - - - - - - -
	-->
	<xsl:template match="//checkbox" mode="load">
		attr = pawsApp.getAnswerValue("//<xsl:value-of select="$Section"/>/<xsl:value-of select="@dataItem"/>/@checked");
		if (attr == "yes")
		<xsl:value-of select="@id"/>.checked = true;
		else
		<xsl:value-of select="@id"/>.checked = false;
	</xsl:template>
	<!--
		- - - - - - - -
		featureItem save
		- - - - - - - -
	-->
	<xsl:template match="//checkbox" mode="save">
		//TODO: figure what to do if any of these are missing!
		sTemp = "no" // use default if all else fails...
		if (<xsl:value-of select="@id"/>.checked)
		sTemp = "yes";
		pawsApp.setAnswerValue("//<xsl:value-of select="$Section"/>/<xsl:value-of select="@dataItem"/>/@checked", sTemp);
	</xsl:template>
	<!--
		checkbox
	-->
	<xsl:template match="//checkbox">
		<tr>
			<xsl:if test="@id and @show">
				<xsl:attribute name="id"><xsl:value-of select="@id"/>_tr</xsl:attribute>
			</xsl:if>
			<td valign="top">
				<xsl:element name="input">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="id">
						<xsl:value-of select="@id"/>
					</xsl:attribute>
					<xsl:attribute name="name">
						<xsl:value-of select="@id"/>
					</xsl:attribute>
					<xsl:attribute name="value">
						<xsl:value-of select="@dataItem"/>
					</xsl:attribute>
				   <xsl:attribute name="onclick">
				      <xsl:text>Refresh()</xsl:text>
				   </xsl:attribute>
				</xsl:element>
			</td>
			<xsl:element name="td">
				<xsl:attribute name="width">99%</xsl:attribute>
			   <span>
			      <xsl:attribute name="id"><xsl:value-of select="@id"/>CBPrompt</xsl:attribute>
			      <xsl:attribute name="onclick">
					<xsl:text>CheckBox(</xsl:text>
					<xsl:value-of select="@id"/>
					<xsl:text>)</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="value">
					<xsl:value-of select="@dataitem"/>
				</xsl:attribute>
				<xsl:attribute name="onmouseover">this.style.cursor='default'</xsl:attribute>
				<xsl:apply-templates select="text()"/>
			   </span>
			   <xsl:apply-templates select="textBox"/>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--
		checkboxGroup
	-->
	<xsl:template match="//checkboxGroup">
	   <xsl:choose>
	      <xsl:when test="not(name(..)='radioGroup')">
	         <!-- outer-level case -->
	         <xsl:element name="table">
	            <xsl:attribute name="border">0</xsl:attribute>
	            <xsl:attribute name="style">margin-left: 0.5in</xsl:attribute>
	            <xsl:if test="@id">
	               <xsl:attribute name="id">
	                  <xsl:value-of select="@id"/>
	               </xsl:attribute>
	            </xsl:if>
	            <xsl:apply-templates/>
	         </xsl:element>
	      </xsl:when>
	      <xsl:otherwise>
	         <!-- embedded within another radioGroup case -->
	         <xsl:element name="tr">
	            <xsl:if test="@id">
	               <xsl:attribute name="id">
	                  <xsl:value-of select="@id"/>
	               </xsl:attribute>
	            </xsl:if>
	            <td>
	               <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
	            </td>
	            <td>
	               <xsl:element name="table">
	                  <xsl:attribute name="border">0</xsl:attribute>
	                  <xsl:apply-templates/>
	               </xsl:element>
	            </td>
	         </xsl:element>
	      </xsl:otherwise>
	   </xsl:choose>
	</xsl:template>
	<!--
   codeInfo
	-->
	<xsl:template match="//codeInfo">
		<xsl:comment>
			<xsl:value-of select="."/>
		</xsl:comment>&#xa;
</xsl:template>
	<!--
		contentCheckBoxOther
	-->
	<xsl:template match="//contentCheckBoxOther">
		<span id="{@id}"/>
	</xsl:template>
	<!--
   contents
	-->
	<xsl:template match="//contents">
		<span class="contents">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--
   div
	-->
	<xsl:template match="//div">
		<xsl:element name="div">
			<xsl:attribute name="id">
				<xsl:value-of select="@id"/>
			</xsl:attribute>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<!--
   EnglishExample
	-->
	<xsl:template match="//EnglishExample">
		<xsl:if test="name(preceding-sibling::node()[1])='introduction'">
			<br/>
		</xsl:if>
		<div align="left" class="EnglishExample">
			<table border="0">
				<xsl:apply-templates/>
			</table>
		</div>
	</xsl:template>
	<!--
   example
	-->
	<xsl:template match="//example">
		<span class="example">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--
   exItem
	-->
	<xsl:template match="//exItem">
		<tr>
			<td valign="top">
				<xsl:if test="not(@label)">
					<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
				</xsl:if>
				<xsl:if test="@label">
					<xsl:value-of select="@label"/>
				</xsl:if>
			</td>
			<td>
				<xsl:apply-templates/>
			</td>
		</tr>
	</xsl:template>
	<!--
   feature
	-->
	<xsl:template match="//feature">
		<span class="feature">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--
   featureChart
	-->
	<xsl:template match="//featureChart">
		<br/>
		<table border="1" style="BACKGROUND-COLOR: transparent" class="featureChart">
			<tr>
				<xsl:if test="@types='yes'">
					<th align="left" valign="top">
						<xsl:value-of select="$prmTypeOfFeature"/>
					</th>
				</xsl:if>
				<th align="left" valign="top">
					<xsl:value-of select="$prmFeature"/>
				</th>
				<xsl:if test="not(@explanations='no')">
					<th align="left" valign="top">
						<xsl:value-of select="$prmExplanation"/>
					</th>
				</xsl:if>
				<xsl:if test="descendant::textBox">
					<th align="left" valign="top">
						<xsl:value-of select="$prmMorphemes"/>
					</th>
				</xsl:if>
			</tr>
			<xsl:apply-templates/>
		</table>
	</xsl:template>
	<!--
   featureExplanation
	-->
	<xsl:template match="//featureExplanation">
		<xsl:if test="not(ancestor::featureChart/@explanations='no')">
			<td valign="top">
				<xsl:apply-templates/>
			</td>
		</xsl:if>
	</xsl:template>
	<!--
   featureItem
	-->
	<xsl:template match="//featureItem">
		<td valign="top">
			<input type="checkbox" onfocusout="saveData()">
				<xsl:attribute name="id">
					<xsl:value-of select="@name"/>
				</xsl:attribute>
				<xsl:attribute name="value">
					<xsl:value-of select="@dataValue"/>
				</xsl:attribute>
				<span class="feature">
					<xsl:apply-templates/>
				</span>
			</input>
		</td>
	</xsl:template>
	<!--
   featureRow
	-->
	<xsl:template match="//featureRow">
		<tr>
			<xsl:if test="string-length(@id)&gt;0">
				<xsl:attribute name="id">
					<xsl:value-of select="@id"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates/>
		</tr>
	</xsl:template>
	<!--
   featureType
	-->
	<xsl:template match="//featureType">
		<xsl:if test="ancestor::featureChart/@types='yes'">
			<td valign="top">
				<xsl:if test="@rowspan">
					<xsl:attribute name="rowspan">
						<xsl:value-of select="@rowspan"/>
					</xsl:attribute>
				</xsl:if>
				<xsl:value-of select="."/>
			</td>
		</xsl:if>
	</xsl:template>
	<!--
   file
	-->
	<xsl:template match="//file">
		<xsl:element name="span">
			<xsl:attribute name="class">file</xsl:attribute>
			<xsl:attribute name="id">
				<xsl:value-of select="@id"/>
			</xsl:attribute>
			<xsl:value-of select="$prmLangAbbr"/>
			<xsl:value-of select="substring-after(.,'xxx')"/>
		</xsl:element>
	</xsl:template>
	<!--
   font or fileInfo or directoryInfo
	-->
	<xsl:template match="//font | //fileInfo | //directoryInfo">
		<xsl:apply-templates select="prompt"/>
		<xsl:choose>
			<xsl:when test="name()='font'">
				<xsl:call-template name="DoButtonedTextArea">
					<xsl:with-param name="sButtonString" select="' Change Font '"/>
					<xsl:with-param name="sCol" select="'40'"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="DoButtonedTextArea">
					<xsl:with-param name="sButtonString" select="' Browse '"/>
					<xsl:with-param name="sCol" select="'60'"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!--
   form
	-->
	<xsl:template match="//form">
		<br/>
		<xsl:element name="div">
			<xsl:attribute name="class">form</xsl:attribute>
			<xsl:if test="@transparent='yes'">
				<xsl:attribute name="style">BACKGROUND-COLOR: transparent</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<!--
   groupName
	-->
	<xsl:template match="//groupName"/>
	<!-- just eat it here; used in radio -->
	<!--
   instruction
	-->
	<xsl:template match="//instruction">
		<xsl:if test="not(@id)">
			<br/>
		</xsl:if>
		<xsl:element name="div">
			<xsl:attribute name="class">instruction</xsl:attribute>
			<xsl:if test="@id">
				<xsl:attribute name="id">
					<xsl:value-of select="@id"/>
				</xsl:attribute>
			</xsl:if>
			<p>
				<xsl:apply-templates/>
			</p>
		</xsl:element>
	</xsl:template>
	<!--
   help
	-->
	<xsl:template match="//help">
		<xsl:element name="a">
			<xsl:attribute name="onclick">
				<xsl:text>pawsApp.launchFileAsIs('</xsl:text>
				<xsl:value-of select="$prmInstallPath"/>
				<xsl:value-of select="@href"/>
				<xsl:text>')</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="href"/>
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<!--
   i
	-->
	<xsl:template match="//i">
		<i>
			<xsl:apply-templates/>
		</i>
	</xsl:template>
	<!--
   introduction
	-->
	<xsl:template match="//introduction">
		<xsl:if test="position()>2">
			<br/>
		</xsl:if>
		<div class="introduction">
			<xsl:if test="@id">
				<xsl:attribute name="id">
					<xsl:value-of select="@id"/>
				</xsl:attribute>
			</xsl:if>
			<p>
				<xsl:apply-templates/>
			</p>
		</div>
		<!--
	- top level case -
	<xsl:if test="name(..)='page'">
	  <xsl:if test="position()>2">
		<br/>
	  </xsl:if>
	  <div class="introduction">
		<p>
		  <xsl:apply-templates/>
		</p>
	  </div>
	</xsl:if>
	- within a form case -
	- won't work now... 2002.04.01-
	<xsl:if test="name(..)='form'">
	  <p class="introduction">
		<xsl:apply-templates/>
	  </p>
	</xsl:if>
	-->
	</xsl:template>
	<!--
   li
	-->
	<xsl:template match="//li">
		<xsl:element name="li">
			<xsl:if test="@id">
				<xsl:attribute name="id">
					<xsl:value-of select="@id"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<!--
   ol
	-->
	<xsl:template match="//ol">
		<ol style="margin-top: .025in">
			<xsl:apply-templates/>
		</ol>
	</xsl:template>
	<!--
   p
	-->
	<xsl:template match="//p">
		<xsl:element name="p">
			<xsl:if test="@style">
				<xsl:attribute name="style">
					<xsl:value-of select="@style"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<!--
   prompt
	-->
	<xsl:template match="//prompt">
		<xsl:choose>
			<xsl:when test="name(..)='radioGroup' or name(..)='checkboxGroup'">
				<!-- within a radioGroup case -->
				<tr>
					<td colspan="2">
						<span class="radioPrompt">
							<!--            <xsl:value-of select="."/> -->
							<xsl:apply-templates/>
						</span>
					</td>
				</tr>
			</xsl:when>
			<xsl:otherwise>
				<!-- normal case -->
				<xsl:choose>
					<xsl:when test="@id">
						<p style="margin-left: 0.125in">
							<xsl:attribute name="id">
								<xsl:value-of select="@id"/>
							</xsl:attribute>
							<xsl:if test="name(preceding-sibling::node()[1])='textBox'">
								<br/>
								<br/>
							</xsl:if>
							<xsl:apply-templates/>
							<br/>
						</p>
					</xsl:when>
					<xsl:otherwise>
						<xsl:if test="name(preceding-sibling::node()[1])='textBox'">
							<br/>
							<br/>
						</xsl:if>
						<p style="margin-left: 0.125in">
							<xsl:apply-templates/>
							<br/>
						</p>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!--
   radio
	-->
	<xsl:template match="//radio">
		<tr>
			<xsl:if test="@id and @show">
				<xsl:attribute name="id"><xsl:value-of select="@id"/>_tr</xsl:attribute>
			</xsl:if>
			<td valign="top">
				<xsl:element name="input">
					<xsl:attribute name="type">radio</xsl:attribute>
					<xsl:attribute name="name">
						<xsl:value-of select="../groupName"/>
					</xsl:attribute>
					<xsl:attribute name="id">
						<xsl:value-of select="@id"/>
					</xsl:attribute>
					<xsl:attribute name="onclick"><xsl:value-of select="../groupName"/>(<xsl:value-of select="@id"/>)</xsl:attribute>
					<xsl:attribute name="value">
						<xsl:value-of select="@dataValue"/>
					</xsl:attribute>
					<xsl:if test="@checked">
						<xsl:attribute name="checked"/>
					</xsl:if>
				</xsl:element>
			</td>
			<xsl:element name="td">
				<xsl:attribute name="width">99%</xsl:attribute>
				<xsl:attribute name="id"><xsl:value-of select="@id"/>RPrompt</xsl:attribute>
				<xsl:attribute name="onclick"><xsl:value-of select="../groupName"/>(<xsl:value-of select="@id"/>)</xsl:attribute>
				<xsl:attribute name="value">
					<xsl:value-of select="@dataValue"/>
				</xsl:attribute>
				<xsl:attribute name="onmouseover">this.style.cursor='default'</xsl:attribute>
				<xsl:apply-templates/>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--
   radioGroup
	-->
	<xsl:template match="//radioGroup">
		<!-- outer-level case -->
		<xsl:if test="not(name(..)='radioGroup')">
			<xsl:element name="table">
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="style">margin-left: 0.5in</xsl:attribute>
				<xsl:if test="@id">
					<xsl:attribute name="id">
						<xsl:value-of select="@id"/>
					</xsl:attribute>
				</xsl:if>
				<xsl:apply-templates/>
			</xsl:element>
		</xsl:if>
		<!-- embedded within another radioGroup case -->
		<xsl:if test="name(..)='radioGroup'">
			<xsl:element name="tr">
				<xsl:if test="@id">
					<xsl:attribute name="id">
						<xsl:value-of select="@id"/>
					</xsl:attribute>
				</xsl:if>
				<td>
					<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
				</td>
				<td>
					<xsl:element name="table">
						<xsl:attribute name="border">0</xsl:attribute>
						<xsl:apply-templates/>
					</xsl:element>
				</td>
			</xsl:element>
		</xsl:if>
	</xsl:template>
	<!--
   ruleInfo
	-->
	<xsl:template match="//ruleInfo">
		<xsl:comment>
			<xsl:value-of select="."/>
		</xsl:comment>&#xa;
</xsl:template>
	<!--
   section
	-->
	<xsl:template match="//section">section <xsl:element name="span">
		<xsl:attribute name="class">section</xsl:attribute>
		<xsl:value-of select="./@number"/>
		<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
		<xsl:value-of select="."/>
	</xsl:element>
	</xsl:template>
	<!--
		span
	-->
	<xsl:template match="//span">
		<xsl:element name="span">
			<xsl:if test="@id">
				<xsl:attribute name="id">
					<xsl:value-of select="@id"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	<!--
		sub
	-->
	<xsl:template match="//sub">
		<sub>
			<xsl:value-of select="."/>
		</sub>
	</xsl:template>
	<!--
		textBox
	-->
	<xsl:template match="//textBox[parent::featureRow]">
		<td>
			<xsl:call-template name="CreateExampleEntry">
				<xsl:with-param name="fIndent" select="'N'"/>
			</xsl:call-template>
		</td>
	</xsl:template>
	<xsl:template match="//textBox[not(parent::featureRow)]">
		<xsl:choose>
			<xsl:when test="@dataItem[contains(.,'Example') or .='example'] and @kind!='table' and @kind!='other'">
				<xsl:call-template name="CreateInterlinearEntry"/>
			</xsl:when>
			<xsl:when test="@kind='table'">
				<xsl:call-template name="CreateExampleEntry"/>
			</xsl:when>
			<xsl:when test="parent::checkbox">
				<br/><br/>
				<xsl:call-template name="CreateTextBox"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>&#xa;</xsl:text>
				<xsl:call-template name="CreateTextBox"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!--
   title
	-->
	<xsl:template match="//title">
		<xsl:if test="not(@level)">
			<h1>
				<xsl:apply-templates/>
			</h1>
		</xsl:if>
		<xsl:if test="@level = 2">
			<h2>
				<xsl:apply-templates/>
			</h2>
		</xsl:if>
	</xsl:template>
	<!--
   tool
	-->
	<xsl:template match="//tool">
		<span class="tool">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--
		table
	-->
	<xsl:template match="//table">
		<div align="left" class="{@class}">
			<table border="1">
				<xsl:if test="@id and @show">
					<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
				</xsl:if>
				<xsl:apply-templates/>
			</table>
		</div>
	</xsl:template>
	<!--
		td
	-->
	<xsl:template match="//td">
		<td>
			<xsl:if test="string-length(normalize-space(@colspan))">
				<xsl:attribute name="colspan">
					<xsl:value-of select="@colspan"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates/>
		</td>
	</xsl:template>
	<xsl:template match="//contentCheckBoxOther" mode="load">
		<xsl:text>sTemp = pawsApp.getAnswerValue("//</xsl:text>
		<xsl:value-of select="./@contentLoc"/>");
		document.getElementById("<xsl:value-of select="@id"/>").innerHTML = sTemp;
	</xsl:template>
<!--
technicalTermRef
-->
	<xsl:template match="//technicalTermRef">
		<xsl:variable name="technicalTerm" select="key('TechnicalTerms',@term)/termInLang[1]"/>
		<span style="text-decoration:underline;cursor:pointer"  onclick="ShowTermDefinition('{$technicalTerm/termDefinition}')">
			<xsl:choose>
				<xsl:when test="string-length(.)&gt;0">
					<xsl:value-of select="."/>
				</xsl:when>
				<xsl:when test="@capitalize='yes'">
					<span style="text-transform:capitalize;">
						<xsl:value-of select="$technicalTerm/term"/>
					</span>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$technicalTerm/term"/>
				</xsl:otherwise>
			</xsl:choose>
		</span>
	</xsl:template>
	<!--
		technicalTerms
	-->
	<xsl:template match="technicalTerms"/>
	<!--
   template
	-->
	<xsl:template match="//template">
		<span class="template">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--
   templateName
	-->
	<xsl:template match="//templateName">
		<span class="templateName">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>
	<!--
		th
	-->
	<xsl:template match="//th">
		<th>
			<xsl:if test="string-length(normalize-space(@colspan))">
				<xsl:attribute name="colspan">
					<xsl:value-of select="@colspan"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates/>
		</th>
	</xsl:template>
	<!--
		tr
	-->
	<xsl:template match="//tr">
		<tr>
			<xsl:if test="@id and @show">
				<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			</xsl:if>
			<xsl:apply-templates/>
		</tr>
	</xsl:template>
	<!--
   tree
	-->
	<xsl:template match="//tree">
		<br/>
		<xsl:choose>
			<xsl:when test="@img">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="$prmInstallPath"/>
						<xsl:value-of select="@img"/>
					</xsl:attribute>
				</img>
			</xsl:when>
			<xsl:otherwise>
				<span class="tree">
					<xsl:apply-templates/>
				</span>
			</xsl:otherwise>
		</xsl:choose>
		<br/>
	</xsl:template>
	<!--
   u
	-->
	<xsl:template match="//u">
		<u>
			<xsl:value-of select="."/>
		</u>
	</xsl:template>
	<!--
   ul
	-->
	<xsl:template match="//ul">
		<ul style="margin-top: .025in">
			<xsl:apply-templates/>
		</ul>
	</xsl:template>
	<!--
		CreateExampleEntry
	-->
	<xsl:template name="CreateExampleEntry">
		<xsl:param name="fIndent" select="'Y'"/>
		<table id="{@id}">
			<!--<xsl:call-template name="CreateExampleSubTable"/>-->
			<tr id="{@id}InsertAction">
				<td>
<!--					<td onclick="ExampleInsertClicked({@id},'{@id}')">-->
						<xsl:variable name="cssClass">
						<xsl:choose>
							<xsl:when test="ancestor::featureRow">
								<xsl:text>exampleEntryTable</xsl:text>
							</xsl:when>
							<xsl:otherwise>
								<xsl:text>interlinearTable</xsl:text>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:variable>
					<xsl:attribute name="onclick">
						<xsl:text>ExampleInsertClicked(</xsl:text>
						<xsl:value-of select="@id"/>
						<xsl:text>,'</xsl:text>
						<xsl:value-of select="@id"/>
						<xsl:text>','</xsl:text>
						<xsl:value-of select="$cssClass"/>
						<xsl:text>')</xsl:text>
					</xsl:attribute>
					<img src="{$prmInstallPath}/Styles/insertAction.png" alt="Insert Acton icon">
						<xsl:if test="$fIndent='Y'">
							<xsl:attribute name="style">margin-left: 0.5in</xsl:attribute>
						</xsl:if>
						<xsl:value-of select="$prmAddExample"/>
					</img>
				</td>
			</tr>
		</table>
	</xsl:template>
	<!--
		CreateExampleSubTable
	-->
	<xsl:template name="CreateExampleSubTable">
		<xsl:param name="iCount" select="1"/>
		<tr id="{@id}{$iCount}">
			<td>
				<table class="exampleEntyTable">
					<xsl:attribute name="class">
						<xsl:choose>
							<xsl:when test="ancestor::featureRow">
								<xsl:text>exampleEntyTable</xsl:text>
							</xsl:when>
							<xsl:otherwise>
								<xsl:text>interlinearTable</xsl:text>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
					<tr><td><xsl:value-of select="$prmVernacular"/></td>
						<td><xsl:call-template name="CreateInterlinearLine">
								<xsl:with-param name="type" select="'vernacular'"/>
								<xsl:with-param name="iCount" select="$iCount"/>
							</xsl:call-template></td>
					</tr>
					<xsl:if test="$prmInterlinearOutputStyle='Blessymol'">
						<tr><td><xsl:value-of select="$prmIpa"/></td>
							<td><xsl:call-template name="CreateInterlinearLine">
									<xsl:with-param name="type" select="'ipa'"/>
									<xsl:with-param name="iCount" select="$iCount"/>
								</xsl:call-template></td>
						</tr>
					</xsl:if>
					<tr><td><xsl:value-of select="$prmGloss"/></td>
						<td><xsl:call-template name="CreateInterlinearLine">
								<xsl:with-param name="type" select="'free'"/>
								<xsl:with-param name="iCount" select="$iCount"/>
							</xsl:call-template></td>
					</tr>
				</table>
			</td>
		</tr>
<!--		<xsl:if test="$iCount &lt;= $maxInterlinear">
			<xsl:call-template name="CreateInterlinearSubTable">
				<xsl:with-param name="iCount" select="$iCount+1"/>
			</xsl:call-template>
		</xsl:if>-->
	</xsl:template>
	<!--
		CreateInterlinearDisplayCase
	-->
	<xsl:template name="CreateInterlinearDisplayCase">
		<xsl:param name="iCount"/>
		<xsl:text>case </xsl:text>
		<xsl:value-of select="$iCount"/>
		<xsl:text>:
		</xsl:text>
		<xsl:value-of select="@id"/>
		<xsl:value-of select="$iCount"/>
		<xsl:text>.style.display = "";
		break;
		</xsl:text>
		<xsl:if test="$iCount &lt;= $maxInterlinear">
			<xsl:call-template name="CreateInterlinearDisplayCase">
				<xsl:with-param name="iCount" select="$iCount+1"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--
		CreateInterlinearEntry
	-->
	<xsl:template name="CreateInterlinearEntry">
		<table id="{@id}">
				<xsl:call-template name="CreateInterlinearSubTable"/>
			<tr id="{@id}InsertAction">
				<td onclick="InsertClicked{@id}()">
					<img  style="margin-left: 0.5in" src="{$prmInstallPath}/Styles/insertAction.png" alt="Insert Acton icon">
						<xsl:value-of select="$prmAddExample"/>
					</img>
				</td>
			</tr>
		</table>
	</xsl:template>
	<!--
		CreateInterlinearEntryLoadJScript
	-->
	<xsl:template name="CreateInterlinearEntryLoadJScript">
		<xsl:param name="sPath"/>
		<xsl:param name="iCount" select="1"/>
		<xsl:if test="$iCount &gt; $minInterlinearToShow">
			<xsl:text>sTemp = pawsApp.getAnswerValue("//</xsl:text>
			<xsl:value-of select="$sPath"/>
			<xsl:text>/interlinearEntry[</xsl:text>
			<xsl:value-of select="$iCount"/>
			<xsl:text>]/vernacularLine");
				if ((sTemp.length > 0))
				{
			</xsl:text>
			<xsl:value-of select="@id"/>
			<xsl:value-of select="$sLastVisible"/>
			<xsl:text> = </xsl:text>
			<xsl:value-of select="$iCount"/>
			<xsl:text>;
</xsl:text>
			<xsl:value-of select="@id"/>
			<xsl:value-of select="$iCount"/>
			<xsl:text>.style.display = "";
				}
				else
				{
			</xsl:text>
			<xsl:value-of select="@id"/>
			<xsl:value-of select="$iCount"/>
			<xsl:text>.style.display = "none";
				}
			</xsl:text>
</xsl:if>
		<xsl:call-template name="CreateInterlinearLineLoadJScript">
			<xsl:with-param name="iCount" select="$iCount"/>
			<xsl:with-param name="sPath" select="$sPath"/>
			<xsl:with-param name="sType" select="'vernacular'"/>
		</xsl:call-template>
		<xsl:if test="$prmInterlinearOutputStyle='Blessymol'">
			<xsl:call-template name="CreateInterlinearLineLoadJScript">
				<xsl:with-param name="iCount" select="$iCount"/>
				<xsl:with-param name="sPath" select="$sPath"/>
				<xsl:with-param name="sType" select="'ipa'"/>
			</xsl:call-template>
		</xsl:if>
		<xsl:call-template name="CreateInterlinearLineLoadJScript">
			<xsl:with-param name="iCount" select="$iCount"/>
			<xsl:with-param name="sPath" select="$sPath"/>
			<xsl:with-param name="sType" select="'free'"/>
		</xsl:call-template>
		<xsl:if test="$iCount &lt;= $maxInterlinear">
			<xsl:call-template name="CreateInterlinearEntryLoadJScript">
				<xsl:with-param name="sPath" select="$sPath"/>
				<xsl:with-param name="iCount" select="$iCount+1"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--
		CreateInterlinearLineLoadJScript
	-->
	<xsl:template name="CreateInterlinearLineLoadJScript">
		<xsl:param name="iCount"/>
		<xsl:param name="sPath"/>
		<xsl:param name="sType"/>
		<xsl:value-of select="@id"/>
		<xsl:call-template name="GetInterlinearIDType">
			<xsl:with-param name="type" select="$sType"/>
		</xsl:call-template>
		<xsl:value-of select="$iCount"/>
		<xsl:text>.value = pawsApp.getAnswerValue("//</xsl:text>
		<xsl:value-of select="$sPath"/>
		<xsl:text>/interlinearEntry[</xsl:text>
		<xsl:value-of select="$iCount"/>
		<xsl:text>]/</xsl:text>
		<xsl:call-template name="GetInterlinearLineType">
			<xsl:with-param name="sType" select="$sType"/>
		</xsl:call-template>
		<xsl:text>Line");
</xsl:text>
	</xsl:template>
	<!--
		CreateInterlinearEntrySaveJScript
	-->
	<xsl:template name="CreateInterlinearEntrySaveJScript">
		<xsl:param name="sPath"/>
		<xsl:param name="iCount" select="1"/>
		<xsl:call-template name="CreateInterlinearLineSaveJScript">
			<xsl:with-param name="iCount" select="$iCount"/>
			<xsl:with-param name="sPath" select="$sPath"/>
			<xsl:with-param name="sType" select="'vernacular'"/>
		</xsl:call-template>
		<xsl:if test="$prmInterlinearOutputStyle='Blessymol'">
			<xsl:call-template name="CreateInterlinearLineSaveJScript">
			<xsl:with-param name="iCount" select="$iCount"/>
			<xsl:with-param name="sPath" select="$sPath"/>
			<xsl:with-param name="sType" select="'ipa'"/>
			</xsl:call-template>
		</xsl:if>
		<xsl:call-template name="CreateInterlinearLineSaveJScript">
			<xsl:with-param name="iCount" select="$iCount"/>
			<xsl:with-param name="sPath" select="$sPath"/>
			<xsl:with-param name="sType" select="'free'"/>
		</xsl:call-template>
		<xsl:if test="$iCount &lt;= $maxInterlinear">
			<xsl:call-template name="CreateInterlinearEntrySaveJScript">
				<xsl:with-param name="sPath" select="$sPath"/>
				<xsl:with-param name="iCount" select="$iCount+1"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--
		CreateInterlinearLineSaveJScript
	-->
	<xsl:template name="CreateInterlinearLineSaveJScript">
		<xsl:param name="iCount"/>
		<xsl:param name="sPath"/>
		<xsl:param name="sType"/>
		<xsl:text>pawsApp.setAnswerValue("//</xsl:text>
		<xsl:value-of select="$sPath"/>
		<xsl:text>/interlinearEntry[</xsl:text>
		<xsl:value-of select="$iCount"/>
		<xsl:text>]/</xsl:text>
		<xsl:call-template name="GetInterlinearLineType">
			<xsl:with-param name="sType" select="$sType"/>
		</xsl:call-template>
		<xsl:text>Line", </xsl:text>
		<xsl:value-of select="@id"/>
		<xsl:call-template name="GetInterlinearIDType">
			<xsl:with-param name="type" select="$sType"/>
		</xsl:call-template>
		<xsl:value-of select="$iCount"/>
		<xsl:text>.value);
</xsl:text>
	</xsl:template>
	<!--
		CreateInterlinearSubTable
	-->
	<xsl:template name="CreateInterlinearSubTable">
		<xsl:param name="iCount" select="1"/>
		<tr id="{@id}{$iCount}">
			<td>
				<table class="interlinearTable">
					<tr>
						<td>
							<xsl:value-of select="$prmVernacular"/>
						</td>
						<td>
							<xsl:call-template name="CreateInterlinearLine">
								<xsl:with-param name="type" select="'vernacular'"/>
								<xsl:with-param name="iCount" select="$iCount"/>
							</xsl:call-template>
						</td>
					</tr>
					<xsl:if test="$prmInterlinearOutputStyle='Blessymol'">
						<tr>
							<td>
								<xsl:value-of select="$prmIpa"/>
							</td>
							<td>
								<xsl:call-template name="CreateInterlinearLine">
									<xsl:with-param name="type" select="'ipa'"/>
									<xsl:with-param name="iCount" select="$iCount"/>
								</xsl:call-template>
							</td>
						</tr>
					</xsl:if>
					<tr>
						<td>
							<xsl:value-of select="$prmFree"/>
						</td>
						<td>
							<xsl:call-template name="CreateInterlinearLine">
								<xsl:with-param name="type" select="'free'"/>
								<xsl:with-param name="iCount" select="$iCount"/>
							</xsl:call-template>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<xsl:if test="$iCount &lt;= $maxInterlinear">
			<xsl:call-template name="CreateInterlinearSubTable">
				<xsl:with-param name="iCount" select="$iCount+1"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<!--
		CreateInterlinearID
	-->
	<xsl:template name="CreateInterlinearID">
		<xsl:param name="type" select="'vernacular'"/>
		<xsl:param name="iCount"/>
		<xsl:value-of select="@id"/>
		<xsl:call-template name="GetInterlinearIDType">
			<xsl:with-param name="type" select="$type"/>
		</xsl:call-template>
		<xsl:value-of select="$iCount"/>
	</xsl:template>
	<!--
		CreateInterlinearLine
	-->
	<xsl:template name="CreateInterlinearLine">
		<xsl:param name="type" select="'vernacular'"/>
		<xsl:param name="iCount"/>
		<textarea rows="1" contenteditable="true">
			<xsl:attribute name="class">
				<xsl:value-of select="$type"/>
			</xsl:attribute>
			<xsl:attribute name="onfocusout">saveData()</xsl:attribute>
			<xsl:if test="$prmRtlScript='True'">
				<xsl:attribute name="style">direction: rtl</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="wrap">off</xsl:attribute>
			<xsl:attribute name="cols">
				<xsl:choose>
					<xsl:when test="@cols">
						<xsl:value-of select="@cols"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>40</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:attribute name="id">
				<xsl:call-template name="CreateInterlinearID">
					<xsl:with-param name="type" select="$type"/>
					<xsl:with-param name="iCount" select="$iCount"/>
				</xsl:call-template>
			</xsl:attribute>
			<xsl:attribute name="name">
				<xsl:call-template name="CreateInterlinearID">
					<xsl:with-param name="type" select="$type"/>
					<xsl:with-param name="iCount" select="$iCount"/>
				</xsl:call-template>
			</xsl:attribute>
		</textarea>
	</xsl:template>
	<!--
		CreateTextBox
	-->
	<xsl:template name="CreateTextBox">
		<xsl:param name="sMarginLeft" select="'0.5in'"/>
		<xsl:element name="textarea">
			<xsl:attribute name="class">vernacular</xsl:attribute>
			<xsl:attribute name="onfocusout">saveData()</xsl:attribute>
			<xsl:if test="string-length($sMarginLeft)&gt;0">
				<xsl:attribute name="style">
					<xsl:text>margin-left: </xsl:text>
					<xsl:value-of select="$sMarginLeft"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="$prmRtlScript='True'">
				<xsl:attribute name="style">direction: rtl</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="wrap">off</xsl:attribute>
			<xsl:if test="not(@rows)">
				<xsl:attribute name="rows">7</xsl:attribute>
			</xsl:if>
			<xsl:if test="@rows">
				<xsl:attribute name="rows">
					<xsl:value-of select="@rows"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="not(@cols)">
				<xsl:attribute name="cols">40</xsl:attribute>
			</xsl:if>
			<xsl:if test="@cols">
				<xsl:attribute name="cols">
					<xsl:value-of select="@cols"/>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:value-of select="@id"/>
			</xsl:attribute>
			<xsl:attribute name="name">
				<xsl:value-of select="@id"/>
			</xsl:attribute>
			<xsl:if test="@contenteditable">
				<xsl:attribute name="contenteditable">
					<xsl:value-of select="@contenteditable"/>
				</xsl:attribute>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	<!--
   DoButtonedTextArea
	-->
	<xsl:template name="DoButtonedTextArea">
		<xsl:param name="sButtonString"/>
		<xsl:param name="sCol"/>

	&#xa;
<xsl:element name="textarea">
			<xsl:attribute name="style">margin-left: 0.5in</xsl:attribute>
	        <xsl:attribute name="onfocusout">saveData()</xsl:attribute>
	        <xsl:attribute name="wrap">off</xsl:attribute>
			<xsl:attribute name="rows">1</xsl:attribute>
			<xsl:attribute name="cols">
				<xsl:value-of select="$sCol"/>
			</xsl:attribute>
			<xsl:attribute name="id">
				<xsl:value-of select="@id"/>
			</xsl:attribute>
			<xsl:attribute name="name">
				<xsl:value-of select="@id"/>
			</xsl:attribute>
			<xsl:if test="@contenteditable">
				<xsl:attribute name="contenteditable">
					<xsl:value-of select="@contenteditable"/>
				</xsl:attribute>
			</xsl:if>
		</xsl:element>
		<xsl:text disable-output-escaping="yes">&amp;nbsp;&amp;nbsp;&amp;nbsp;</xsl:text>
		<xsl:element name="input">
			<xsl:attribute name="type">button</xsl:attribute>
			<xsl:attribute name="value">
				<xsl:value-of select="$sButtonString"/>
			</xsl:attribute>
			<xsl:attribute name="name">B<xsl:value-of select="@id"/></xsl:attribute>
			<xsl:attribute name="id">
				<xsl:value-of select="@id"/>
			</xsl:attribute>
			<xsl:attribute name="onclick">Button<xsl:value-of select="@id"/>()</xsl:attribute>
			<xsl:attribute name="style">width: 85px; height: 24px</xsl:attribute>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
