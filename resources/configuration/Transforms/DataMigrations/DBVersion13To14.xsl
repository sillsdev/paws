<?xml version="1.0" encoding="UTF-8"?>
<!-- transform to convert PAWS answer file from dbversion 13 to 14 (convert #PCDATA examples to form with vernacular, ipa, and gloss for table-based examples)
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
	<xsl:template match="/paws[@dbversion='13']">
		<paws dbversion="14">
			<xsl:apply-templates select="@*[name()!='dbversion']"/>
			<xsl:apply-templates/>
		</paws>
	</xsl:template>
	<!--
		convert table-based examples
	-->
	<xsl:template match="adjp/adjectiveDegreeAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="adjp/adjectiveDegreeAffixPhraseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="adjp/adjectiveDegreeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="adjp/adjectiveDegreeOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="adjp/adjectiveDegreeRedupExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="adjp/example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativeDegreeAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativeDegreeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativeDegreeRedupExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativeIndefTypeIntOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativeIndefTypeIntPhraseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativeIndefTypeIntWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativeIndefTypeQOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativeIndefTypeQPhraseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativeIndefTypeQWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativeOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/locativePhraseAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/mannerAffixDegreeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/mannerAffixDegreeOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/mannerAffixDegreePhraseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/mannerAffixDegreeRedupExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/mannerDegreeAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/mannerDegreeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/mannerDegreeOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/mannerDegreeRedupExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/mannerExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/mannerPhraseAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/reasonExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/reasonPPExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalDegreeAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalDegreeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalDegreeOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalDegreeRedupExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalIndefTypeIntOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalIndefTypeIntPhraseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalIndefTypeIntWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalIndefTypeQOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalIndefTypeQPhraseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalIndefTypeQWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalNounExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="advp/temporalPhraseAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="comp/compAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="comp/compOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="comp/compCliticExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="comp/compExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="comp/otherRestrictions">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="coord/and">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="coord/andOr">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="coord/andThen">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="coord/but">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="coord/either">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="coord/eitherOr">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="coord/neither">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="coord/nor">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="coord/or">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="coord/other">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="coord/with">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="excl/exclMExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="excl/noExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="excl/yesExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="focus/focusMarkerAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="focus/focusMarkerCliticExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="focus/focusMarkerExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="focus/topicMarkerAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="focus/topicMarkerCliticExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="focus/topicMarkerExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/actorVoice">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/animateAbsolutiveAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/animateErgativeAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/animateObjectAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/animateSubjectAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/antipassiveAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/antipassiveVoice">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/applicativeVoice">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/asWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/assumedEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/auditoryEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/auxiliaryExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/auxiliaryNonfiniteExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/auxiliaryOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/bodypartCompoundExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/causativeAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/causativeVoice">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/comparativeAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/comparativeDegExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/comparativeWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/compareAdjExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/compareNExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/completiveAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/conditionAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/conditionCliticExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/conditionOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/conditionWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/conditionalMood">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/contemplativeAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/continuativeAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/contrafactualAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/copularAffix">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/copularVerb">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/dativeVoice">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/declarativeMood">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/dualAbsolutiveNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/dualErgativeNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/dualObjectNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/dualSubjectNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/existOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/existPositionExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/existVerbExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/existWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/feminineAbsolutiveGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/feminineErgativeGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/feminineObjectGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/feminineSubjectGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/finiteOther">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstAbsolutivePerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstErgativePerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstExclusiveAbsolutivePerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstExclusiveErgativePerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstExclusiveObjectPerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstExclusiveSubjectPerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstInclusiveAbsolutivePerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstInclusiveErgativePerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstInclusiveObjectPerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstInclusiveSubjectPerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstObjectPerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firstSubjectPerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/firsthandEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/futureTense">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/gerundOther">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/goalVoice">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/habitualAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/hearsayEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/heartCompoundExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/humanAbsolutiveAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/humanErgativeAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/humanObjectAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/humanSubjectAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/imperativeMood">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/imperfectAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/imperfectiveAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/inanimateAbsolutiveAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/inanimateErgativeAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/inanimateObjectAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/inanimateSubjectAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/incompletiveAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/indicativeMood">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/inferentialEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/instrumentalVoice">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/interrogativeMood">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/irrealisMood">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/locativeVoice">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/masculineAbsolutiveGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/masculineErgativeGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/masculineObjectGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/masculineSubjectGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/neuterAbsolutiveGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/neuterErgativeGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/neuterObjectGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/neuterSubjectGender">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/nonFutureTense">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/nonPastTense">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/nonfiniteOther">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/nonhumanAbsolutiveAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/nonhumanErgativeAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/nonhumanObjectAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/nonhumanSubjectAnimacy">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/nonwitnessEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/objectVoice">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/olfactoryEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/otherAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/otherEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/otherMood">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/otherTense">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/otherVoice">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/participleOther">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/passiveAgentPExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/passiveAuxExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/passiveVoice">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/pastTense">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/perfectAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/perfectiveAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/pluralAbsolutiveNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/pluralErgativeNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/pluralObjectNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/pluralSubjectNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/potentialAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/presentTense">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/progressiveAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/purposiveAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/quotativeEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/realisMood">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/reportativeEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/sameAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/sameWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/secondAbsolutivePerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/secondErgativePerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/secondObjectPerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/secondSubjectPerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/secondhandEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/singularAbsolutiveNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/singularErgativeNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/singularObjectNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/singularSubjectNumber">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/stativeAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/subjunctiveCondAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/subjunctiveCondCliticExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/subjunctiveCondOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/subjunctiveCondWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/subjunctiveMood">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/superlativeAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/superlativeDegExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/thirdAbsolutivePerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/thirdErgativePerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/thirdObjectPerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/thirdSubjectPerson">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/thirdhandEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/unrealAspect">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/verbNCompoundExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/verbOtherCompoundExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/visualEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="ip/witnessEvident">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negAuxAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negAuxExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negIndefExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negIndefNPExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negLocativeAdverbAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negLocativeAdverbExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negLocativeAdverbWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negLocativeAdverbWordOther">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negLocativeAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negLocativeAffixVerbExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negLocativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negLocativeOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negTemporalAdverbAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negTemporalAdverbExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negTemporalAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negTemporalAffixVerbExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negTemporalExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negTemporalOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negVerbExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/negVerbalOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/not">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/npiDeterminerExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/npiLocativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="neg/npiTemporalExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/ablative">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/absolutive">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/accusative">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/agreeOtherFeat">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleErgGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleErgIndefGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleErgIndefPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleErgPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefPlDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleIndefPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articlePlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articlePlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articlePlDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articlePlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articlePlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articlePlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articlePlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitIndefAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitIndefAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitIndefErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitIndefGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitIndefNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitIndefPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitIndefPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitIndefPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitIndefPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitIndefPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/articleSplitPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/classifierSpecificNposOther">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/compBodyPartExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/compExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/compFoodExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/compKinshipExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/compMaterialExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/dative">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalPlDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demDistalPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demErgDistalGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demErgDistalPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demErgMedialGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demErgMedialPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demErgProximalGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demErgProximalPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialPlDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demMedialPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalPlDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demProximalPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitDistalAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitDistalAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitDistalErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitDistalGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitDistalNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitDistalPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitDistalPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitDistalPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitDistalPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitDistalPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitMedialAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitMedialAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitMedialErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitMedialGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitMedialNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitMedialPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitMedialPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitMedialPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitMedialPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitMedialPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitProximalAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitProximalAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitProximalErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitProximalGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitProximalNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitProximalPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitProximalPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitProximalPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitProximalPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/demSplitProximalPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/ergative">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/genitive">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/instrumental">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/locative">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/nominative">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/nposOther">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/oblique">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/otherCase">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/possAbsolutiveAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/possAlienableAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/possMarkerAffix">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/possMarkerClitic">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/possMarkerWord">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="np/vocative">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/ablativeP">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/bodyPartPostExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/bodyPartPrepExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/dativeP">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/degree">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/genitiveP">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/instrumentalP">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/locative">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/locativePostExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/locativePrepExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/manner">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/obliqueP">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/ordinal">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/otherMod">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pp/vocativeP">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalErgGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalErgPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalPlDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalSplitAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalSplitGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalSplitNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalSplitPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalSplitPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalSplitPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalSplitPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demDistalSplitPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialErgGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialErgPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialPlDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialSplitAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialSplitGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialSplitNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialSplitPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialSplitPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialSplitPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialSplitPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demMedialSplitPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalErgGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalErgPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalPlDatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalSplitAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalSplitGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalSplitNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalSplitPlAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalSplitPlAccExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalSplitPlErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalSplitPlGenExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/demProximalSplitPlNomExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/indefTypeIntOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/indefTypeIntPhraseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/indefTypeIntWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/indefTypeQOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/indefTypeQPhraseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/indefTypeQWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstExclSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstInclSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstPlSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentFirstSgSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondPlSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentSecondSgSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdPlSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalDependentThirdSgSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstExclSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstInclSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstPlSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalFirstSgSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondPlSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalSecondSgSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdPlSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgErgDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgErgPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgErgSubjectIntransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgErgSubjectTransExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgNoCaseExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgNomDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgNomObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgNomPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgNomSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgNoneDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgSplitAbsExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgSplitDativeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgSplitErgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgSplitObjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgSplitPossessorExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/personalThirdSgSplitSubjectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/possFirstExclExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/possFirstInclExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/possFirstPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/possFirstSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/possSecondPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/possSecondSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/possThirdPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/possThirdSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/pronPossAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/pronPossAffixWordAffixesExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/pronPossAffixWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/pronPossPhraseWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/pronRecipAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/pronRecipNounPossExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/pronRecipQExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/pronReflAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/pronReflNounPossExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/pronReflQExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/recipFirstExclExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/recipFirstInclExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/recipFirstPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/recipSecondExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/recipThirdExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/recipVerbAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/reflFirstExclExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/reflFirstInclExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/reflFirstPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/reflFirstSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/reflSecondPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/reflSecondSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/reflThirdPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/reflThirdSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="pron/reflVerbAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/embContAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/embContCliticExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/embContSpecialConditions">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/embContWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/embYNAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/embYNCliticExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/embYNWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/how">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/howMany">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/mainContAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/mainContCliticExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/mainContSpecialConditions">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/mainContWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/mainYNAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/mainYNCliticExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/mainYNWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/other">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/what">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/when">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/where">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/which">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/who">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/whose">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="q/why">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/all">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/almost">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/any">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers1">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers10">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers100">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers11">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers12">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers13">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers14">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers15">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers16">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers17">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers18">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers19">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers2">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers20">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers3">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers30">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers4">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers40">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers5">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers50">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers6">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers60">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers7">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers70">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers8">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers80">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers9">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/cardinalNumbers90">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/degreeAttachesExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/degreeWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/every">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/few">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/lastExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/many">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/much">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/nextExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/only">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalNumbers1">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalNumbers10">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalNumbers2">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalNumbers3">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalNumbers4">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalNumbers5">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalNumbers6">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalNumbers7">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalNumbers8">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalNumbers9">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/ordinalWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/otherQ">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/partitiveConstruction">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/partitiveOf">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="qp/some">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="relcl/relAffixExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="relcl/relCliticExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="relcl/relWordExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class10Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class11Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class12Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class13Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class14Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class15Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class16Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class17Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class18Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class19Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class1Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class20Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class21Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class22Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class23Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class24Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class25Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class2Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class3Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class4Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class5Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class6Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class7Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class8Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/class9Example">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classAnimalExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classAnimalPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classAnimalSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classCylinderExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classCylinderPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classCylinderSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classInsectExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classInsectPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classInsectSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classLiquidExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classLiquidPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classLiquidSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classOtherPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classOtherSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classRoundExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classRoundPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classRoundSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classSphereExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classSpherePlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classSphereSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classTreeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classTreePlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classTreeSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classWoodExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classWoodPlExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classWoodSgExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierAnimalExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierBirdExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierBoatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierClothingExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierCylindricalExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierFlatExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierGenericExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierHumanExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierLongThinExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierLongWavyExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierMechanicalExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierOtherExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierTreeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/classifierTypeExample">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>
	<xsl:template match="typology/splitConditions">
		<xsl:call-template name="ConvertExample"/>
	</xsl:template>

	<!--
		convert table-based examples
	-->
	<xsl:template name="ConvertExample">
		<xsl:param name="iNumberOfForms" select="$maxForms"/>
		<xsl:variable name="sExampleValue">
			<xsl:value-of select="."/>
		</xsl:variable>
		<xsl:variable name="iExampleLength" select="."/>
		<xsl:variable name="sElement" select="name()"/>
		<xsl:element name="{$sElement}">
			<xsl:call-template name="ConvertExamples">
				<xsl:with-param name="iNumberOfForms" select="$iNumberOfForms"/>
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
		ConvertExamples
		-->
	<xsl:template name="ConvertExamples">
		<xsl:param name="iNumberOfForms"/>
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
				<form>
					<xsl:variable name="sGloss" select="normalize-space(substring-before(substring-after($sLine,'('),')'))"/>
					<xsl:variable name="sVernacular">
						<xsl:choose>
							<xsl:when test="string-length($sGloss) &gt; 0">
								<xsl:value-of select="normalize-space(substring-before($sLine, '('))"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="$sLine"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:variable>
					<vernacular>
						<xsl:value-of select="$sVernacular"/>
					</vernacular>
					<ipa/>
					<gloss>
						<xsl:value-of select="$sGloss"/>
					</gloss>
				</form>
				<!-- now recurse -->
				<!--				<xsl:if test="$iCount &lt;= $iNumberOfForms">-->
				<xsl:call-template name="ConvertExamples">
					<xsl:with-param name="sExamples">
						<xsl:value-of select="substring-after($sExamples,'&#xA;')"/>
					</xsl:with-param>
					<xsl:with-param name="iLength">
						<xsl:value-of select="string-length(substring-after($sExamples,'&#xA;'))"/>
					</xsl:with-param>
					<xsl:with-param name="iCount" select="$iCount+1"/>
				</xsl:call-template>
				<!--				</xsl:if>-->
			</xsl:when>
			<xsl:otherwise>
				<xsl:if test="$iCount = 1">
					<form>
						<vernacular/>
						<ipa/>
						<gloss/>
					</form>
				</xsl:if>
<!--				<xsl:if test="$iCount &lt;= $iNumberOfForms">
					<xsl:call-template name="ConvertExamples">
						<xsl:with-param name="sExamples" select="''"/>
						<xsl:with-param name="iCount" select="$iCount+1"/>
					</xsl:call-template>
				</xsl:if>-->
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
