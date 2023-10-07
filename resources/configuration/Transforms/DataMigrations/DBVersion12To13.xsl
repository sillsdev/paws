<?xml version="1.0" encoding="UTF-8"?>
<!-- transform to convert PAWS answer file from dbversion 12 to 13 (add ipaLine in interlinearExample)
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:include href="../PAWSSKCommon.xsl"/>
	<xsl:template match="@* |  node()">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
	<!--
		increment dbversion
	-->
	<xsl:template match="/paws[@dbversion='12']">
		<paws dbversion="13">
			<xsl:apply-templates select="@*[name()!='dbversion']"/>
			<xsl:apply-templates/>
		</paws>
	</xsl:template>
	<!--
		add free and ipa font information
	-->
	<xsl:template match="font">
		<xsl:copy-of select="."/>
		<freeFont bold="False" italic="False" rtl="False" strike="False" under="False">
			<fontName>Arial</fontName>
			<fontSize>12.0</fontSize>
			<fontColor>#000000</fontColor>
		</freeFont>
		<ipaFont bold="False" italic="False" rtl="False" strike="False" under="False">
			<fontName>Arial</fontName>
			<fontSize>12.0</fontSize>
			<fontColor>#000000</fontColor>
		</ipaFont>
		<!-- style values are standard and Blessymol -->
		<interlinearOutputStyle style="standard"/>
	</xsl:template>
	<!--
		convert interlinear examples
	-->
	<xsl:template match="freeLine">
		<ipaLine></ipaLine>
		<xsl:copy-of select="."/>
	</xsl:template>
</xsl:stylesheet>
