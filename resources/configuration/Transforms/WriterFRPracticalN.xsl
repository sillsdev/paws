<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="n">
	<section1 id="sN">
		<secTitle>Noms</secTitle>
		<p>
<xsl:text>Les noms sont des mots qui décrivent principalement des personnes, des animaux, des lieux ou des choses.  Ils peuvent également être utilisés pour exprimer des idées, des pensées ou des émotions.</xsl:text>
</p>
		<p>
<xsl:text>Les sections suivantes traitent l’accord du nom, le cas et la possession en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  Les types de noms composés attestés en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont donnés dans la section </xsl:text>
<sectionRef sec="sNPCompounds" />
<xsl:text>.  Tous les éléments qui peuvent modifier des noms pour former des syntagmes nominaux complets sont traités dans la section </xsl:text>
<sectionRef sec="sNP" />
<xsl:text>.</xsl:text>
</p>
		<section2 id="sNPAgr">
			<secTitle>L'accord</secTitle>
		   <p contentType="ctPracticalIntro">
<xsl:text>Au moins certains modificateurs s’accordent obligatoirement en nombre, en animéité, en classe ou pour d’autres éléments avec le nom noyau.</xsl:text>
</p>
		   <p contentType="ctComparativeIntro">
<xsl:text>Beaucoup de langues exigent que le nom noyau s’accorde avec au moins certains modificateurs.  Alors que le français a un accord en genre et en nombre, en d'autres langues cet accord peut inclure aussi l’animéité, le genre, la classe ou d’autres éléments.</xsl:text>
</p>
			<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text></xsl:text>
<xsl:choose>
					<xsl:when test="//np/@agreeNumber='no'"> il n’y a pas d’accord en nombre.  Au lieu de cela le marqueur de numéral vient du nombre ou du quantificateur.</xsl:when>
					<xsl:when test="//np/@agreeNumber='yes'"> les différents modificateurs nominaux s’accordent en nombre avec le nom noyau.</xsl:when>
				</xsl:choose>
</p>
			<xsl:if test="normalize-space(//np/@agreeNumber)='yes'">
<p>
<xsl:text>Voici quelques exemples illustrant un accord en nombre dans des syntagmes nominaux en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/@agreeNumber)='yes'">
<example num="xN.NPAgr.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/agreeNumberExample" />
<xsl:with-param name="sExNumber">xN.NPAgr.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
			<xsl:if test="normalize-space(//np/agreeClass/@checked)='no' and normalize-space(//np/agreeClassifier/@checked)='no' and normalize-space(//np/agreeGender/@checked)='no' and normalize-space(//np/agreeAnimacy/@checked)='no' and normalize-space(//np/agreeOtherFeat/@checked)='no' and normalize-space(//np/agreeOtherNone/@checked)='yes'">
<p>
<xsl:text>Les modificateurs ne s’accordent pas en nombre, en animéité, en genre, en classe ou en autres éléments avec le nom noyau. </xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/agreeClass/@checked)='yes' and normalize-space(//typology/@classifier)='yesAgr'">
<p>
<xsl:text>Les modificateurs et le nom noyau s’accordent pour la classe. Voici quelques exemples illustrant l’accord de classe dans les syntagmes nominaux en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/agreeClass/@checked)='yes' and normalize-space(//typology/@classifier)='yesAgr'">
<example num="xN.NPAgr.18">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/agreeClassExample" />
<xsl:with-param name="sExNumber">xN.NPAgr.18</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
			<xsl:if test="normalize-space(//np/agreeClassifier/@checked)='yes' and normalize-space(//typology/@classifier)='yesSpecific'">
<p>
<xsl:text>Un classificateur s’accorde avec la classe ou le type du nom est présent avec des noms qui sont dénombrés ou spécifiés alors que d'autres modificateurs ne sont pas marqués pour la classe, comme cela est illustré dans les exemples suivants :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/agreeClassifier/@checked)='yes' and normalize-space(//typology/@classifier)='yesSpecific'">
<example num="xN.NPAgr.22">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/agreeClassifierExample" />
<xsl:with-param name="sExNumber">xN.NPAgr.22</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
			<xsl:if test="normalize-space(//np/agreeAnimacy/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples illustrant un accord d’animéité entre le nom noyau et les modificateurs dans des syntagmes nominaux en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> comprennent :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/agreeAnimacy/@checked)='yes'">
<example num="xN.NPAgr.26">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/agreeAnimacyExample" />
<xsl:with-param name="sExNumber">xN.NPAgr.26</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
			<xsl:if test="normalize-space(//np/agreeGender/@checked)='yes'">
<p>
<xsl:text>Le nom s’accorde avec les modificateurs en genre en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, comme les exemples suivant l’illustrent :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/agreeGender/@checked)='yes'">
<example num="xN.NPAgr.30">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/agreeGenderExample" />
<xsl:with-param name="sExNumber">xN.NPAgr.30</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
		   <xsl:if test="normalize-space(//np/agreeOtherFeat/@checked)='yes'">
<p>
<xsl:text>Les syntagmes en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> illustrent l’accord en  ___</xsl:text>
<xsl:value-of select="//np/agreeOtherFeat" />
<xsl:text>.  Voici quelques exemples de ce type d’accord :</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//np/agreeOtherFeat/@checked)='yes'">
<example num="xN.NPAgr.34">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/agreeOtherExample" />
<xsl:with-param name="sExNumber">xN.NPAgr.34</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
		</section2>
	   <section2 id="sNPCase">
	   <secTitle>Le cas</secTitle>
	      <p contentType="ctPracticalIntro">
<xsl:text>Les noms et les modificateurs peuvent aussi être marqués pour le cas.  Les systèmes casuels aident à distinguer le rôle d’un nom ou d’un pronom par rapport au verbe.</xsl:text>
</p>
	      <p contentType="ctComparativeIntro">
<xsl:text>Les noms et les modificateurs peuvent être marqués pour le cas.  Le système casuel le plus commun est nominatif-accusatif.  Le français a un système de ce type, bien que seuls les pronoms soient marqués pour le cas en français.  Dans un système nominatif-accusatif les sujets de verbes transitifs et intransitifs sont au cas nominatif, alors que les objets directs sont à l’accusatif.  Les possesseurs sont au cas génitif.  Les pronoms nominatifs en français sont : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>je, tu, il, elle, nous, vous, ils, elles</langData>
<xsl:text>.  Les pronoms accusatifs sont : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>me, te, le, la, nous, vous, les</langData>
<xsl:text>.  Les possessifs, au génitif, incluent : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mon, ma, mes, ton, ta, tes, son, sa, ses, notre, nos, votre, vos, leur, leurs</langData>
<xsl:text>.  Ainsi, nous disons </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Ils le voient</langData>
<xsl:text> et non </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Les voient ils</langData>
<xsl:text>. </xsl:text>
</p>
	      <p contentType="ctComparativeIntro">
<xsl:text> Une langue possédant un système casuel de type nominatif-accusatif peut avoir un marqueur qui distingue les sujets-expérient des sujets-agent.  Des verbes avec des sujets-expérient sont</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>apparaître, voir, craindre être trouvé, vouloir, aimer</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>rire</langData>
<xsl:text>. </xsl:text>
</p>
	      <p contentType="ctComparativeIntro">
<xsl:text>
	         	Dans un système casuel ergatif-absolutif, les sujets des verbes transitifs ont la marque de l’ergatif, tandis que les objets des verbes transitifs et les sujets des verbes intransitifs prennent la marque du cas absolutif.  Le cas des possesseurs n’est pas homogène sur le plan linguistique.  Certaines langues possèdant un système casuel ergative-absolutif ont simplement différents ensembles de marqueurs d’accord verbal mais n’ont pas de marqueur pour les noms.  Ce type de marquage d’accord sera traité à la section </xsl:text>
<sectionRef sec="sIPAgr" />
<xsl:text>.</xsl:text>
</p>
	      <p contentType="ctComparativeIntro">
<xsl:text>
	         	Certaines langues sont encore plus complexes en ce sens qu’elles ont normalement un système casuel nominatif-accusatif dans la plupart des contextes.  Toutefois, dans quelques contextes grammaticaux bien précis, par exemple pour un temps ou un aspect particulier ou une caractéristique d’accord pour une personne particulière, le système casuel passe à l'ergatif-absolutif. Cela s'appelle l’ergativité mixte.</xsl:text>
</p>
	      <p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text></xsl:text>
<xsl:choose>
	         	<xsl:when test="//typology/@case='none'"> il n’y a pas de système casuel.  Exactement le même ensemble de pronoms peut être utilisé dans n’importe quelle position dans la phrase et il n’y a pas de marquage basé sur la position dans la phrase sur les noms ou sur les modificateurs du noms.</xsl:when>
	         	<xsl:when test="//typology/@case='nominative'"> a un système casuel nominatif-accusatif.   Les sujets de verbes transitifs et intransitifs sont marqués de la même façon et utilisent le même ensemble de pronoms, mais les objets de verbes transitifs sont marqués différemment.</xsl:when>
	         	<xsl:when test="//typology/@case='ergative'"> a un système casuel ergative-absolutif.   Les sujets de verbes intransitifs et les objets de verbes transitifs sont marqués de la même façon, mais les sujets de verbes transitifs sont marqués différemment.</xsl:when>
	         	<xsl:when test="//typology/@case='split'"> a un système casuel mixte.   Normalement la langue utilise un système casuel nominatif-accusatif, mais le système ergatif-absolutif s’utilise dans certaines conditions grammaticales.</xsl:when>
	         </xsl:choose>
<xsl:if test="normalize-space(//typology/@case)='split'"> 
	      		<xsl:text> Les conditions où le système casuel ergative-absolutif s’utilise sont ___</xsl:text>
<xsl:value-of select="//typology/splitConditions" />
	      		<xsl:text>.   </xsl:text>
	      	</xsl:if>
</p>
	      
	   	<p>
<xsl:text>Cela est illustré dans les exemples suivants de phrases transitives, dans lesquelles le sujet est agent et où le sujet et l'objet sont des syntagmes nominaux :</xsl:text>
</p>
	      <example num="xN.NPCase.18">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/example" />
<xsl:with-param name="sExNumber">xN.NPCase.18</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>    
	   	<p>
<xsl:text>Remarquez les formes des pronoms utilisés pour le sujet-agent et l’objet dans ces phrases transitives :</xsl:text>
</p>
	      <example num="xN.NPCase.22">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/pnExample" />
<xsl:with-param name="sExNumber">xN.NPCase.22</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	   	<xsl:if test="normalize-space(//np/@caseN)='yes' and normalize-space(//typology/@case)!='none'">
<p>
<xsl:text>Dans les exemples intransitifs aves des syntagmes nominaux comme sujet, </xsl:text>
<xsl:choose>
	         	<xsl:when test="//typology/@case='nominative'">le marquage casuel correspond à celui des sujets dans les phrases transitives ci-dessus.</xsl:when>
	         	<xsl:when test="//typology/@case='ergative'">le marquage casuel correspond à celui des objets dans les phrases transitives ci-dessus.</xsl:when>
	         	<xsl:when test="//typology/@case='split'">le marquage casuel sur la plupart des sujets correspond à celui des sujets dans les phrases transitives ci-dessus, mais dans certaines situations, il correspond à celui des objets dans les phrases transitives.</xsl:when>
	         </xsl:choose>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//np/@caseN)='yes' and normalize-space(//typology/@case)!='none'">
<example num="xN.NPCase.26">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/intExample" />
<xsl:with-param name="sExNumber">xN.NPCase.26</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
	   	<p>
<xsl:text>Les exemples de phrases intransitives avec des pronoms indépendants comme sujets prouvent </xsl:text>
<xsl:choose>
	         	<xsl:when test="//typology/@case='none'">qu’il n’y a pas de distinction puisque les mêmes pronoms peuvent apparaître comme sujets des verbes transitifs et comme objets de verbes intransitifs.</xsl:when>
	         	<xsl:when test="//typology/@case='nominative'">que le même ensemble de pronoms peut apparaître comme sujet des verbes transitifs et intransitifs, alors que des pronoms différents sont utilisés pour les objets de verbes transitifs.</xsl:when>
	         	<xsl:when test="//typology/@case='ergative'">que le même ensemble de pronoms peut apparaître comme sujet des verbes intransitifs et comme objet des verbes transitifs, alors que des pronoms différents sont utilisés pour les sujets de verbes transitifs.</xsl:when>
	         	<xsl:when test="//typology/@case='split'">que le même ensemble de pronoms peut normalement apparaître comme sujet des verbes transitifs et intransitifs, alors que des pronoms différents sont utilisés pour les objets de verbes transitifs.  Dans certains cas, cependant, le même ensemble de pronoms peut apparaître comme sujet d’un verbe intransitif et comme objet d’un verbe transitif, alors que des pronoms différents sont utilisés comme sujet de verbes transitifs.</xsl:when>
	         </xsl:choose>
</p>
	      <example num="xN.NPCase.30">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/pnIntExample" />
<xsl:with-param name="sExNumber">xN.NPCase.30</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	      
	      <xsl:if test="normalize-space(//typology/@case)='nominative' and normalize-space(//np/@caseN)='yes' or normalize-space(//typology/@case)='split' and normalize-space(//np/@caseN)='yes'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, </xsl:text>
<xsl:choose>
	      	<xsl:when test="//typology/@caseExperiencer='no'">le même marquage casuel et le même ensemble de pronoms sont utilisés pour les sujets-agent et les sujets-expérient.</xsl:when>
	      	<xsl:when test="//typology/@caseExperiencer='yesObj'">on utilise le même marquage casuel et le même ensemble de pronoms pour les sujets-expérient que por les objets de verbes transitifs ayant un sujet-agent.  Nous supposons que les sujets-expérient sont au cas datif, comme les objets indirects, par conséquent les cas accusatif et datif sont marqués de la même façon dans cette langue.</xsl:when>
	      	<xsl:when test="//typology/@caseExperiencer='yesDat'">le marquage casuel et l’ensemble de pronoms utilisé pour les sujets-expérient sont différents à la fois de ceux utilisés pour les sujets et et de ceux utilisé pour les objets de verbes ayant un sujet-agent.  Ceci est le cas datif, utilisés aussi pour les objets indirects.</xsl:when>
	      </xsl:choose>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//typology/@case)='nominative' and normalize-space(//np/@caseN)='no' or normalize-space(//typology/@case)='split' and normalize-space(//np/@caseN)='no'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, </xsl:text>
<xsl:choose>
	      	<xsl:when test="//typology/@caseExperiencer='no'">le même ensemble de pronoms est utilisé pour les sujets-agent et les sujets-expérient.</xsl:when>
	      	<xsl:when test="//typology/@caseExperiencer='yesObj'">on utilise le même ensemble de pronoms pour les sujets-expérient que pour les objets de verbes transitifs ayant un sujet-agent.  Nous supposons que les sujets-expérient sont au cas datif, comme les objets indirects, par conséquent, les cas accusatif et datif sont marqués de la même façon dans cette langue.</xsl:when>
	      	<xsl:when test="//typology/@caseExperiencer='yesDat'">l’ensemble de pronoms utilisé pour les sujets-expérient est différent de celui utilisé pour les sujets et objets de verbes ayant un sujet-agent.  Ceux-ci sont les pronoms datif, utilisés également pour les objets indirects.</xsl:when>
	      </xsl:choose>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//typology/@case)='ergative' and normalize-space(//np/@caseN)='yes'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, </xsl:text>
<xsl:choose>
	      	<xsl:when test="//typology/@caseExperiencer='no'">le même marquage casuel et le même ensemble de pronoms sont utilisés pour les sujets-agent et les sujets-expérient.</xsl:when>
	      	<xsl:when test="//typology/@caseExperiencer='yesObj'">les sujets-expérient utilisent le même marquage et le même ensemble de pronoms comme objets de verbes transitifs que le font les sujets-agent.  Nous supposons que les sujets-expérient sont au cas datif, comme les objets indirects, par conséquent les cas absolutif et datif sont marqués de la même façon dans cette langue.</xsl:when>
	      	<xsl:when test="//typology/@caseExperiencer='yesDat'">le marquage casuel et le ensemble de pronoms utilisés pour les sujets-expérient sont différents à la fois de ceux utilisés pour les sujets et de ceux utilisé pour les objets de verbes ayant un sujet-agent.  Ceci est le cas datif, utilisé également pour les objets indirects.</xsl:when>
	      </xsl:choose>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//typology/@case)='ergative' and normalize-space(//np/@caseN)='no'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, </xsl:text>
<xsl:choose>
	      	<xsl:when test="//typology/@caseExperiencer='no'">le même ensemble de pronoms est utilisé pour les sujets-agent et les sujets-expérient.</xsl:when>
	      	<xsl:when test="//typology/@caseExperiencer='yesObj'">on utilise le même ensemble de pronoms pour les sujets-expérient que pour les objets de verbes transitifs ayant un sujet-agent.  Nous supposons que les sujets-expérient sont au cas datif, tout comme les objets indirects, par conséquent les cas absolutif et datif sont marqués de la même façon dans cette langue.</xsl:when>
	      	<xsl:when test="//typology/@caseExperiencer='yesDat'">l’ensemble de pronoms utilisé pour les sujets-expérient est différent à la fois de celui utilisé pour les sujets et de celui utilisé pour les objets de verbes ayant un sujet-agent.  Ceux-ci sont les pronoms datif, utilisés également aussi pour les objets indirects.</xsl:when>
	      </xsl:choose>
</p>
</xsl:if>
	      
	   	<xsl:if test="normalize-space(//typology/@case)='none' and normalize-space(//typology/@caseExperiencer)='no'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, le même ensemble de pronoms est utilisé pour les sujets-agent et sujets-expérient.</xsl:text>
</p>
</xsl:if>
	   	<xsl:if test="normalize-space(//typology/@case)='none' and normalize-space(//typology/@caseExperiencer)!='no'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, au moins une partie des pronoms utilisés pour les sujets-expérient sont différents de ceux utilisés pour les sujets-agent.</xsl:text>
</p>
</xsl:if>
	      
	   	<p>
<xsl:text>Ceci est illustré dans les exemples suivants de phrases transitives, dans lesquelles le sujet est expérient, et où le sujet et l’objet sont des syntagmes nominaux :</xsl:text>
</p>
	      <example num="xN.NPCase.46">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/experiencerExample" />
<xsl:with-param name="sExNumber">xN.NPCase.46</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>    
	   	<p>
<xsl:text>Remarquez les formes des pronoms utilisés pour les sujets-expérient et les objets dans ces phrases transitives :</xsl:text>
</p>
	      <example num="xN.NPCase.50">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/experiencerPnExample" />
<xsl:with-param name="sExNumber">xN.NPCase.50</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>

	   	<p contentType="ctPracticalIntro">
<xsl:text>Dans les langues qui marquent le cas sur les noms, des cas additionnels peuvent être utilisés pour indiquer les relations grammaticales mineures, et pourront être marqués sur les syntagmes nominaux. Dans les langues sans marquage casuel et dans celles qui marquent le cas uniquement pour les pronoms,  ces relations grammaticales supplémentaires sont généralement exprimées par des syntagmes adpositionnels.
	      </xsl:text>
</p>
	   	<p contentType="ctComparativeIntro">
<xsl:text>Il y a d’autres cas à considérer, en plus de ceux du sujet et de l'objet.  Ceux-ci peuvent inclure le cas ablatif pour la source ou l’origine, le cas génitif pour le type ou le possesseur, le cas datif pour l’objet indirect, le cas instrumental pour le moyen ou l’instrument, le cas locatif pour le lieu, le cas vocatif pour l’adresse directe, ainsi que le cas oblique qui est parfois utilisé pour marquer des relations grammaticales mineures.
	   		Dans les langues qui marquent normalement le cas sur les noms ou les syntagmes nominaux de même que sur les pronoms, ces cas supplémentaires sont généralement marqués par des marqueurs de cas sur les syntagmes nominaux eux-mêmes.  Pour les langues sans marquage casuel et celles qui marquent le cas uniquement sur les pronoms, ces relations grammaticales supplémentaires sont normalement exprimées par des syntagmes adpositionnels.
	      </xsl:text>
</p>
	   	<xsl:if test="normalize-space(//typology/@case)='none'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> aucune distinction de cas n’est faite.  Les relations grammaticales mineures sont donc exprimées par des syntagmes </xsl:text>
<xsl:choose>
	   		<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
	   		<xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
	   		<xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
	   		<xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
	   	</xsl:choose>
<xsl:text> plutôt que par des syntagmes nominaux (voir la section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text>).</xsl:text>
</p>
</xsl:if>
	   	<xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@caseN)='no'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> les distinctions de cas ne sont marquées ni sur les noms ni sur les syntagmes nominaux, seul le pronom distingue le cas.  Les relations grammaticales mineures sont donc exprimées par des syntagmes </xsl:text>
<xsl:choose>
	      	<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
	      	<xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
	      	<xsl:when test="//pp/@pPos='both'">prépositionnels or postpositionnels</xsl:when>
	      	<xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
	   	</xsl:choose>
<xsl:text> plutôt que par des syntagmes nominaux (voir la section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text>).  Les distinctions casuelles pour les pronoms seront décrites dans la section </xsl:text>
<sectionRef sec="sPronPersonal" />
<xsl:text>.</xsl:text>
</p>
</xsl:if>
	   	<xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@caseN)='yes'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, les cas est marqué à la fois sur les pronoms et sur les noms ou les syntagmes nominaux. </xsl:text>
<xsl:if test="normalize-space(//typology/@case)='nominative' and normalize-space(//np/@caseDefault)='nominative' or normalize-space(//typology/@case)='split' and normalize-space(//np/@caseDefault)='nominative'">
	         	<xsl:text>  Le cas nominatif est le cas par défaut (non marqué). </xsl:text>
	         </xsl:if>
<xsl:if test="normalize-space(//np/@caseWord)='yes' and normalize-space(//np/caseWordOther/@checked)='no'">	            
	      	<xsl:text>Les marqueurs de cas sont écrits comme des mots indépendants et sont placés </xsl:text>
	      	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
	      	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
	      	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
	      	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
	      	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
	      	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
	      	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
	      	<xsl:text> reste du syntagme nominal.  </xsl:text>
	         </xsl:if>
<xsl:if test="normalize-space(//np/@caseWord)='yes' and normalize-space(//np/caseWordOther/@checked)='yes' and normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='no'"> 
	         	<xsl:text>Les marqueurs de cas sont écrits comme des mots indépendants et sont placés ___</xsl:text>
<xsl:value-of select="//np/caseWordOther" />
	            <xsl:text>.   </xsl:text>
	         </xsl:if>
<xsl:if test="normalize-space(//np/@caseWord)='yes' and normalize-space(//np/caseWordOther/@checked)='yes' and normalize-space(//np/caseWordBefore/@checked)='yes' or normalize-space(//np/@caseWord)!='no' and normalize-space(//np/caseWordOther/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='yes' or normalize-space(//np/@caseWord)!='no' and normalize-space(//np/caseWordOther/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='yes'">
	         	<xsl:text>Les marqueurs de cas sont écrits comme des mots indépendants et sont placés </xsl:text>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:text> reste du syntagme nominal, et peuvent également être placés ___</xsl:text>
<xsl:value-of select="//np/caseWordOther" />
<xsl:text>.   </xsl:text>
	         </xsl:if>
<xsl:if test="normalize-space(//np/@caseWord)='some' and normalize-space(//np/caseWordOther/@checked)='no'">	            
	         	<xsl:text>Certains des marqueurs de cas sont écrits comme des mots indépendants et sont placés </xsl:text>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:text> reste du syntagme nominal.  </xsl:text>
	         </xsl:if>
<xsl:if test="normalize-space(//np/@caseWord)='some' and normalize-space(//np/caseWordOther/@checked)='yes' and normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='no'"> 
	         	<xsl:text>Certains des marqueurs de cas sont écrits comme des mots indépendants et sont placés ___</xsl:text>
<xsl:value-of select="//np/caseWordOther" />
	            <xsl:text>.   </xsl:text>
	         </xsl:if>
<xsl:if test="normalize-space(//np/@caseWord)='some' and normalize-space(//np/caseWordOther/@checked)='yes' and normalize-space(//np/caseWordBefore/@checked)='yes' or normalize-space(//np/@caseWord)='some' and normalize-space(//np/caseWordOther/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='yes' or normalize-space(//np/@caseWord)='some' and normalize-space(//np/caseWordOther/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='yes'">
	         	<xsl:text>Certains des marqueurs de cas sont écrits comme des mots indépendants et sont placés </xsl:text>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='no' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='no' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseWordBefore/@checked)='yes' and normalize-space(//np/caseWordAfter/@checked)='yes' and normalize-space(//np/caseWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
	         	<xsl:text> reste du syntagme nominal, et d’autres peuvent également être placés ___</xsl:text>
<xsl:value-of select="//np/caseWordOther" />
<xsl:text>.   </xsl:text>
	         </xsl:if>
<xsl:if test="normalize-space(//np/@caseWord)='some'">
<xsl:text>D’autres </xsl:text>
	   			<xsl:if test="normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='no' and normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='no'">
<xsl:text>marqueurs de cas se rattachent au début du premier mot dans le syntagme nominal.</xsl:text>
</xsl:if>
	   			<xsl:if test="normalize-space(//np/caseAttachesEnclitic/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='no'">
<xsl:text>marqueurs de cas se rattachent à la fin du dernier mot dans le syntagme nominal.</xsl:text>
</xsl:if>
	   			<xsl:if test="normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' and normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='no'">
<xsl:text>marqueurs de cas se rattachent au début du premier mot et d’autres se rattachent à la fin du dernier mot dans le syntagme nominal.</xsl:text>
</xsl:if>
	   			<xsl:if test="normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='no' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='no'">
<xsl:text>marqueurs de cas sont des préfixes qui se rattachent au nom noyau.</xsl:text>
</xsl:if>
	   			<xsl:if test="normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='no'">
<xsl:text>marqueurs de cas sont des suffixes qui se rattachent au nom noyau.</xsl:text>
</xsl:if>
	   			<xsl:if test="normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='no'">
<xsl:text>marqueurs de cas sont des préfixes et d’autres sont des suffixes qui se rattachent au nom  principal.</xsl:text>
</xsl:if>
	   			<xsl:if test="normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='no' or normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='no' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='no' or normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='no' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='no' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='no' or normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes'">
<xsl:text>marqueurs de cas sont des clitiques qui se rattachent soit au début du premier mot soit à la fin du dernier mot dans le syntagme nominal et certains sont des affixes qui se rattachent au nom noyau.</xsl:text>
</xsl:if>
	   			<xsl:if test="normalize-space(//np/caseAttachesOther/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' or normalize-space(//np/caseAttachesOther/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesOther/@checked)='yes' and normalize-space(//np/caseAttachesPrefix/@checked)='yes' or normalize-space(//np/caseAttachesOther/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='yes'">
<xsl:text>  Certains peuvent également se rattacher ___</xsl:text>
<xsl:value-of select="//np/caseAttachesOther" />
	               <xsl:text>.   </xsl:text>
</xsl:if>
	         </xsl:if>
<xsl:if test="normalize-space(//np/@caseWord)='some' and normalize-space(//np/caseAttachesOther/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='no' and normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='no'"> 
	         	<xsl:text>Certains des marqueurs de cas se rattachent ___</xsl:text>
<xsl:value-of select="//np/caseAttachesOther" />
	            <xsl:text>.   </xsl:text>
	         </xsl:if>
<xsl:if test="normalize-space(//np/@caseWord)='no'">  <xsl:text></xsl:text>
	         	<xsl:if test="normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='no' and normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='no'">
<xsl:text>Les marqueurs de cas se rattachent au début du premier mot dans le syntagme nominal.</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseAttachesEnclitic/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='no'">
<xsl:text>Les marqueurs de cas se rattachent à la fin du dernier mot dans le syntagme nominal.</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' and normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='no'">
<xsl:text>Certains des marqueurs de cas se rattachent au début du premier mot et d’autres se rattachent à la fin du dernier mot dans le syntagme nominal.</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='no' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='no'">
<xsl:text>Les marqueurs de cas sont des préfixes qui se rattachent au nom noyau.</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='no'">
<xsl:text>Les marqueurs de cas sont des suffixes qui se rattachent au nom noyau.</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='no'">
<xsl:text>Certains des marqueurs de cas sont des préfixes et d’autres sont des suffixes qui se rattachent au nom noyau.</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='no' or normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='no' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='no' or normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='no' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='no' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='no' or normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesPrefix/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes'">
<xsl:text>Certains des marqueurs de cas sont des clitiques qui se rattachent ou au début du premier mot ou à la fin du dernier mot dans le syntagme nominal et certains sont des affixes qui se rattachent au nom noyau.</xsl:text>
</xsl:if>
	         	<xsl:if test="normalize-space(//np/caseAttachesOther/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='yes' or normalize-space(//np/caseAttachesOther/@checked)='yes' and normalize-space(//np/caseAttachesEnclitic/@checked)='yes' or normalize-space(//np/caseAttachesOther/@checked)='yes' and normalize-space(//np/caseAttachesPrefix/@checked)='yes' or normalize-space(//np/caseAttachesOther/@checked)='yes' and normalize-space(//np/caseAttachesSuffix/@checked)='yes'">
<xsl:text>  Certains aussi peuvent se rattacher ___</xsl:text>
<xsl:value-of select="//np/caseAttachesOther" />
	               <xsl:text>.   </xsl:text>
</xsl:if>
	         </xsl:if>
<xsl:if test="normalize-space(//np/@caseWord)='no' and normalize-space(//np/caseAttachesOther/@checked)='yes' and normalize-space(//np/caseAttachesProclitic/@checked)='no' and normalize-space(//np/caseAttachesEnclitic/@checked)='no' and normalize-space(//np/caseAttachesPrefix/@checked)='no' and normalize-space(//np/caseAttachesSuffix/@checked)='no'"> 
	         	<xsl:text>Les marqueurs de cas se rattachent ___</xsl:text>
<xsl:value-of select="//np/caseAttachesOther" />
	            <xsl:text>.   </xsl:text>
	         </xsl:if>
</p>
</xsl:if>
	   	<xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@caseN)='yes'">
<p>
<xsl:text>Les marqueurs de cas utilisés pour les noms ou les syntagmes nominaux en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont présentés dans le tableau ci-dessous.</xsl:text>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@caseN)='yes'">
<example num="xCase">
<table border="1">
	            <caption>
	            	<xsl:text>Marqueurs de cas</xsl:text>
	            </caption>
	            <tr>
	               <th>Cas</th>
	            	<th>Utilisation</th>
	            	<th>Morphèmes</th>
	            	<th>Glose</th>
	            </tr>
	            <xsl:if test="normalize-space(//typology/@case)='nominative' or normalize-space(//typology/@case)='split'">
<tr>
<td>
	               	<xsl:text>nominatif</xsl:text>
	               </td>
<td>
	                  <xsl:text>sujet</xsl:text>
	               </td>
<xsl:for-each select="//np/nominative/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/nominative/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/nominative/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
</xsl:if>
	            <xsl:if test="normalize-space(//typology/@case)='nominative' or normalize-space(//typology/@case)='split'">
<tr>
<td>
	               	<xsl:text>accusatif</xsl:text>
	               </td>
<td>
	               	<xsl:text>objet direct et autres emplois</xsl:text>
	               </td>
<xsl:for-each select="//np/accusative/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/accusative/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/accusative/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
</xsl:if>
	            <xsl:if test="normalize-space(//typology/@case)='ergative' and normalize-space(//np/@possCaseErg)!='ergative' or normalize-space(//typology/@case)='split' and normalize-space(//np/@possCaseErg)!='ergative'">
<tr>
<td>
	               	<xsl:text>ergatif</xsl:text>
	               </td>
<td>
	               	<xsl:text>sujet de verbes transitifs</xsl:text>
	               </td>
<xsl:for-each select="//np/ergative/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/ergative/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/ergative/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
</xsl:if>
	            <xsl:if test="normalize-space(//typology/@case)='ergative' and normalize-space(//np/@possCaseErg)='ergative' or normalize-space(//typology/@case)='split' and normalize-space(//np/@possCaseErg)='ergative'">
<tr>
<td>
	               	<xsl:text>ergatif</xsl:text>
	               </td>
<td>
	               	<xsl:text>sujet de verbes transitifs et possesseurs</xsl:text>
	               </td>
<xsl:for-each select="//np/ergative/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/ergative/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/ergative/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
</xsl:if>
	            <xsl:if test="normalize-space(//typology/@case)='ergative' and normalize-space(//np/@possCaseErg)!='absolutive' or normalize-space(//typology/@case)='split' and normalize-space(//np/@possCaseErg)!='absolutive'">
<tr>
<td>
	               	<xsl:text>absolutif</xsl:text>
	               </td>
<td>
	               	<xsl:text>sujet de verbes intransitifs et objet de verbes transitifs</xsl:text>
	               </td>
<xsl:for-each select="//np/absolutive/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/absolutive/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/absolutive/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
</xsl:if>
	            <xsl:if test="normalize-space(//typology/@case)='ergative' and normalize-space(//np/@possCaseErg)='absolutive' or normalize-space(//typology/@case)='split' and normalize-space(//np/@possCaseErg)='absolutive'">
<tr>
<td>
	               	<xsl:text>absolutif</xsl:text>
	               </td>
<td>
	               	<xsl:text>sujet de verbes intransitifs et objet de verbes transitifs et possesseurs</xsl:text>
	               </td>
<xsl:for-each select="//np/absolutive/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/absolutive/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/absolutive/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
</xsl:if>
	            <xsl:if test="normalize-space(//typology/@case)='nominative' or normalize-space(//typology/@case)='split' or normalize-space(//typology/@case)='ergative' and normalize-space(//np/@possCaseErg)='genitive'">
<tr>
<td>
	               	<xsl:text>génitif</xsl:text>
	               </td>
<td>
	               	<xsl:text>possesseurs</xsl:text>
	               </td>
<xsl:for-each select="//np/genitive/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/genitive/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/genitive/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
</xsl:if>
	            <xsl:if test="normalize-space(//typology/@caseExperiencer)='no'">
<tr>
<td>
	               	<xsl:text>datif</xsl:text>
	               </td>
<td>
	               	<xsl:text>objet indirect</xsl:text>
	               </td>
<xsl:for-each select="//np/dative/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/dative/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/dative/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
</xsl:if>
	            <xsl:if test="normalize-space(//typology/@caseExperiencer)!='no'">
<tr>
<td>
	               	<xsl:text>datif</xsl:text>
	               </td>
<td>
	               	<xsl:text>objet indirect et sujet-expérient</xsl:text>
	               </td>
<xsl:for-each select="//np/dative/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/dative/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/dative/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
</xsl:if>
	            <tr>
<td>
	                  <xsl:text>ablatif</xsl:text>
	               </td>
<td>
	               	<xsl:text>source ou origine</xsl:text>
	               </td>
<xsl:for-each select="//np/ablative/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/ablative/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/ablative/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
	               <tr>
<td>
	                     <xsl:text>instrumental</xsl:text>
	                  </td>
<td>
	                  	<xsl:text>instrument, moyen ou agent</xsl:text>
	                  </td>
<xsl:for-each select="//np/instrumental/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/instrumental/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/instrumental/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
	                  <tr>
<td>
	                        <xsl:text>locatif</xsl:text>
	                     </td>
<td>
	                        <xsl:text>lieu</xsl:text>
	                     </td>
<xsl:for-each select="//np/locative/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/locative/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/locative/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
	                     <tr>
<td>
	                           <xsl:text>vocatif</xsl:text>
	                        </td>
<td>
	                        	<xsl:text>adresse directe</xsl:text>
	                        </td>
<xsl:for-each select="//np/vocative/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/vocative/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/vocative/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
	                        <tr>
<td>
	                              <xsl:text>oblique</xsl:text>
	                           </td>
<td>
	                           	<xsl:text>relation grammaticale mineure générale</xsl:text>
	                           </td>
<xsl:for-each select="//np/oblique/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/oblique/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/oblique/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
	                           <tr>
<td>
	                                 <xsl:text>autre</xsl:text>
	                              </td>
<td>
	                              	<xsl:text>autres marqueurs spécifiques</xsl:text>
	                              </td>
<xsl:for-each select="//np/other/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/other/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/other/form[position() &gt; 1]">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
	         </table>
</example>
</xsl:if>	      
	   </section2>
	   
		<section2 id="sNPoss">
			<secTitle>Possesseurs</secTitle>
			<p>
<xsl:text>La possession peut être exprimée par un pronom, par un simple nom ou par un syntagme nominal complet (voir la section </xsl:text>
<sectionRef sec="sNPPoss" />
<xsl:text>).  Le cas et les caractéristiques d’accord sur les noms possedés ou sur des noms agissant comme possesseurs sont traités ici.</xsl:text>
<xsl:if test="normalize-space(//np/@possAbsolutive)='yes'">
<xsl:text>  L'affixe spécial qui se trouve sur les noms quand ils ne sont pas possedés ou pluralisés sera également traité.</xsl:text>
</xsl:if>
</p>
			<section3 id="sNPPossCase">
				<secTitle>Cas du possesseur</secTitle>
				<xsl:if test="normalize-space(//typology/@case)='none'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, comme cela a été discuté dans la section </xsl:text>
<sectionRef sec="sNPCase" />
<xsl:text>,  il n’ya pas de système casuel. Il n’y a donc ni marquage sur les noms, ni ensemble de pronoms distincts qui seraient utilisés pour les possesseurs.</xsl:text>
</p>
</xsl:if>
				<xsl:if test="normalize-space(//typology/@case)='nominative'">
<p>
<xsl:text>Dans le système normal de cas nominatif-accusatif suivi de </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, les possesseurs sont marqués avec le cas génitif.</xsl:text>
</p>
</xsl:if>
				<xsl:if test="normalize-space(//typology/@case)='split'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, les possesseurs sont marqués par le cas génitif, respectant le marquage nominatif-accusatif standard d’un système casuel mixte.  Dans les parties qui montrent une ergativité mixte, les possesseurs sont marqués par </xsl:text>
<xsl:choose>
						<xsl:when test="//np/@possCaseErg='ergative'">le cas ergatif, le même marquage que les sujets de verbes transitifs.</xsl:when>
						<xsl:when test="//np/@possCaseErg='absolutive'">le cas absolutif, le même marquage que les sujets de verbes intransitifs et que les objets de verbes transitifs.</xsl:when>
						<xsl:when test="//np/@possCaseErg='genitive'">le cas génitif également.</xsl:when>
					</xsl:choose>
<xsl:text></xsl:text>
</p>
</xsl:if>
				<xsl:if test="normalize-space(//typology/@case)='ergative'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> on utilise le système casuel ergatif-absolutif, et les possesseurs sont marqués par </xsl:text>
<xsl:choose>
						<xsl:when test="//np/@possCaseErg='ergative'">le cas ergatif, le même marquage que les sujets de verbes transitifs.</xsl:when>
						<xsl:when test="//np/@possCaseErg='absolutive'">le cas absolutif, le même marquage que les sujets de verbes intransitifs et que les objets de verbes transitifs.</xsl:when>
						<xsl:when test="//np/@possCaseErg='genitive'">le cas génitif, un marquage distinct pour les possesseurs.</xsl:when>
					</xsl:choose>
<xsl:text></xsl:text>
</p>
</xsl:if>
			   <xsl:if test="normalize-space(//typology/@case)!='none'">
<p contentType="ctPracticalIntro">
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, </xsl:text>
<xsl:choose>
			      	<xsl:when test="//np/@possNounCaseChange='no'">la fonction grammaticale du nom moyau par rapport au verbe, et non la présence d’un possesseur détermine le cas du nom noyau.</xsl:when>
			      	<xsl:when test="//np/@possNounCaseChange='yes'">le cas du nom noyau correspond au cas du possesseur lorsqu’un possesseur est présent.</xsl:when>
			      </xsl:choose>
<xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@possNounCaseChange)='yes'">
<xsl:text> S’il y a un modificateur adjectival dans le syntagme nominal, le cas du nom noyau change </xsl:text>
			      <xsl:choose>
			      	<xsl:when test="//np/@adjpCaseChange='no'">uniquement quand un possesseur est présent ; cependant, l’adjectif peut/doit aussi porter une marque de ce même cas.</xsl:when>
			      	<xsl:when test="//np/@adjpCaseChange='yes'">pour correspondre au cas normal pour le possesseur même si seul un modificateur adjectival est présent.</xsl:when>
			      </xsl:choose>
			      </xsl:if>
<xsl:if test="normalize-space(//np/@adjpCaseAffix)!='no' and normalize-space(//np/@adjpCaseChange)='yes'">
			      	<xsl:text> Lorsque le </xsl:text>
			      	<xsl:choose>
			      		<xsl:when test="//np/@adjpCaseAffix='yesSuffix'">suffixe</xsl:when>
			      		<xsl:when test="//np/@adjpCaseAffix='yesPrefix'">préfixe</xsl:when>
			      	</xsl:choose>
			      	<xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@possCaseErg)='genitive' or normalize-space(//typology/@case)='nominative'">
			      		<xsl:text>génitif </xsl:text>
			            </xsl:if>
			            <xsl:if test="normalize-space(//typology/@case)='split' and normalize-space(//np/@possCaseErg)!='genitive'">
			               <xsl:text>ou </xsl:text>
			            </xsl:if>
			            <xsl:text></xsl:text>
			            <xsl:if test="normalize-space(//np/@possCaseErg)='ergative' and normalize-space(//typology/@case)='ergative' or normalize-space(//np/@possCaseErg)='ergative' and normalize-space(//typology/@case)='split'">
			               <xsl:text>ergatif </xsl:text>
			            </xsl:if>
			            <xsl:text></xsl:text>
			            <xsl:if test="normalize-space(//np/@possCaseErg)='absolutive' and normalize-space(//typology/@case)='ergative' or normalize-space(//np/@possCaseErg)='absolutive' and normalize-space(//typology/@case)='split'">
			               <xsl:text>absolutif </xsl:text>
			            </xsl:if>
			      	<xsl:text>explicite est présent sur le nom noyau, cela indique qu’un modificateur adjectival ou/et un possesseur doit être présent dans le syntagme.  Si l’adjectif porte ce </xsl:text>
			      	<xsl:choose>
			      		<xsl:when test="//np/@adjpCaseAffix='yesSuffix'">suffixe</xsl:when>
			      		<xsl:when test="//np/@adjpCaseAffix='yesPrefix'">préfixe</xsl:when>
			      	</xsl:choose>
			      	<xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@possCaseErg)='genitive' or normalize-space(//typology/@case)='nominative'">
			      		<xsl:text> génitif </xsl:text>
			            </xsl:if>
			            <xsl:if test="normalize-space(//typology/@case)='split' and normalize-space(//np/@possCaseErg)!='genitive'">
			               <xsl:text>ou</xsl:text>
			            </xsl:if>
			            <xsl:text></xsl:text>
			            <xsl:if test="normalize-space(//np/@possCaseErg)='ergative' and normalize-space(//typology/@case)='ergative' or normalize-space(//np/@possCaseErg)='ergative' and normalize-space(//typology/@case)='split'">
			               <xsl:text> ergatif </xsl:text>
			            </xsl:if>
			            <xsl:text></xsl:text>
			            <xsl:if test="normalize-space(//np/@possCaseErg)='absolutive' and normalize-space(//typology/@case)='ergative' or normalize-space(//np/@possCaseErg)='absolutive' and normalize-space(//typology/@case)='split'">
			               <xsl:text> absolutif </xsl:text>
			            </xsl:if>
			            <xsl:text></xsl:text>
			      	<xsl:text>, un autre adjectif et/ou un possesseur doit nécessairement être présent.</xsl:text>
			         </xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>
				<xsl:if test="normalize-space(//typology/@case)!='none'">
<p contentType="ctComparativeIntro">
<xsl:text>Dans certaines langues, le nom noyau et ses modificateurs, dans un syntagme nominal possessive, correspond au cas du possesseur.  Dans d’autres langues, le possesseur est marqué par un certain cas, par exemple le génitif, tandis que le nom noyau est marqué par le cas exigé parsa position par rapport au verbe, que ce soit le nominatif ou l’accusatif, l’ergatif ou l’absolutif, selon le système casuel.</xsl:text>
</p>
</xsl:if>
			   <xsl:if test="normalize-space(//typology/@case)!='none'">
<p contentType="ctComparativeIntro">
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> </xsl:text>
<xsl:choose>
						<xsl:when test="//np/@possNounCaseChange='no'">la fonction grammaticale du nom noyau par rapport au verbe détermine son cas, et non la présence d’un possesseur.</xsl:when>
						<xsl:when test="//np/@possNounCaseChange='yes'">le cas du nom noyau correspond au cas du possesseur, s’il y en a.</xsl:when>
					</xsl:choose>
<xsl:text></xsl:text>
</p>
</xsl:if>
				<xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@possNounCaseChange)='yes'">
<p contentType="ctComparativeIntro">
<xsl:text>Dans les langues comme le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, dans lesquelles le cas du nom noyau  change quand un posssesseur est présent,  le cas des adjectifs change dans ces cas pour lui correspondre. Dans certaines langues de ce type, le cas du nom noyau change quand un modificateur adjectival seulement est présent, même s’il n’y a pas de possesseur.</xsl:text>
</p>
</xsl:if>
			   <xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@possNounCaseChange)='yes'">
<p contentType="ctComparativeIntro">
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, le cas du nom noyau </xsl:text>
<xsl:choose>
						<xsl:when test="//np/@adjpCaseChange='no'">ne change que quand un possesseur est présent, bien qu’un adjectif interposé peut/doit porter le même cas dans cet type de syntagme.</xsl:when>
						<xsl:when test="//np/@adjpCaseChange='yes'">change pour correspondre au cas normal d’un possesseur même si un modificateur adjectival seulement est présent.</xsl:when>
					</xsl:choose>
<xsl:text></xsl:text>
</p>
</xsl:if>
			   <xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@adjpCaseChange)='yes'">
<p contentType="ctComparativeIntro">
<xsl:text>De plus, dans certaines langues de ce dernier type, un affixe explicite marque le génitif (ou le cas normal pour le possesseur) sur le nom noyau pour indiquer qu’il doit y avoir soit un adjectif ou un possesseur dans ce syntagme nominal. Dans cette situation, l’adjectif et/ou le possesseur sera aussi au génitif (ou au cas normal pour le possesseur) ; toutefois, le marquage casuel ne sera pas explicite sur le modificateur se trouvant le plus haut dans le syntagme nominal.</xsl:text>
</p>
</xsl:if>
			   <xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@adjpCaseChange)='yes'">
<p contentType="ctComparativeIntro">
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> le cas </xsl:text>
<xsl:choose>
						<xsl:when test="//np/@adjpCaseAffix='no'">ne sont pas marqué par avec un affixe.</xsl:when>
						<xsl:when test="//np/@adjpCaseAffix='yesPrefix'">sont marqués de cette façon particulière.  </xsl:when>
						<xsl:when test="//np/@adjpCaseAffix='yesSuffix'">est  traité de cette façon particulière.  </xsl:when>
					</xsl:choose>
<xsl:if test="normalize-space(//np/@adjpCaseAffix)!='no' and normalize-space(//np/@adjpCaseChange)='yes'">
						<xsl:text>Lorsque le  </xsl:text>
						<xsl:choose>
							<xsl:when test="//np/@adjpCaseAffix='yesSuffix'">suffixe</xsl:when>
							<xsl:when test="//np/@adjpCaseAffix='yesPrefix'">préfixe</xsl:when>
						</xsl:choose>
						<xsl:text> explicite </xsl:text>
						<xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@possCaseErg)='genitive' or normalize-space(//typology/@case)='nominative'">
							<xsl:text>génitif </xsl:text>
						</xsl:if>
						<xsl:if test="normalize-space(//typology/@case)='split' and normalize-space(//np/@possCaseErg)!='genitive'">
							<xsl:text>ou </xsl:text>
						</xsl:if>
						<xsl:text></xsl:text>
						<xsl:if test="normalize-space(//np/@possCaseErg)='ergative' and normalize-space(//typology/@case)='ergative' or normalize-space(//np/@possCaseErg)='ergative' and normalize-space(//typology/@case)='split'">
							<xsl:text>ergatif </xsl:text>
						</xsl:if>
						<xsl:text></xsl:text>
						<xsl:if test="normalize-space(//np/@possCaseErg)='absolutive' and normalize-space(//typology/@case)='ergative' or normalize-space(//np/@possCaseErg)='absolutive' and normalize-space(//typology/@case)='split'">
							<xsl:text>absolutif </xsl:text>
						</xsl:if>
						<xsl:text></xsl:text>
						<xsl:text> est présent sur le nom noyau, cela indique qu’un modificateur adjectival ou/et un possesseur est nécessairement présent dans le syntagme.  Si l’adjectif set marqué par ce </xsl:text>
						<xsl:choose>
							<xsl:when test="//np/@adjpCaseAffix='yesSuffix'">suffixe </xsl:when>
							<xsl:when test="//np/@adjpCaseAffix='yesPrefix'">préfixe </xsl:when>
						</xsl:choose>
						<xsl:if test="normalize-space(//typology/@case)!='none' and normalize-space(//np/@possCaseErg)='genitive' or normalize-space(//typology/@case)='nominative'">
							<xsl:text>génitif</xsl:text>
						</xsl:if>
						<xsl:if test="normalize-space(//typology/@case)='split' and normalize-space(//np/@possCaseErg)!='genitive'">
							<xsl:text> ou </xsl:text>
						</xsl:if>
						<xsl:text></xsl:text>
						<xsl:if test="normalize-space(//np/@possCaseErg)='ergative' and normalize-space(//typology/@case)='ergative' or normalize-space(//np/@possCaseErg)='ergative' and normalize-space(//typology/@case)='split'">
							<xsl:text>ergatif</xsl:text>
						</xsl:if>
						<xsl:text></xsl:text>
						<xsl:if test="normalize-space(//np/@possCaseErg)='absolutive' and normalize-space(//typology/@case)='ergative' or normalize-space(//np/@possCaseErg)='absolutive' and normalize-space(//typology/@case)='split'">
							<xsl:text>absolutif</xsl:text>
						</xsl:if>
						<xsl:text></xsl:text>
						<xsl:text>, un autre adjectif et/ou un possesseur doit nécessairment être présent.</xsl:text>
					</xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>
			</section3>
			
			<section3 id="sNPPossAgreement">
				<secTitle>Accord du possesseur</secTitle>
				<p>
<xsl:text>L’accord du possesseur peut se faire sous deux formes de base :</xsl:text>
</p>
				<ul>
					<li>
						<xsl:text>Un affixe qui se trouve sur des noms aliénables possedés pour indiquer qu'ils sont possedés et, par conséquent, qu’un un possesseur doit se trouver dans le syntagme nominal.  •	Les noms inaliénables possedés ne demandent pas de marquage, mais doivent toujours avoir un possesseur.  •	Ceux-ci incluent les termes de parenté ou les parties du corps, mais ne sont pas limités à ces termes.</xsl:text>
					</li>
					<li>
						<xsl:text>Un affixe qui s’accorde avec le possesseur (ou éventuellement exprime le possesseur par lui-même). </xsl:text>
					</li>
				</ul>
				<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text></xsl:text>
<xsl:choose>
						<xsl:when test="//np/@possAlienable='no'"> il n’y a pas de distinction</xsl:when>
						<xsl:when test="//np/@possAlienable='yes'"> il y a une distinction</xsl:when>
					</xsl:choose>
<xsl:text> entre les noms possedés aliénables et inaliénables.  </xsl:text>
<xsl:if test="normalize-space(//np/@possAlienable)='yes'">
						<xsl:text>L’affixe qui marque les noms possedés aliénables quand ils ont un possesseur est le suivant :</xsl:text>
					</xsl:if>
<xsl:text></xsl:text>
</p>
				<xsl:if test="normalize-space(//np/@possAlienable)='yes'">
<example num="xN.NPoss.NPPossAgreement.10">
<table border="1">
					<tr>
						<th>Affixe possessif</th>
						<th>Glose</th>
					</tr>
						<tr>
<xsl:for-each select="//np/possAlienableAffixExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//np/possAlienableAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/possAlienableAffixExample/form[position() &gt; 1]">
<tr>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
					</table>
</example>
</xsl:if>
				<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> les noms </xsl:text>
<xsl:choose>
						<xsl:when test="//np/@possAgr='no'">ne sont pas</xsl:when>
						<xsl:when test="//np/@possAgr='yes'">sont</xsl:when>
					</xsl:choose>
<xsl:text> marqués par un affixe ou un clitique pronominal qui soit s’accorde avec le possesseur soit exprime le possesseur en lui-même.  </xsl:text>
<xsl:if test="normalize-space(//np/@possAgr)='yes'">
						<xsl:text>Pour les pronoms personnels dépendants utilisés pour des possesseurs, voir la section </xsl:text>
<sectionRef sec="sPronPersonal" />
<xsl:text>. </xsl:text>
					</xsl:if>
<xsl:text></xsl:text>
</p>
				<p>
<xsl:text>Voir la section </xsl:text>
<sectionRef sec="sNPPoss" />
<xsl:text> pour des exemples de noms possédés.</xsl:text>
</p>
			</section3>
		   <xsl:if test="normalize-space(//np/@possAbsolutive)='yes'">
<section3 id="sNPossAbsolutive">
		   	<secTitle>Marquage absolutif</secTitle>
		   	<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, un affixe apparaît sur les noms quand ils ne sont ni possédés ni pluralisés, et éventuellement quand il n’y a pas de modificateur. On parle de marqueur absolutif, bien que cet affixe n’ait pas de relation avec le marqueur deu cas absolutif utilisé dans des langues ayant un système casuel ergatif-absolutif. 
		   	</xsl:text>
</p>
		   	<p>
<xsl:text>Les formes de l’affixe utilisé en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont présentées dans le tableau suivant :</xsl:text>
</p>
		      <xsl:if test="normalize-space(//np/@possAbsolutive)='yes'">
<example num="xN.NPoss.NPossAbsolutive.8">
<table border="1">
		            <tr>
		               <th>Affixe absolutif</th>
		               <th>Glose</th>
		            </tr>
		            <tr>
<xsl:for-each select="//np/possAbsolutiveAffixExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//np/possAbsolutiveAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/possAbsolutiveAffixExample/form[position() &gt; 1]">
<tr>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
		         </table>
</example>
</xsl:if>
		      
		   </section3>
</xsl:if>
		   
		</section2>
		<section2 id="sNPCompounds">
			<secTitle>Noms composés</secTitle>
			<p contentType="ctComparativeIntro">
<xsl:text>Beaucoup de langues sont comme l’anglais, dans le fait qu’elles ont des modificateurs nominaux.  Il peut sembler que tous les noms peuvent être utilisés comme adjectifs, mais en y regardant de plus près, il est clair que les varais adjectifs viennent avant le modificateur nominal en anglais, comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>large, round [syrup bottle]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (une grande bouteille à syrop ronde)</xsl:text>
</gloss>
<xsl:text> et non  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>*round, syrup large bottle</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (ronde, syrop grande bouteille)</xsl:text>
</gloss>
<xsl:text>.  Les modificateurs nominaux seront donc traités comme des noms composés qui s’écrivent comme mots indépendents.</xsl:text>
</p>
			<p contentType="ctComparativeIntro">
<xsl:text>Dans les exemples en anglais ci-dessus, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>bottle</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (bouteille)</xsl:text>
</gloss>
<xsl:text>, et non </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>syrup</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (sirop)</xsl:text>
</gloss>
<xsl:text>, est le nom noyau, parce que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>syrup</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (sirop)</xsl:text>
</gloss>
<xsl:text> restreint le type de </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>bottle</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (bouteille)</xsl:text>
</gloss>
<xsl:text>, et non l’inverse.  Dans tous les noms composés et les constructions à modificateur nominal en anglais, le noyau est le nom le plus à droite dans la série.</xsl:text>
</p>
			<p contentType="ctComparativeIntro">
<xsl:text>Par contraste, en français de tels exemples sont beaucoup plus rares, en ce sens que le modificateur est introduit par de.  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Kitchen table</langData>
<xsl:text> peut être traduit </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>table de cuisine</langData>
<xsl:text> s’il s’agit d’un type de meuble en général, ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>la table de la cuisine</langData>
<xsl:text> si c’est une table en particulier, celle qui se trouve dans la cuisine et non dans le salon. </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Table cuisine</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>cuisine table</langData>
<xsl:text> ne seraient pas permis. Certains noms peuvent fonctionner comme adjectif dans des expressions généralement figées - par exemple, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>panneau indicateur</langData>
<xsl:text> mais </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>indicateur de vitesse</langData>
<xsl:text>.</xsl:text>
</p>
			<p>
<xsl:text>Les noms composés incluent ceux qui sont combinés en un seul mot tout comme ceux qui sont écrits comme deux ou plus mots indépendants.  Voici des exemples pour quelques catégories typiques de noms composés.</xsl:text>
</p>
		   <example num="xN.NPCompounds.12">
<table border="1">
		      	<caption>
<xsl:text>Noms composés pour les parties du corps </xsl:text>
</caption>
		         <tr>
		         	<th>Nom composé</th>
		         	<th>Glose pour chaque nom</th>
		         	<th>Glose pour chaque nom composé</th>
		         </tr>
		         <tr>
<xsl:for-each select="//np/compBodyPartExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//np/compBodyPartExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/compBodyPartExample/form[position() &gt; 1]">
<tr>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
		      </table>
</example>
		   <example num="xN.NPCompounds.14">
<table border="1">
		      	<caption>
<xsl:text>Noms composés pour les termes de parenté</xsl:text>
</caption>
		         <tr>
		         	<th>Nom composé</th>
		         	<th>Glose pour chaque nom</th>
		         	<th>Glose pour chaque nom composé</th>
		         </tr>
		         <tr>
<xsl:for-each select="//np/compKinshipExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//np/compKinshipExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/compKinshipExample/form[position() &gt; 1]">
<tr>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
		      </table>
</example>
		   <example num="xN.NPCompounds.16">
<table border="1">
		      	<caption>
<xsl:text>Noms composés pour la nourriture</xsl:text>
</caption>
		         <tr>
		         	<th>Nom composé</th>
		         	<th>Glose pour chaque nom</th>
		         	<th>Glose pour chaque nom composé</th>
		         </tr>
		         <tr>
<xsl:for-each select="//np/compFoodExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//np/compFoodExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/compFoodExample/form[position() &gt; 1]">
<tr>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
		      </table>
</example>
		   <example num="xN.NPCompounds.18">
<table border="1">
		      	<caption>
<xsl:text>Noms composés qui décrivent le matériel dans lequel le ‘nom’ est fait</xsl:text>
</caption>
		         <tr>
		         	<th>Nom composé</th>
		         	<th>Glose pour chaque nom</th>
		         	<th>Glose pour chaque nom composé</th>
		         </tr>
		         <tr>
<xsl:for-each select="//np/compMaterialExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//np/compMaterialExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/compMaterialExample/form[position() &gt; 1]">
<tr>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
		      </table>
</example>
		   <example num="xN.NPCompounds.20">
<table border="1">
		      	<caption>
<xsl:text>Autres noms composés</xsl:text>
</caption>
		         <tr>
		         	<th>Nom composé</th>
		         	<th>Glose pour chaque nom</th>
		         	<th>Glose pour chaque nom composé</th>
		         </tr>
		         <tr>
<xsl:for-each select="//np/compExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//np/compExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/compExample/form[position() &gt; 1]">
<tr>
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
		      </table>
</example>
		   
		   
			<xsl:if test="normalize-space(//np/@comp)='no'">
<p>
<xsl:text>Comme le montrent ces exemples, il n’y a pas de noms composés ou de modificateurs de nom qui sont écrits comme mots indépendants en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  Ils sont tous écrits comme un mot unique avec le nom noyau.  </xsl:text>
<xsl:choose>
			   	<xsl:when test="//np/@compHeadMorpheme='left'">Le radical nominal le plus à gauche est </xsl:when>
			   	<xsl:when test="//np/@compHeadMorpheme='right'">Le radical nominale le plus à droite est </xsl:when>
			   	<xsl:when test="//np/@compHeadMorpheme='either'">Le radical nominal à gauche ou celle à droite peut être </xsl:when>
			   </xsl:choose>
<xsl:text>le nom noyau dans ces composés écrits comme des mots uniques.</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/@comp)='yes'">
<p>
<xsl:text>Comme le montrent ces exemples, en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> il y a des noms composés ou de modificateurs de nom qui sont écrits en plusiers mots.  </xsl:text>
<xsl:choose>
					<xsl:when test="//np/@compHead='left'">Le radical nominal le plus à gauche est </xsl:when>
					<xsl:when test="//np/@compHead='right'">Le radical nominal le plus à droite est </xsl:when>
					<xsl:when test="//np/@compHead='either'">Le radical nominal à gauche ou celui à droite peut être </xsl:when>
				</xsl:choose>
<xsl:text>le nom noyau dans ces composés écrits en plusieurs mots.  Dans les noms composés qui sont écrits comme mot unique avec le nom noyau,  </xsl:text>
<xsl:choose>
			   	<xsl:when test="//np/@compHeadMorpheme='left'">le radical nominal le plus à gauche est </xsl:when>
			   	<xsl:when test="//np/@compHeadMorpheme='right'">le radical nominal le plus à droite est </xsl:when>
			   	<xsl:when test="//np/@compHeadMorpheme='either'">le radical nominal à gauche ou celui à droite peut être </xsl:when>
			   </xsl:choose>
<xsl:text>le nom noyau.</xsl:text>
</p>
</xsl:if>
		</section2>

	</section1>

	

	
		
		
		
		
		
		
		
		
		
		
		
		
	
   
      
   	
   	
   
	
		
		
		
	
	
      
   
   
      
   
   
      
   
 
	
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
   
   
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
   
      
      
      
      
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
      
         
         
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
         
         
         
         
       
         
         
         
         
         
      
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
  
      
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
	

	
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
		 
		
	
	
		
		
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
	
	
		
	
	
	
	
		
		
		
	
	
	
		
		
		
	
		
		
	
	
		
		
		

		
		
		
	
	
		
		
		
	
	
		
	
	
		
	
   
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
   
   
      
   
</xsl:template>
</xsl:stylesheet>
