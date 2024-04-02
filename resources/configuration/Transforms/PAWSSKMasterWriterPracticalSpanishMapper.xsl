<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="PAWSSKMasterWriterMapperCommon.xsl"/>
	<xsl:import href="PAWSSKMasterWriterPracticalSpanishMapperOverrides.xsl"/>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-system="/Transforms/XLingPap.dtd" doctype-public="-//XMLmind//DTD XLingPap//EN"/>

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
		<lingPaper automaticallywrapinterlinears="yes" sortRefsAbbrsByDocumentLanguage="yes" xml:lang="es" tablenumberedLabelAndCaptionLocation="after" tablenumberedLabel="Tabla ">
			<frontMatter>
				<title>Gramática del  <xsl:value-of select="//language/langNames/langName[@lang='es']"/>
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
			<xsl:call-template name="OutputCommonBackmatterLanguagesAndTypes">
				<xsl:with-param name="sEndnoteLabel" select="'Notas'"/>
				<xsl:with-param name="sReferencesLabel" select="'Referencias'"/>
			</xsl:call-template>
		</lingPaper>
	</xsl:template>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		Include other templates
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:include href="WriterSPPracticalIntroAndTypology.xsl"/>
	<xsl:include href="WriterSPPracticalN.xsl"/>
	<xsl:include href="WriterSPPracticalV.xsl"/>
	<xsl:include href="WriterSPPracticalAdvP.xsl"/>
	<xsl:include href="WriterSPPracticalAdjP.xsl"/>
	<xsl:include href="WriterSPPracticalNP.xsl"/>
	<xsl:include href="WriterSPPracticalProp.xsl"/>
	<xsl:include href="WriterSPPracticalPron.xsl"/>
	<xsl:include href="WriterSPPracticalPP.xsl"/>
	<xsl:include href="WriterSPPracticalIP.xsl"/>
	<xsl:include href="WriterSPPracticalComp.xsl"/>
	<xsl:include href="WriterSPPracticalQues.xsl"/>
	<xsl:include href="WriterSPPracticalRelCl.xsl"/>
	<xsl:include href="WriterSPPracticalAdvCl.xsl"/>
	<xsl:include href="WriterSPPracticalNeg.xsl"/>
	<xsl:include href="WriterSPPracticalCoord.xsl"/>
	<xsl:include href="WriterSPPracticalFocus.xsl"/>
	<xsl:include href="WriterSPPracticalExcl.xsl"/>
	<xsl:include href="WriterSPPracticalAppdx.xsl"/>
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
		routine to create manually entered text section
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="DoTextsSection">
		<section1 id="sTexts">
			<secTitle>Los textos</secTitle>
			<p>
				<object type="tComment">Incluya varios textos aquí para mostrar cómo se forman las construcciones más grandes tales como párrafos, conversaciones e historias narrativas. Incluya los ejemplos de varios tipos literarios.</object>
			</p>
			<p>
				<object type="tComment"> Un formato sugerido para presentar los textos es presente el texto completo en la lengua vernáculo primero, así que los nativos pueden apreciarla. Después presenta la forma interlineal, como en los ejemplos a través de la gramática. Finalmente, dé una traducción libre completo, así que el altavoz extranjero puede apreciar más sobre la cultura.</object>
			</p>
			<p>
				<object type="tComment">Por favor, escriba sus textos aquí (Abre con el signo +). Tiene que preparar al menos un texto nativo - o puede importar de FLEx y eliminar las lineas abajo que no necesita.</object>
			</p>
			<xsl:variable name="sTextTitle" select="'título - texto '"/>
			<xsl:variable name="sParagraphContent" select="'parrafos para el texto completa en la lenga'"/>
			<xsl:variable name="sLanguage" select="'lengua'"/>
			<xsl:variable name="sGloss" select="'glosa'"/>
			<xsl:variable name="sIPA" select="'AFI'"/>
			<xsl:variable name="sIPAMorphBreaks" select="'AFI con rupturas morfémicas'"/>
			<xsl:variable name="sMorphemes" select="'morfemas'"/>
			<xsl:variable name="sFree" select="'traducción libre'"/>
			<xsl:variable name="sStateFree" select="'traducción libre a la lengua del estado'"/>
			<xsl:variable name="sFreeParagraphContent" select="'párrafos para la traducción libre de todo el texto'"/>
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
		<language id="es" name="Spanish"/>

	</xsl:template>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		HandleAnyAbbreviations
		routine to output appropriate elements for abbreviations
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="HandleAnyAbbreviations">
		<glossary label="Abreviaturas">
			<p>Las abreviaturas usadas en los ejemplos son:</p>
			<abbreviationsShownHere/>
		</glossary>
		<xsl:copy-of select="document('../Data/AbreviaturasPAWS.xml')/abbreviations"/>

	</xsl:template>
</xsl:stylesheet>
