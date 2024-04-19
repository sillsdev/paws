<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.1" encoding="UTF-8" indent="yes" doctype-system="/Transforms/XLingPap.dtd" doctype-public="-//XMLmind//DTD XLingPap//EN"/>
   <!--
================================================================
Convert PAWS answers xml file to an XLingPap xml file
  Input:    xml file conforming to PAWSStarterKit.dtd
  Output: XLingPap xml file
================================================================
Revision History is at the end of this file.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Preamble
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-->
	<!--
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Main template
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-->
	<xsl:template match="/">
		<lingPaper automaticallywrapinterlinears="yes" sortRefsAbbrsByDocumentLanguage="yes" tablenumberedLabelAndCaptionLocation="after">
			<frontMatter>
				<title>A Practical Grammar of  <xsl:value-of select="//language/langNames/langName[@lang='en']"/>
				</title>
				<xsl:call-template name="OutputCommonFrontmatter"/>
			</frontMatter>
			<xsl:apply-templates select="/" mode="intro"/>
			<xsl:apply-templates select="/" mode="n"/>
			<xsl:apply-templates select="/" mode="prop"/>
			<xsl:apply-templates select="/" mode="pron"/>
			<xsl:apply-templates select="/" mode="adjp"/>
			<xsl:apply-templates select="/" mode="np"/>
			<xsl:apply-templates select="/" mode="v"/>
			<xsl:apply-templates select="/" mode="advp"/>
			<xsl:apply-templates select="/" mode="pp"/>
			<xsl:apply-templates select="/" mode="excl"/>
			<xsl:apply-templates select="/" mode="ip"/>
			<xsl:apply-templates select="/" mode="focus"/>
			<xsl:apply-templates select="/" mode="ques"/>
			<xsl:apply-templates select="/" mode="neg"/>
			<xsl:apply-templates select="/" mode="coord"/>
			<xsl:apply-templates select="/" mode="comp"/>
			<xsl:apply-templates select="/" mode="advcl"/>
			<xsl:apply-templates select="/" mode="relcl"/>
			<xsl:call-template name="DoTextsSection"/>
			<xsl:call-template name="OutputCommonBackmatterLanguagesAndTypes"/>
		</lingPaper>
	</xsl:template>
	<!--
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Include other templates
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-->
	<xsl:include href="WriterPracticalIntroAndTypology.xsl"/>
	<xsl:include href="WriterPracticalN.xsl"/>
	<xsl:include href="WriterPracticalV.xsl"/>
	<xsl:include href="WriterPracticalAdvP.xsl"/>
	<xsl:include href="WriterPracticalAdjP.xsl"/>
	<xsl:include href="WriterPracticalNP.xsl"/>
	<xsl:include href="WriterPracticalProp.xsl"/>
	<xsl:include href="WriterPracticalPron.xsl"/>
	<xsl:include href="WriterPracticalPP.xsl"/>
	<xsl:include href="WriterPracticalIP.xsl"/>
	<xsl:include href="WriterPracticalComp.xsl"/>
	<xsl:include href="WriterPracticalQues.xsl"/>
	<xsl:include href="WriterPracticalRelCl.xsl"/>
	<xsl:include href="WriterPracticalAdvCl.xsl"/>
	<xsl:include href="WriterPracticalNeg.xsl"/>
	<xsl:include href="WriterPracticalCoord.xsl"/>
	<xsl:include href="WriterPracticalFocus.xsl"/>
	<xsl:include href="WriterPracticalExcl.xsl"/>
	<xsl:include href="WriterPracticalAppdx.xsl"/>
	<xsl:include href="PAWSSKMasterWriterMapperCommon.xsl"/>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		DoInterlinearGlossLines
		routine to create gloss lines for interlinear
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="DoInterlinearGlossLines">
		<xsl:call-template name="DoWordGloss"/>
		<xsl:call-template name="DoMorphemeGloss"/>
	</xsl:template>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		DoTextsSection
		routine to create content of the section on texts
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="DoTextsSection">
		<section1 id="sTexts">
			<secTitle>Texts</secTitle>
			<p><object type="tComment">Include several texts here to demonstrate how larger constructions such as paragraphs, conversations, and narrative stories are formed.  Include examples of various literary types.</object></p>
			<p><object type="tComment">  A suggested format for presenting the texts is to present it in the vernacular language as a whole first, so the native speakers can appreciate it.  Then present the interlinear form, as in the examples throughout the grammar.  Finally, give a free translation as a whole, so the non-native speaker can appreciate more about the culture.</object></p>
				<p>
				<object type="tComment">Please, write your texts here (Open with the the + sign).   You need to prepare at least one native text - or you can import a text from FLEx, in which case you can delete the following unneeded lines.</object>
				</p>
			<xsl:variable name="sTextTitle" select="'title - text '"/>
			<xsl:variable name="sParagraphContent" select="'paragraphs for the entire text in the language'"/>
			<xsl:variable name="sLanguage" select="'vernacular words'"/>
			<xsl:variable name="sGloss" select="'literal word glosses'"/>
			<xsl:variable name="sIPA" select="'words in IPA'"/>
			<xsl:variable name="sIPAMorphBreaks" select="'IPA with morpheme breaks'"/>
			<xsl:variable name="sMorphemes" select="'English morpheme glosses'"/>
			<xsl:variable name="sFree" select="'English free translation'"/>
			<xsl:variable name="sStateFree" select="'State language free translation'"/>
			<xsl:variable name="sFreeParagraphContent" select="'paragraphs for the free translation of the entire text'"/>
			<xsl:call-template name="DoAnIntelinearText">
				<xsl:with-param name="sTextTitle" select="$sTextTitle"/>
				<xsl:with-param name="sTextNumber" select="'1'"></xsl:with-param>
				<xsl:with-param name="sParagraphContent" select="$sParagraphContent"/>
				<xsl:with-param name="sLanguage" select="$sLanguage"/>
				<xsl:with-param name="sGloss" select="$sGloss"/>
				<xsl:with-param name="sIPA" select="$sIPA"/>
				<xsl:with-param name="sIPAMorphBreaks" select="$sIPAMorphBreaks"/>
				<xsl:with-param name="sMorphemes" select="$sMorphemes"/>
				<xsl:with-param name="sFree" select="$sFree"/>
				<xsl:with-param name="sStateFree" select="$sStateFree"/>
				<xsl:with-param name="sFreeParagraphContent" select="$sFreeParagraphContent"/>
			</xsl:call-template>
			<xsl:call-template name="DoAnIntelinearText">
				<xsl:with-param name="sTextTitle" select="$sTextTitle"/>
				<xsl:with-param name="sTextNumber" select="'2'"></xsl:with-param>
				<xsl:with-param name="sParagraphContent" select="$sParagraphContent"/>
				<xsl:with-param name="sLanguage" select="$sLanguage"/>
				<xsl:with-param name="sGloss" select="$sGloss"/>
				<xsl:with-param name="sIPA" select="$sIPA"/>
				<xsl:with-param name="sIPAMorphBreaks" select="$sIPAMorphBreaks"/>
				<xsl:with-param name="sMorphemes" select="$sMorphemes"/>
				<xsl:with-param name="sFree" select="$sFree"/>
				<xsl:with-param name="sStateFree" select="$sStateFree"/>
				<xsl:with-param name="sFreeParagraphContent" select="$sFreeParagraphContent"/>
			</xsl:call-template>
			<xsl:call-template name="DoAnIntelinearText">
				<xsl:with-param name="sTextTitle" select="$sTextTitle"/>
				<xsl:with-param name="sTextNumber" select="'3'"></xsl:with-param>
				<xsl:with-param name="sParagraphContent" select="$sParagraphContent"/>
				<xsl:with-param name="sLanguage" select="$sLanguage"/>
				<xsl:with-param name="sGloss" select="$sGloss"/>
				<xsl:with-param name="sIPA" select="$sIPA"/>
				<xsl:with-param name="sIPAMorphBreaks" select="$sIPAMorphBreaks"/>
				<xsl:with-param name="sMorphemes" select="$sMorphemes"/>
				<xsl:with-param name="sFree" select="$sFree"/>
				<xsl:with-param name="sStateFree" select="$sStateFree"/>
				<xsl:with-param name="sFreeParagraphContent" select="$sFreeParagraphContent"/>
			</xsl:call-template>
			<xsl:call-template name="DoAnIntelinearText">
				<xsl:with-param name="sTextTitle" select="$sTextTitle"/>
				<xsl:with-param name="sTextNumber" select="'4'"></xsl:with-param>
				<xsl:with-param name="sParagraphContent" select="$sParagraphContent"/>
				<xsl:with-param name="sLanguage" select="$sLanguage"/>
				<xsl:with-param name="sGloss" select="$sGloss"/>
				<xsl:with-param name="sIPA" select="$sIPA"/>
				<xsl:with-param name="sIPAMorphBreaks" select="$sIPAMorphBreaks"/>
				<xsl:with-param name="sMorphemes" select="$sMorphemes"/>
				<xsl:with-param name="sFree" select="$sFree"/>
				<xsl:with-param name="sStateFree" select="$sStateFree"/>
				<xsl:with-param name="sFreeParagraphContent" select="$sFreeParagraphContent"/>
			</xsl:call-template>
		</section1>
	</xsl:template>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		HandleAnyAbbreviationLanguage
		routine to output appropriate language element for abbreviations
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="HandleAnyAbbreviationLanguage">
		<language id="en" name="English"/>
	</xsl:template>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		HandleAnyAbbreviations
		routine to output appropriate elements for abbreviations
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="HandleAnyAbbreviations">
		<glossary label="Abbreviations">
			<p>The abbreviations used in the examples are:</p>
			<abbreviationsShownHere/>
		</glossary>
		<xsl:copy-of select="document('../Data/AbbreviationsPAWS.xml')/abbreviations"/>
	</xsl:template>
</xsl:stylesheet>
