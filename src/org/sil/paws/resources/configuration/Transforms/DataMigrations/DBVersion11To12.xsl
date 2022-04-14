<?xml version="1.0" encoding="UTF-8"?>
<!-- transform to convert PAWS answer file from dbversion 11 to 12 (convert examples from #PCDATA to interlinearExample+)
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="no"/>
	<xsl:template match="@* |  node()">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
	<!--
		increment dbversion
	-->
	<xsl:template match="/paws[@dbversion='11']">
		<paws dbversion="12">
			<xsl:apply-templates select="@*[name()!='dbversion']"/>
			<xsl:apply-templates/>
		</paws>
	</xsl:template>
	<!--
		items ending in "Example" or just example
	-->
	<xsl:template match="*[contains(name(),'Example') or name()='example']">
		<xsl:variable name="sExampleValue">
			<xsl:value-of select="."/>
		</xsl:variable>
		<xsl:variable name="iExampleLength" select="."/>
		<xsl:variable name="sElement" select="name()"/>
		<xsl:element name="{$sElement}">
			<xsl:call-template name="ConvertInterlinearExamples">
				<xsl:with-param name="sExamples">
					<xsl:value-of select="."/>
				</xsl:with-param>
				<xsl:with-param name="iLength">
					<xsl:value-of select="string-length(normalize-space(.))"/>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:element>
	</xsl:template>
	<!--
		ConvertInterlinearExamples
	-->
	<xsl:template name="ConvertInterlinearExamples">
		<xsl:param name="sExamples"/>
		<xsl:param name="iLength"/>
		<xsl:choose>
			<xsl:when test="string-length(normalize-space($sExamples)) != 0">
				<xsl:variable name="sBefore" select="substring-before($sExamples, '&#xA;')"/>
				<xsl:variable name="sLine">
					<xsl:choose>
						<xsl:when test="string-length($sBefore) = 0">
							<xsl:value-of select="$sExamples"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="$sBefore"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<interlinearEntry>
					<xsl:variable name="sFree" select="normalize-space(substring-before(substring-after($sLine,'('),')'))"/>
					<xsl:variable name="sVernacular">
						<xsl:choose>
							<xsl:when test="string-length($sFree) &gt; 0">
								<xsl:value-of select="normalize-space(substring-before($sLine, '('))"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="$sLine"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:variable>
					<vernacularLine>
						<xsl:value-of select="$sVernacular"/>
					</vernacularLine>
					<freeLine>
						<xsl:value-of select="$sFree"/>
					</freeLine>
				</interlinearEntry>
				<!-- now recurse -->
				<xsl:call-template name="ConvertInterlinearExamples">
					<xsl:with-param name="sExamples">
						<xsl:value-of select="substring-after($sExamples,'&#xA;')"/>
					</xsl:with-param>
					<xsl:with-param name="iLength">
						<xsl:value-of select="string-length(substring-after($sExamples,'&#xA;'))"/>
					</xsl:with-param>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<interlinearEntry>
					<vernacularLine/>
					<freeLine/>
				</interlinearEntry>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
