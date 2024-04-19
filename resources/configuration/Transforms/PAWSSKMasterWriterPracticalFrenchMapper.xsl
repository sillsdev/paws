<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="PAWSSKMasterWriterMapperCommon.xsl"/>
	<xsl:import href="PAWSSKMasterWriterPracticalFrenchMapperOverrides.xsl"/>
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
		<lingPaper automaticallywrapinterlinears="yes" sortRefsAbbrsByDocumentLanguage="yes" xml:lang="fr" tablenumberedLabelAndCaptionLocation="after" tablenumberedLabel="Tableau ">
			<frontMatter>
				<title>
					<xsl:variable name="sLanguageName" select="//language/langNames/langName[@lang='fr']"/>
					<xsl:variable name="sFirstLetter" select="translate(substring($sLanguageName,1,1),'àâéèêëîïôùûü','aaeeeeiiouuu')"/>
					<xsl:text>Une grammaire </xsl:text>
					<xsl:choose>
						<xsl:when test="starts-with($sFirstLetter,'a') or starts-with($sFirstLetter,'e') or starts-with($sFirstLetter,'i') or starts-with($sFirstLetter,'o') or starts-with($sFirstLetter,'u')">
							<xsl:text>de l’</xsl:text>
						</xsl:when>
						<xsl:otherwise>
							<xsl:text>du </xsl:text>
						</xsl:otherwise>
					</xsl:choose>
					<xsl:value-of select="$sLanguageName"/>
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
				<xsl:with-param name="sEndnoteLabel" select="'Notes'"/>
				<xsl:with-param name="sReferencesLabel" select="'Références'"/>
			</xsl:call-template>
		</lingPaper>
	</xsl:template>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		Include other templates
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:include href="WriterFRPracticalIntroAndTypology.xsl"/>
	<xsl:include href="WriterFRPracticalN.xsl"/>
	<xsl:include href="WriterFRPracticalV.xsl"/>
	<xsl:include href="WriterFRPracticalAdvP.xsl"/>
	<xsl:include href="WriterFRPracticalAdjP.xsl"/>
	<xsl:include href="WriterFRPracticalNP.xsl"/>
	<xsl:include href="WriterFRPracticalProp.xsl"/>
	<xsl:include href="WriterFRPracticalPron.xsl"/>
	<xsl:include href="WriterFRPracticalPP.xsl"/>
	<xsl:include href="WriterFRPracticalIP.xsl"/>
	<xsl:include href="WriterFRPracticalComp.xsl"/>
	<xsl:include href="WriterFRPracticalQues.xsl"/>
	<xsl:include href="WriterFRPracticalRelCl.xsl"/>
	<xsl:include href="WriterFRPracticalAdvCl.xsl"/>
	<xsl:include href="WriterFRPracticalNeg.xsl"/>
	<xsl:include href="WriterFRPracticalCoord.xsl"/>
	<xsl:include href="WriterFRPracticalFocus.xsl"/>
	<xsl:include href="WriterFRPracticalExcl.xsl"/>
	<xsl:include href="WriterFRPracticalAppdx.xsl"/>
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
			<secTitle>Textes</secTitle>
			<p>
				<object type="tComment">Incluez ici plusieurs textes pour démontrer comment de plus grandes constructions comme des paragraphes, des conversations et des récits narratifs sont formés.</object>
			</p>
			<p>
				<object type="tComment">Un format suggéré pour présenter les textes c'est de les présenter d’abord en langage vulgaire afin que les présentateurs natifs puissent l'apprécier.  Ensuite les présenter dans une forme interlinéaire comme dans les exemples de cette grammaire.  Finalement donnez une traduction libre totale pour que les présentateurs qui ne sont pas natifs puissent mieux apprécier la culture.</object>
			</p>
			<p>
				<object type="tComment">Écrivez, s’il vous plaît, vos exemples ici. (Commencez avec la signe +) Il faut préparer au moins un texte en langue maternelle - ou bien importer un texte à partir de FLEx, en quel cas vous pouvez effacer les lignes superflues suivantes.</object>
			</p>
			<xsl:variable name="sTextTitle" select="'titre - texte '"/>
			<xsl:variable name="sParagraphContent" select="'paragraphes pour le texte entier dans la langue'"/>
			<xsl:variable name="sLanguage" select="'mots vernaculaires'"/>
			<xsl:variable name="sGloss" select="'gloses littérales du mot'"/>
			<xsl:variable name="sIPA" select="'mots en API'"/>
			<xsl:variable name="sIPAMorphBreaks" select="'API séparée par des morphèmes'"/>
			<xsl:variable name="sMorphemes" select="'gloses de morphème en français'"/>
			<xsl:variable name="sFree" select="'traduction libre en français'"/>
			<xsl:variable name="sStateFree" select="'traduction libre en langue officielle de l’Etat'"/>
			<xsl:variable name="sFreeParagraphContent" select="'paragraphes pour la traduction libre de l’ensemble du texte'"/>
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
		<language id="fr" name="French"/>

	</xsl:template>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		HandleAnyAbbreviations
		routine to output appropriate elements for abbreviations
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="HandleAnyAbbreviations">
		<glossary label="Abréviations">
			<p>Les abréviations utilisées dans les exemples sont:</p>
			<abbreviationsShownHere/>
		</glossary>
		<xsl:copy-of select="document('../Data/AbreviationsPAWS.xml')/abbreviations"/>

	</xsl:template>
</xsl:stylesheet>
