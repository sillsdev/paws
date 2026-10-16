<?xml version="1.0" encoding="UTF-8"?>
<!-- transform to convert PAWS answer file from dbversion 14 to 15 (add keyboards)
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="no"/>
	<xsl:include href="../PAWSSKCommon.xsl"/>
	<xsl:param name="prmDefaultKeyboard" select="'Default'"/>
	<xsl:template match="@* |  node()">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
	<!--
		increment dbversion
	-->
	<xsl:template match="/paws[@dbversion='15']">
		<paws dbversion="16">
			<xsl:apply-templates select="@*[name()!='dbversion']"/>
			<xsl:apply-templates/>
		</paws>
	</xsl:template>
	<!--
		add SFM for free translations
	-->
	<xsl:template match="language">
		<language>
			<xsl:apply-templates/>
			<freeSFM>\f</freeSFM>
		</language>
	</xsl:template>
</xsl:stylesheet>
