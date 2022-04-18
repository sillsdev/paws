<?xml version="1.0" encoding="UTF-8"?>
<!-- transform to convert PAWS answer file from dbversion 11 to 12 (convert examples from #PCDATA to interlinearExample+)
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="no"/>
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
	<xsl:template match="/paws[@dbversion='11']">
		<paws dbversion="12">
			<xsl:apply-templates select="@*[name()!='dbversion']"/>
			<xsl:apply-templates/>
		</paws>
	</xsl:template>
	<!--
		convert interlinear examples
	-->
	<xsl:template match="adjp/example">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="advcl/tempSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="advp/locativeExample | advp/mannerExample | advp/reasonExample | advp/temporalExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="comp/DPCPExample | comp/finiteOrNonfiniteExample | comp/nonfiniteCPOrProDropExample | comp/nonfiniteExample | comp/nonfiniteProDropExample | comp/otherExample | omp/finiteExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="coord/adjExample | coord/coordppExample | coord/dpExample | coord/sentExample | coord/vpExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="excl/exclExample | excl/greetExample | excl/intjExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="focus/focusExample | focus/topicExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/example | ip/auxExample | ip/auxNonfiniteExample | ip/auxOtherExample | ip/copularExample | ip/diExample | ip/intransExample | ip/motionExample | ip/passiveExample | ip/proDropExampleip/proDropExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/advLocativeExample | neg/advTemporalExample | neg/auxExample | neg/degreeSubjExample | neg/determinerSubjExample | neg/indirectObjectExample | neg/objectExample | neg/pronounSubjExample | neg/subjectObjectExample | neg/verbAffixExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/example | np/adjpExample | np/compExample | np/compPPExample | np/embeddedExample | np/partExample | np/partHeadExample | np/partHeadSentExample | np/ppExample | np/qpExample | np/relClExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/example | pp/aloneExample | pp/compPPExample | pp/locExample | pp/ppExample | pp/sentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/indefExample | pron/indefNPExample | pron/negIndefExample | pron/negIndefNPExample | pron/partitiveExample | pron/possExample | pron/pronRelClExample | pron/recipExample | pron/recipSentExample | pron/reflExample | pron/reflSentExample | pron/standAloneNPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="prop/example | prop/ppExample | prop/relClExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="q/example | q/contentExample | q/embContentExample | q/embYNExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/example | qp/cardinalCompoundExample | qp/degreeExample | qp/determinerNPExample | qp/determinerNegNPExample | qp/negCooccurExample | qp/negExample | qp/ordinalExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="relcl/example | relcl/headlessExample | relcl/sentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="typology/example | typology/experiencerExample | experiencerIntExample | typology/experiencerPnExample | typology/experiencerPnIntExample | typology/intExample | typology/pnExample | typology/pnIntExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<!--
		ConvertInterlinearExamples
	-->
	<xsl:template name="ConvertInterlinear">
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
		items ending in "Example" or just example
	-->
	<!--<xsl:template match="*[contains(name(),'Example') or name()='example']">
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
	</xsl:template>-->
	<!--
		ConvertInterlinearExamples
	-->
	<xsl:template name="ConvertInterlinearExamples">
		<xsl:param name="sExamples"/>
		<xsl:param name="iLength"/>
		<xsl:param name="iCount" select="1"/>
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
				<xsl:if test="$iCount &lt;= $maxInterlinear">
					<xsl:call-template name="ConvertInterlinearExamples">
						<xsl:with-param name="sExamples">
							<xsl:value-of select="substring-after($sExamples,'&#xA;')"/>
						</xsl:with-param>
						<xsl:with-param name="iLength">
							<xsl:value-of select="string-length(substring-after($sExamples,'&#xA;'))"/>
						</xsl:with-param>
						<xsl:with-param name="iCount" select="$iCount+1"/>
					</xsl:call-template>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<interlinearEntry>
					<vernacularLine/>
					<freeLine/>
				</interlinearEntry>
				<xsl:if test="$iCount &lt;= $maxInterlinear">
					<xsl:call-template name="ConvertInterlinearExamples">
						<xsl:with-param name="sExamples" select="''"/>
						<xsl:with-param name="iCount" select="$iCount+1"/>
					</xsl:call-template>
				</xsl:if>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
