<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-system="/Transforms/XLingPap.dtd" doctype-public="-//XMLmind//DTD XLingPap//EN"/>
<!--   <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" doctype-system="XLingPap.dtd"/>-->
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
		<xsl:processing-instruction name="xml-stylesheet">
			<xsl:text>type="text/xsl" href="XLingPap1.xsl"</xsl:text>
		</xsl:processing-instruction>
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
			<interlinear-text>
				<textInfo>
					<textTitle>title - text 1</textTitle>
					<shortTitle/>
				</textInfo>
				<p>
					<langData lang="lVernacular">paragraphs for the entire text in the language</langData>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular">language</langData>
						</line>
						<line>
							<gloss lang="lGloss">gloss</gloss>
						</line>
						<line>
							<gloss lang="lGloss">morphemes</gloss>
						</line>
					</lineGroup>
					<free>free translation</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<p>
					<gloss lang="lGloss">paragraphs for the free translation of the entire text</gloss>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
			</interlinear-text>
			<interlinear-text>
				<textInfo>
					<textTitle>title - text 2</textTitle>
					<shortTitle/>
				</textInfo>
				<p>
					<langData lang="lVernacular">paragraphs for the entire text in the language</langData>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular">language</langData>
						</line>
						<line>
							<gloss lang="lGloss">gloss</gloss>
						</line>
						<line>
							<gloss lang="lGloss">morphemes</gloss>
						</line>
					</lineGroup>
					<free>free translation</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<p>
					<gloss lang="lGloss">paragraphs for the free translation of the entire text</gloss>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
			</interlinear-text>
			<interlinear-text>
				<textInfo>
					<textTitle>title - text 3</textTitle>
					<shortTitle/>
				</textInfo>
				<p>
					<langData lang="lVernacular">paragraphs for the entire text in the language</langData>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular">language</langData>
						</line>
						<line>
							<gloss lang="lGloss">gloss</gloss>
						</line>
						<line>
							<gloss lang="lGloss">morphemes</gloss>
						</line>
					</lineGroup>
					<free>free translation</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<p>
					<gloss lang="lGloss">paragraphs for the free translation of the entire text</gloss>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
			</interlinear-text>
			<interlinear-text>
				<textInfo>
					<textTitle>title - text 4</textTitle>
					<shortTitle/>
				</textInfo>
				<p>
					<langData lang="lVernacular">paragraphs for the entire text in the language</langData>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<p>
					<langData lang="lVernacular"/>
				</p>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular">language</langData>
						</line>
						<line>
							<gloss lang="lGloss">gloss</gloss>
						</line>
						<line>
							<gloss lang="lGloss">morphemes</gloss>
						</line>
					</lineGroup>
					<free>free translation</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<interlinear>
					<lineGroup>
						<line>
							<langData lang="lVernacular"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
						<line>
							<gloss lang="lGloss"/>
						</line>
					</lineGroup>
					<free>
						<gloss lang="lGloss"/>
					</free>
				</interlinear>
				<p>
					<gloss lang="lGloss">paragraphs for the free translation of the entire text</gloss>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
				<p>
					<gloss lang="lGloss"/>
				</p>
			</interlinear-text>
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
