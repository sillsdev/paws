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
	<xsl:template match="adjp/adjectiveDegreePhraseExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="adjp/adjectiveMannerPhraseExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="advcl/reasonSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="advcl/tempSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="advp/locativePhraseExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="advp/mannerDegreePhraseExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="advp/reasonSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="advp/temporalNounModifierExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="advp/temporalPhraseExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="comp/DPCPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="comp/causeExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="comp/finiteExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="comp/finiteOrNonfiniteExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="comp/nonfiniteCPOrProDropExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="comp/nonfiniteExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="comp/nonfiniteProDropExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="comp/otherExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="comp/quotationExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="comp/raisingExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="coord/adjExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="coord/appositiveExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="coord/coordppExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="coord/dpExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="coord/listExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="coord/sentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="coord/sentSeqExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="coord/vpExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="excl/exclExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="excl/greetExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="excl/intjExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="focus/focusExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="focus/topicExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/antipassiveExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/applicativeExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/asExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/auxExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/auxNonfiniteExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/auxOtherExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/causativeExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/causativeMakeExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/causativeOtherExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/cliticPnExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/comparativeExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/comparativeSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/conditionalExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/copularExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/diExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/example">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/existExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/experiencerExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/experiencerIntExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/experiencerPnExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/experiencerPnIntExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/idiomExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/impExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/impPoliteExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/intExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/motionExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/passiveExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/perceptionExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/pnExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/pnIntExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/proDropExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/proDropOtherExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/sameExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/subjunctiveExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/superlativeExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/verbNCompoundSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/verbOtherCompoundSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="ip/voiceExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/advLocativeExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/advTemporalExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/auxAffixExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/auxExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/indirectObjectExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negAffixExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negCliticExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negCooccurExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negIndefSubjExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negLocativeAdverbWordsExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negLocativeVerbExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negOtherExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negTemporalAdverbWordExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negTemporalAdverbWordsExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negTemporalVerbExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/negVerbalOtherSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/npDegreeSubjExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/objectExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/subjectObjectExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="neg/verbAffixExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/adjpExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/agreeAnimacyExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/agreeClassExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/agreeClassifierExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/agreeGenderExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/agreeNumberExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/agreeOtherExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/caseNPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/compPPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/embeddedExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/example">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/partExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/partHeadExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/partHeadSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/possessorExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/ppExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/qpExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="np/relClExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/aloneExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/bodyPartPostPPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/bodyPartPrepPPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/compPPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/degreeWithPP">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/locExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/locativePostPPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/locativePrepPPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/locativeWithPP">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/mannerWithPP">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/ordinalWithPP">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/otherModWithPP">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/ppExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pp/tempExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/classifierNoNExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/dependentTypeOther">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/partitiveExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclNoneDativeExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/pronRelClExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/pronSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/recipSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/recipVerbSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/reflSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/reflVerbSentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="pron/standAloneNPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="prop/example">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="prop/ppExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="prop/relClExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="q/contentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="q/embContentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="q/embYNExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="q/example">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/cardinalCompoundExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/cardinalExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/degreeAttachesNPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/degreeExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/determinerAffixExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/determinerCliticExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/determinerExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/determinerOtherExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/example">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/nextlastNPExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/npDegreeAffixExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/npDegreeCliticExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/npDegreeOtherExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/ordinalCardinalExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/ordinalExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="qp/partitiveQExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="relcl/example">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="relcl/headlessExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="relcl/sentExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="typology/classifierAgrExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="typology/classifierSpecificExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="typology/example">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="typology/experiencerExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="typology/experiencerIntExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="typology/experiencerPnExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="typology/experiencerPnIntExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="typology/intExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="typology/pnExample">
		<xsl:call-template name="ConvertInterlinear"/>
	</xsl:template>
	<xsl:template match="typology/pnIntExample">
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
