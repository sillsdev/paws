<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="np">
	<section1 id="sNP">
		<secTitle>Syntagmes nominaux</secTitle>
		<p>
<xsl:text>Les syntagmes nominaux peuvent être très complexes.  Cette section se concentre sur l’ordre des modificateurs écrits comme mots indépendants admis dans les syntagmes nominaux dont le noyau lexical est un nom commun.  La modification par les articles, les démonstratifs, les possesseurs, les quantifieurs et les mots de degré, les syntagmes adjectivaux et les syntagmes </xsl:text>
<xsl:choose>
				<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
				<xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
				<xsl:when test="//pp/@pPos='both'">prépositionnels et/ou postpositionnels</xsl:when>
				<xsl:when test="//pp/@pPos='unknown'">prépositionnels et/ou postpositionnels</xsl:when>
			</xsl:choose>
<xsl:text> tout ceci est considéré ici.  Les participes et les gérondifs sont traités à la fin de cette section, mais il faut voir la section </xsl:text>
<sectionRef sec="sNPCompounds" />
<xsl:text> pour les noms composés, qu’ils sont écrits comme mots séparés ou non.  Les syntagmes nominaux dont le noyau est un nom propre en tête sont discutées dans la section </xsl:text>
<sectionRef sec="sProp" />
<xsl:text> et ceux dont le noyau est un pronom, quel que soit le type, ou un quantifieur seront traitées dans les sections </xsl:text>
<sectionRef sec="sPronNP" />
<xsl:text> et </xsl:text>
<sectionRef sec="sQPPartitive" />
<xsl:text>.  Les propositions relatives, qui se placent normalement à la fin d’un syntagme nominal, sont traités dans la section </xsl:text>
<sectionRef sec="sRelCl" />
<xsl:text>.</xsl:text>
</p>
		<p>
<xsl:text>Nous commencerons avec les modificateurs qui ont la portée la plus large et nous nous rapprocherons ensuite du nom.</xsl:text>
</p>
		<section2 id="sNPDegree">
			<secTitle>Quantifieurs à large portée et mots de degré</secTitle>
			<p contentType="ctPracticalIntro">
<xsl:text>Les quantifieurs à large portée et les mots de degré qui modifient le syntagme nominal dans son esemble ont été discutés dans la section </xsl:text>
<sectionRef sec="sQPAll" />
<xsl:text>. </xsl:text>
</p>
		   <p contentType="ctComparativeIntro">
<xsl:text>Les quantifieurs à large portée et les mots de degré qui modifient le syntagme nominal dans son esemble, tels que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>tous</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>presque</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>juste</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>seulement</langData>
<xsl:text>, ont été discutés dans la section </xsl:text>
<sectionRef sec="sQPAll" />
<xsl:text>. </xsl:text>
</p>
		   
		   <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@npDegreeClassifier)='yes'">
<p>
<xsl:text>Le tableau suivant reprend la façon dont les quantifieurs à large portée et les mots de degré qui modifient le syntagme nominal dans son esemble sont exprimés en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  Les formes présentées dans le tableau sont les radicaux; chacun peut apparaître avec le classificateur approprié.</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' or normalize-space(//qp/@npDegreeClassifier)!='yes'">
<p>
<xsl:text>Le tableau suivant reprend la façon dont les quantifieurs à large portée et les mots de degré qui modifient le syntagme nominal dans son esemble sont exprimés en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>:</xsl:text>
</p>
</xsl:if>
		   <example num="xNP.NPDegree.12">
<table border="1">
		         <tr>
		         	<th>Morphèmes</th>
		            <th>Glose</th>
		         </tr>
		         <tr>
<xsl:for-each select="//qp/all/form[1]">
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
<xsl:otherwise>tous</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/all/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/all/form[position() &gt; 1]">
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
<xsl:otherwise>tous</xsl:otherwise>
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
		         <tr>
<xsl:for-each select="//qp/almost/form[1]">
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
<xsl:otherwise>presque</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/almost/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/almost/form[position() &gt; 1]">
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
<xsl:otherwise>presque</xsl:otherwise>
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
		         <tr>
<xsl:for-each select="//qp/only/form[1]">
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
<xsl:otherwise>seulement ou juste</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/only/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/only/form[position() &gt; 1]">
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
<xsl:otherwise>seulement ou juste</xsl:otherwise>
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
			<xsl:if test="normalize-space(//qp/@npDegree)='no'">
<p>
<xsl:text>Ces éléments ne sont pas exprimés en tant que mots indépendants qui modifient le syntagme nominal dans son esemble. Au lieu de cela ils se rattachent chacun à un autre mot dans le syntagme nominal.</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@npDegree)='some'">
<p>
<xsl:text>Certains de ces éléments ne sont pas exprimés en tant que mots indépendants qui modifient le syntagme nominal dans son esemble. Au lieu de cela ils se rattachent à un autre mot dans le syntagme nominal.</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de formes clitiques inclues dans les syntagmes nominaux complets :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes'">
<example num="xNP.NPDegree.20">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/npDegreeCliticExample" />
<xsl:with-param name="sExNumber">xNP.NPDegree.20</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' or normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de formes d’affixes inclues dans des syntagmes nominaux complets :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' or normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes'">
<example num="xNP.NPDegree.24">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/npDegreeAffixExample" />
<xsl:with-param name="sExNumber">xNP.NPDegree.24</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de formes qui se rattachent comme le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> l’admet, inclus dans les syntagmes nominaux compets :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes'">
<example num="xNP.NPDegree.28">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/npDegreeOtherExample" />
<xsl:with-param name="sExNumber">xNP.NPDegree.28</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>     
			
		   <xsl:if test="normalize-space(//qp/@npDegree)='yes' or normalize-space(//qp/@npDegree)='some'">
<p>
<xsl:text>Les quantifieurs à large portée et les mots de degré qui sont des mots indépendants se trouvent </xsl:text>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='yes' and normalize-space(//qp/npDegreePosAfter/@checked)='no' and normalize-space(//qp/npDegreePosBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='no' and normalize-space(//qp/npDegreePosAfter/@checked)='yes' and normalize-space(//qp/npDegreePosBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='no' and normalize-space(//qp/npDegreePosAfter/@checked)='no' and normalize-space(//qp/npDegreePosBoth/@checked)='yes'">
<xsl:text>des deux côtés du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='yes' and normalize-space(//qp/npDegreePosAfter/@checked)='yes' and normalize-space(//qp/npDegreePosBoth/@checked)='no'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='yes' and normalize-space(//qp/npDegreePosAfter/@checked)='no' and normalize-space(//qp/npDegreePosBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='no' and normalize-space(//qp/npDegreePosAfter/@checked)='yes' and normalize-space(//qp/npDegreePosBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='yes' and normalize-space(//qp/npDegreePosAfter/@checked)='yes' and normalize-space(//qp/npDegreePosBoth/@checked)='yes'">
<xsl:text>d’un côté ou l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosOther/@checked)='no'">
<xsl:text> reste du syntagme nominal.  </xsl:text>
		      </xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='no' and normalize-space(//qp/npDegreePosAfter/@checked)='no' and normalize-space(//qp/npDegreePosBoth/@checked)='no' and normalize-space(//qp/NPDegreePosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//qp/npDegreePosOther" />
<xsl:text>.  </xsl:text>
		      </xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='yes' and normalize-space(//qp/npDegreePosOther/@checked)='yes' or normalize-space(//qp/npDegreePosAfter/@checked)='yes' and normalize-space(//qp/npDegreePosOther/@checked)='yes' or normalize-space(//qp/npDegreePosBoth/@checked)='yes' and normalize-space(//qp/npDegreePosOther/@checked)='yes'">
<xsl:text> reste du syntagme nominal et peut aussi se trouver ___</xsl:text>
<xsl:value-of select="//qp/npDegreePosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
</p>
</xsl:if>
		   
		   <xsl:if test="normalize-space(//qp/@npDegree)='yes' or normalize-space(//qp/@npDegree)='some'">
<p>
<xsl:text>Voici quelques exemples de formes de mot indépendant inclus dans les syntagmes nominaux complets :</xsl:text>
</p>
</xsl:if>                        
		   <example num="xNP.NPDegree.34">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/example" />
<xsl:with-param name="sExNumber">xNP.NPDegree.34</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>         
			
			<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//qp/@npDegree)='yes' or normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//qp/@npDegree)='some'">
<p>
<xsl:text>Dans ces syntagmes nominaux avec les mots qui signifiant « tous », « presque », « seulement » ou « juste » </xsl:text>
<xsl:choose>
<xsl:when test="//np/@classifierPresent='yes'"> un classificateur est nécessaire.</xsl:when>
					<xsl:when test="//np/@classifierPresent='some'"> un classificateur est présent dans certains syntagmes nominaux de ce type, mais n’est pas obligatoire dans chacun.</xsl:when>
					<xsl:when test="//np/@classifierPresent='no'"> un classificateur n’est jamais utilisé.</xsl:when>
</xsl:choose>
<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//qp/@npDegree)='yes' and normalize-space(//np/@classifierPresent)='yes' or normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//qp/@npDegree)='some' and normalize-space(//np/@classifierPresent)='yes' or normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//qp/@npDegree)='yes' and normalize-space(//np/@classifierPresent)='some' or normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//qp/@npDegree)='some' and normalize-space(//np/@classifierPresent)='some'">
<xsl:text> Le classificateur </xsl:text>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosOther/@checked)='no'">
<xsl:text>se trouve avant le quantifieur à large portée ou le mot de degré et le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes'">
<xsl:text>peut se trouver avant le quantifieur à large portée ou le mot de degré et le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes'">
<xsl:text> Il se trouve aussi après le nom et le quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosOther/@checked)='no'">
<xsl:text>se trouve après le nom et le quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le nom et le quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes'">
<xsl:text> Il se trouve aussi après le quantifieur à large portée ou le mot de degré mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosOther/@checked)='no'">
<xsl:text>se trouve après le quantifieur à large portée ou le mot de degré mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le quantifieur à large portée ou le mot de degré mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes'">
<xsl:text> Il se trouve aussi après le nom mais avant le quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosOther/@checked)='no'">
<xsl:text>se trouve après le nom mais avant le quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le nom mais avant le quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes'">
<xsl:text> Il peut se rattacher comme préfixe au quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosOther/@checked)='no'">
<xsl:text>se rattache comme préfixe au quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes'">
<xsl:text>peut se rattacher comme préfixe au quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes'">
<xsl:text> Il peut se rattacher aussi comme suffixe au quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='no'">
<xsl:text>se rattache comme suffixe au quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes'">
<xsl:text>peut se rattacher comme suffixe au quantifieur à large portée ou le mot de degré.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='yes' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes'">
<xsl:text> Il peut aussi se trouver ___</xsl:text>
<xsl:value-of select="//np/classifierSpecificPosOther" />
<xsl:text>. </xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificPosOther/@checked)='yes'">
<xsl:text>se trouve ___</xsl:text>
<xsl:value-of select="//np/classifierSpecificPosOther" />
<xsl:text>. </xsl:text>
</xsl:if>	
				</xsl:if>
</p>
</xsl:if>
			
			
			<p>
<xsl:text>La négation d’un syntagme nominal se trouve aussi dans la position du quantifieur à large portée. Voir section </xsl:text>
<sectionRef sec="sNegNominal" />
<xsl:text> pour des exemples.</xsl:text>
</p>
		   
		</section2>
		<section2 id="sNPArtDem">
			<secTitle>
<xsl:choose>
				<xsl:when test="//np/@artAndDem='no'">Articles et Démonstratifs</xsl:when>
			   <xsl:when test="//np/@artAndDem='article'">Articles</xsl:when>
				<xsl:when test="//np/@artAndDem='demonstrative'">Démonstratifs</xsl:when>
				<xsl:when test="//np/@artAndDem='both'">Articles et Démonstratifs</xsl:when>
			</xsl:choose>
</secTitle>
			<xsl:if test="normalize-space(//np/@artAndDem)='both'">
<p contentType="ctComparativeIntro">
<xsl:text>En français les articles et les démonstratifs n’apparaissent pas ensemble dans le même syntagme nominal, mais tous les deux se placent avant le nom.  Certaines langues admettent que les deux apparaissent dans le même syntagme et ils peuvent se trouver dans des positions différentes par rapport au nom.  Par conséquent, ils ont besoin de catégories syntactiques distinctes.</xsl:text>
</p>
</xsl:if>
			<p>
<xsl:text>Comme nous l’avons vu dans la section </xsl:text>
<sectionRef sec="sAdjArtDem" />
<xsl:text>, </xsl:text>
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
					<xsl:when test="//np/@artAndDem='no'"> n’a ni articles ni démonstratifs réalisés comme mots indépendants.</xsl:when>
					<xsl:when test="//np/@artAndDem='article'"> n’a que des articles qui sont réalisés comme mots indépendants, mais pas de démonstratifs.</xsl:when>
					<xsl:when test="//np/@artAndDem='demonstrative'"> a seulement des démonstratifs qui sont réalisés comme mots indépendants, mais pas d’articles.</xsl:when>
					<xsl:when test="//np/@artAndDem='both'"> a à la fois des articles et des démonstratifs qui sont réalisés comme mots indépendants.</xsl:when>
				</xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//np/@artAndDem)!='no'">
					<xsl:text> Les </xsl:text>
					<xsl:choose>
						<xsl:when test="//np/@artAndDem='article'">articles</xsl:when>
						<xsl:when test="//np/@artAndDem='demonstrative'">démonstratifs</xsl:when>
						<xsl:when test="//np/@artAndDem='both'">articles et démonstratifs</xsl:when>
					</xsl:choose>
					<xsl:if test="normalize-space(//np/@artAndDem)!='no' and normalize-space(//np/@artCase)='no'">
						<xsl:text> ne</xsl:text>
					</xsl:if>
					<xsl:text> sont </xsl:text>
					<xsl:if test="normalize-space(//np/@artAndDem)!='no' and normalize-space(//np/@artCase)='no'">
						<xsl:text>pas </xsl:text>
					</xsl:if>
					<xsl:text>marqués pour le cas.</xsl:text>
				</xsl:if>
<xsl:text></xsl:text>
</p>
			<xsl:if test="normalize-space(//np/@artAndDem)='article'">
<p>
<xsl:text>L’article se trouve </xsl:text>
<xsl:if test="normalize-space(//np/artOnlyBefore/@checked)='yes' and normalize-space(//np/artOnlyAfter/@checked)='no' and normalize-space(//np/artOnlyBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/artOnlyBefore/@checked)='no' and normalize-space(//np/artOnlyAfter/@checked)='yes' and normalize-space(//np/artOnlyBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/artOnlyBefore/@checked)='no' and normalize-space(//np/artOnlyAfter/@checked)='no' and normalize-space(//np/artOnlyBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/artOnlyBefore/@checked)='yes' and normalize-space(//np/artOnlyAfter/@checked)='yes' and normalize-space(//np/artOnlyBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/artOnlyBefore/@checked)='yes' and normalize-space(//np/artOnlyAfter/@checked)='no' and normalize-space(//np/artOnlyBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/artOnlyBefore/@checked)='no' and normalize-space(//np/artOnlyAfter/@checked)='yes' and normalize-space(//np/artOnlyBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/artOnlyBefore/@checked)='yes' and normalize-space(//np/artOnlyAfter/@checked)='yes' and normalize-space(//np/artOnlyBoth/@checked)='yes'">
<xsl:text>d’un côté ou l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/artOnlyOther/@checked)='no'">
<xsl:text> nom.  </xsl:text>
			   </xsl:if>
<xsl:if test="normalize-space(//np/artOnlyBefore/@checked)='no' and normalize-space(//np/artOnlyAfter/@checked)='no' and normalize-space(//np/artOnlyBoth/@checked)='no' and normalize-space(//np/artOnlyOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//np/artOnlyOther" />
<xsl:text>.  </xsl:text>
			   </xsl:if>
<xsl:if test="normalize-space(//np/artOnlyBefore/@checked)='yes' and normalize-space(//np/artOnlyOther/@checked)='yes' or normalize-space(//np/artOnlyAfter/@checked)='yes' and normalize-space(//np/artOnlyOther/@checked)='yes' or normalize-space(//np/artOnlyBoth/@checked)='yes' and normalize-space(//np/artOnlyOther/@checked)='yes'">
<xsl:text> nom et peut aussi se trouver ___</xsl:text>
<xsl:value-of select="//np/artOnlyOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@agreeNumber)='yes' and normalize-space(//np/@artPl)='yes'">
<xsl:text> La présence d’un article est </xsl:text>
					<xsl:choose>
						<xsl:when test="//np/@artRequired='no'">toujours facultative.</xsl:when>
						<xsl:when test="//np/@artRequired='mass'">facultative avec des noms au pluriel ou noms des masse, mais est obligatoire avec des noms au singulier.</xsl:when>
						<xsl:when test="//np/@artRequired='yes'">toujours obligatoire.</xsl:when>
					</xsl:choose>
</xsl:if>
<xsl:if test="normalize-space(//np/@agreeNumber)='no' or normalize-space(//np/@agreeNumber)='yes' and normalize-space(//np/@artPl)='no'">
<xsl:text>  La présence d’un article est </xsl:text>
				<xsl:choose>
					<xsl:when test="//np/@artRequired='no'">toujours facultative.</xsl:when>
					<xsl:when test="//np/@artRequired='yes'">toujours obligatoire.</xsl:when>
				</xsl:choose>
				</xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/@artAndDem)='demonstrative'">
<p>
<xsl:text>Le démonstratif se trouve </xsl:text>
<xsl:if test="normalize-space(//np/demOnlyBefore/@checked)='yes' and normalize-space(//np/demOnlyAfter/@checked)='no' and normalize-space(//np/demOnlyBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOnlyBefore/@checked)='no' and normalize-space(//np/demOnlyAfter/@checked)='yes' and normalize-space(//np/demOnlyBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOnlyBefore/@checked)='no' and normalize-space(//np/demOnlyAfter/@checked)='no' and normalize-space(//np/demOnlyBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOnlyBefore/@checked)='yes' and normalize-space(//np/demOnlyAfter/@checked)='yes' and normalize-space(//np/demOnlyBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOnlyBefore/@checked)='yes' and normalize-space(//np/demOnlyAfter/@checked)='no' and normalize-space(//np/demOnlyBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOnlyBefore/@checked)='no' and normalize-space(//np/demOnlyAfter/@checked)='yes' and normalize-space(//np/demOnlyBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOnlyBefore/@checked)='yes' and normalize-space(//np/demOnlyAfter/@checked)='yes' and normalize-space(//np/demOnlyBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOnlyOther/@checked)='no'">
<xsl:text> nom.  </xsl:text>
			   </xsl:if>
<xsl:if test="normalize-space(//np/demOnlyBefore/@checked)='no' and normalize-space(//np/demOnlyAfter/@checked)='no' and normalize-space(//np/demOnlyBoth/@checked)='no' and normalize-space(//np/demOnlyOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//np/demOnlyOther" />
<xsl:text>r.  </xsl:text>
			   </xsl:if>
<xsl:if test="normalize-space(//np/demOnlyBefore/@checked)='yes' and normalize-space(//np/demOnlyOther/@checked)='yes' or normalize-space(//np/demOnlyAfter/@checked)='yes' and normalize-space(//np/demOnlyOther/@checked)='yes' or normalize-space(//np/demOnlyBoth/@checked)='yes' and normalize-space(//np/demOnlyOther/@checked)='yes'">
<xsl:text> nom et peut aussi se trouver ___</xsl:text>
<xsl:value-of select="//np/demOnlyOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@agreeNumber)='yes' and normalize-space(//np/@demPl)='yes'">
<xsl:text>  La présence d’un démonstratif est </xsl:text>
				<xsl:choose>
					<xsl:when test="//np/@demRequired='no'">toujours facultative.</xsl:when>
					<xsl:when test="//np/@demRequired='mass'">facultative avec des noms au pluriel ou noms des masse, mais est obligatoire avec des noms au singulier.</xsl:when>
					<xsl:when test="//np/@demRequired='yes'">toujours obligatoire.</xsl:when>
				</xsl:choose>
</xsl:if>
<xsl:if test="normalize-space(//np/@agreeNumber)='no' or normalize-space(//np/@agreeNumber)='yes' and normalize-space(//np/@demPl)='no'">
<xsl:text> La présence d’un démonstratif est </xsl:text>
					<xsl:choose>
						<xsl:when test="//np/@artRequired='no'">toujours facultative.</xsl:when>
						<xsl:when test="//np/@artRequired='yes'">toujours obligatoire.</xsl:when>
					</xsl:choose>
</xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@artBothCooccur)='no'">
<p>
<xsl:text>Les articles et démonstratifs apparaissent tous deux dans la même position, ils ne se trouvent donc pas ensemble dans le même syntagme nominal.  Les articles et les démonstratifs apparaissent </xsl:text>
<xsl:if test="normalize-space(//np/demOrArtPosBefore/@checked)='yes' and normalize-space(//np/demOrArtPosAfter/@checked)='no' and normalize-space(//np/demOrArtPosBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOrArtPosBefore/@checked)='no' and normalize-space(//np/demOrArtPosAfter/@checked)='yes' and normalize-space(//np/demOrArtPosBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOrArtPosBefore/@checked)='no' and normalize-space(//np/demOrArtPosAfter/@checked)='no' and normalize-space(//np/demOrArtPosBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOrArtPosBefore/@checked)='yes' and normalize-space(//np/demOrArtPosAfter/@checked)='yes' and normalize-space(//np/demOrArtPosBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOrArtPosBefore/@checked)='yes' and normalize-space(//np/demOrArtPosAfter/@checked)='no' and normalize-space(//np/demOrArtPosBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOrArtPosBefore/@checked)='no' and normalize-space(//np/demOrArtPosAfter/@checked)='yes' and normalize-space(//np/demOrArtPosBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOrArtPosBefore/@checked)='yes' and normalize-space(//np/demOrArtPosAfter/@checked)='yes' and normalize-space(//np/demOrArtPosBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demOrArtPosOther/@checked)='no'">
<xsl:text> nom.  </xsl:text>
				   </xsl:if>
<xsl:if test="normalize-space(//np/demOrArtPosBefore/@checked)='no' and normalize-space(//np/demOrArtPosAfter/@checked)='no' and normalize-space(//np/demOrArtPosBoth/@checked)='no' and normalize-space(//np/demOrArtPosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//np/demOrArtPosOther" />
<xsl:text>.  </xsl:text>
				   </xsl:if>
<xsl:if test="normalize-space(//np/demOrArtPosBefore/@checked)='yes' and normalize-space(//np/demOrArtPosOther/@checked)='yes' or normalize-space(//np/demOrArtPosAfter/@checked)='yes' and normalize-space(//np/demOrArtPosOther/@checked)='yes' or normalize-space(//np/demOrArtPosBoth/@checked)='yes' and normalize-space(//np/demOrArtPosOther/@checked)='yes'">
<xsl:text> nom et peut aussi se trouver ___</xsl:text>
<xsl:value-of select="//np/demOrArtPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@agreeNumber)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@agreeNumber)='yes' and normalize-space(//np/@demPl)='yes'">
<xsl:text>  La présence d’un article ou d’un démonstratif est </xsl:text>
				<xsl:choose>
					<xsl:when test="//np/@demOrArtRequired='no'">toujours facultative.</xsl:when>
					<xsl:when test="//np/@demOrArtRequired='mass'">facultative avec des noms au pluriel ou des noms de masse, mais est obligatoire avec des noms au singulier.</xsl:when>
					<xsl:when test="//np/@demOrArtRequired='yes'">toujours obligatoire.</xsl:when>
				</xsl:choose>
</xsl:if>
<xsl:if test="normalize-space(//np/@agreeNumber)='no' or normalize-space(//np/@agreeNumber)='yes' and normalize-space(//np/@artPl)='no' and normalize-space(//np/@demPl)='no'">
<xsl:text>  La présence d’un article ou d’un démonstratif est </xsl:text>
					<xsl:choose>
						<xsl:when test="//np/@demOrArtRequired='no'">toujours facultative.</xsl:when>
						<xsl:when test="//np/@demOrArtRequired='yes'">toujours obligatoire.</xsl:when>
					</xsl:choose>
</xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@artBothCooccur)!='no'">
<p>
<xsl:text>Les articles et démonstratifs n’apparaissent pas dans la même position par rapport au nom, </xsl:text>
<xsl:choose>
					<xsl:when test="//np/@artBothCooccur='different'">mais les deux ne peuvent pas </xsl:when>
					<xsl:when test="//np/@artBothCooccur='yes'">et les deux peuvent </xsl:when>
				</xsl:choose>
<xsl:text>se trouver ensemble dans le même syntagme nominal.  </xsl:text>
</p>
</xsl:if>
		   
			<xsl:if test="normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@artBothCooccur)!='no'">
<p>
<xsl:text>  L’article se trouve </xsl:text>
<xsl:if test="normalize-space(//np/demAndArtArtBefore/@checked)='yes' and normalize-space(//np/demAndArtArtAfter/@checked)='no' and normalize-space(//np/demAndArtArtBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtArtBefore/@checked)='no' and normalize-space(//np/demAndArtArtAfter/@checked)='yes' and normalize-space(//np/demAndArtArtBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtArtBefore/@checked)='no' and normalize-space(//np/demAndArtArtAfter/@checked)='no' and normalize-space(//np/demAndArtArtBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtArtBefore/@checked)='yes' and normalize-space(//np/demAndArtArtAfter/@checked)='yes' and normalize-space(//np/demAndArtArtBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtArtBefore/@checked)='yes' and normalize-space(//np/demAndArtArtAfter/@checked)='no' and normalize-space(//np/demAndArtArtBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtArtBefore/@checked)='no' and normalize-space(//np/demAndArtArtAfter/@checked)='yes' and normalize-space(//np/demAndArtArtBoth/@checked)='yes'">
<xsl:text>/ après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtArtBefore/@checked)='yes' and normalize-space(//np/demAndArtArtAfter/@checked)='yes' and normalize-space(//np/demAndArtArtBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtArtOther/@checked)='no'">
<xsl:text> nom.  </xsl:text>
		      </xsl:if>
<xsl:if test="normalize-space(//np/demAndArtArtBefore/@checked)='no' and normalize-space(//np/demAndArtArtAfter/@checked)='no' and normalize-space(//np/demAndArtArtBoth/@checked)='no' and normalize-space(//np/demAndArtArtOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//np/demAndArtArtOther" />
<xsl:text>.  </xsl:text>
		      </xsl:if>
<xsl:if test="normalize-space(//np/demAndArtArtBefore/@checked)='yes' and normalize-space(//np/demAndArtArtOther/@checked)='yes' or normalize-space(//np/demAndArtArtAfter/@checked)='yes' and normalize-space(//np/demAndArtArtOther/@checked)='yes' or normalize-space(//np/demAndArtArtBoth/@checked)='yes' and normalize-space(//np/demAndArtArtOther/@checked)='yes'">
<xsl:text> nom et peut aussi se trouver ___</xsl:text>
<xsl:value-of select="//np/demAndArtArtOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>  La présence d’un article est </xsl:text>
<xsl:choose>
		   	<xsl:when test="//np/@demAndArtArtRequired='no'">toujours facultative.</xsl:when>
		   	<xsl:when test="//np/@demAndArtArtRequired='mass'">facultative avec des noms au pluriel ou des noms de masse, mais est obligatoire avec des noms au singulier.</xsl:when>
		   	<xsl:when test="//np/@demAndArtArtRequired='yes'">toujours obligatoire.</xsl:when>
		   </xsl:choose>
<xsl:text></xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@artBothCooccur)!='no'">
<p>
<xsl:text>Le démonstratif se trouve </xsl:text>
<xsl:if test="normalize-space(//np/demAndArtDemBefore/@checked)='yes' and normalize-space(//np/demAndArtDemAfter/@checked)='no' and normalize-space(//np/demAndArtDemBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtDemBefore/@checked)='no' and normalize-space(//np/demAndArtDemAfter/@checked)='yes' and normalize-space(//np/demAndArtDemBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtDemBefore/@checked)='no' and normalize-space(//np/demAndArtDemAfter/@checked)='no' and normalize-space(//np/demAndArtDemBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtDemBefore/@checked)='yes' and normalize-space(//np/demAndArtDemAfter/@checked)='yes' and normalize-space(//np/demAndArtDemBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtDemBefore/@checked)='yes' and normalize-space(//np/demAndArtDemAfter/@checked)='no' and normalize-space(//np/demAndArtDemBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtDemBefore/@checked)='no' and normalize-space(//np/demAndArtDemAfter/@checked)='yes' and normalize-space(//np/demAndArtDemBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtDemBefore/@checked)='yes' and normalize-space(//np/demAndArtDemAfter/@checked)='yes' and normalize-space(//np/demAndArtDemBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/demAndArtDemOther/@checked)='no'">
<xsl:text> nom.  </xsl:text>
				   </xsl:if>
<xsl:if test="normalize-space(//np/demAndArtDemBefore/@checked)='no' and normalize-space(//np/demAndArtDemAfter/@checked)='no' and normalize-space(//np/demAndArtDemBoth/@checked)='no' and normalize-space(//np/demAndArtDemOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//np/demAndArtDemOther" />
<xsl:text>.  </xsl:text>
				   </xsl:if>
<xsl:if test="normalize-space(//np/demAndArtDemBefore/@checked)='yes' and normalize-space(//np/demAndArtDemOther/@checked)='yes' or normalize-space(//np/demAndArtDemAfter/@checked)='yes' and normalize-space(//np/demAndArtDemOther/@checked)='yes' or normalize-space(//np/demAndArtDemBoth/@checked)='yes' and normalize-space(//np/demAndArtDemOther/@checked)='yes'">
<xsl:text> nom et peut aussi se trouver  ___</xsl:text>
<xsl:value-of select="//np/demAndArtDemOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>  La présence d’un démonstratif est </xsl:text>
<xsl:choose>
					<xsl:when test="//np/@demAndArtDemRequired='no'">toujours facultative.</xsl:when>
					<xsl:when test="//np/@demAndArtDemRequired='mass'">facultative avec des noms au pluriel ou des noms de masse, mais est obligatoire avec des noms au singulier.</xsl:when>
					<xsl:when test="//np/@demAndArtDemRequired='yes'">toujours obligatoire.</xsl:when>
				</xsl:choose>
</p>
</xsl:if>
		   
		
			<xsl:if test="normalize-space(//np/@artAndDem)!='no'">
<p>
<xsl:text>Voici quelques exemples de syntagmes nominaux avec </xsl:text>
<xsl:choose>
					<xsl:when test="//np/@artAndDem='article'">des articles</xsl:when>
					<xsl:when test="//np/@artAndDem='demonstrative'">des démonstratifs</xsl:when>
					<xsl:when test="//np/@artAndDem='both'">des articles et/ou des démonstratifs</xsl:when>
				</xsl:choose>
<xsl:text> comme le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> l’admet :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//np/@artAndDem)!='no'">
<example num="xNP.NPArtDem.22">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/example" />
<xsl:with-param name="sExNumber">xNP.NPArtDem.22</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
	
			<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//np/@artAndDem)='demonstrative'">
<p>
<xsl:text>Dans ces syntagmes nominaux avec des démonstratifs</xsl:text>
<xsl:choose>
<xsl:when test="//np/@classifierPresentDem='yes'"> un classificateur est obligatoire.</xsl:when>
					<xsl:when test="//np/@classifierPresentDem='some'"> un classificateur est présent dans certaines syntagmes nominaux de ce type mais n’est pas obligatoire en tous.</xsl:when>
					<xsl:when test="//np/@classifierPresentDem='no'"> un classificateur n’est jamais utilisé.</xsl:when>
</xsl:choose>
<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//np/@classifierPresentDem)='yes' or normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//np/@classifierPresentDem)='some'">
<xsl:text> Le classificateur </xsl:text>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='no'">
<xsl:text>se trouve avant le démonstratif et le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes'">
<xsl:text>peut se trouver avant le démonstratif et le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes'">
<xsl:text> Il se trouve également après le nom et le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='no'">
<xsl:text>se trouve après le nom et le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le nom et le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes'">
<xsl:text> Il se trouve également après le démonstratif mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='no'">
<xsl:text>se trouve après le démonstratif mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le démonstratif mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes'">
<xsl:text> Il se trouve également après le nom mais avant le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='no'">
<xsl:text>se trouve après le nom mais avant le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le nom mais avant le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes'">
<xsl:text> Il peut également se rattacher comme préfixe sur le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='no'">
<xsl:text>se rattache comme préfixe au démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes'">
<xsl:text>peut se rattacher comme préfixe au démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes'">
<xsl:text> Il peut également se rattacher comme suffixe au démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='no'">
<xsl:text>se rattache comme suffixe au démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes'">
<xsl:text>peut se rattacher comme suffixe au démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes'">
<xsl:text> Il peut également se trouver ___</xsl:text>
<xsl:value-of select="//np/classifierSpecificDemPosOther" />
<xsl:text>. </xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemPosOther/@checked)='yes'">
<xsl:text>se trouve ___</xsl:text>
<xsl:value-of select="//np/classifierSpecificDemPosOther" />
<xsl:text>. </xsl:text>
</xsl:if>	
				</xsl:if>
</p>
</xsl:if>
			
			<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//np/@artAndDem)='both'">
<p>
<xsl:text>Dans ces syntagmes nominaux avec des démonstratifs</xsl:text>
<xsl:choose>
<xsl:when test="//np/@classifierPresentDemBoth='yes'"> un classificateur est obligatoire.</xsl:when>
					<xsl:when test="//np/@classifierPresentDemBoth='some'"> un classificateur est présent dans certaines syntagmes nominaux de ce type mais n’est pas obligatoire dans tous les cas.</xsl:when>
					<xsl:when test="//np/@classifierPresentDemBoth='no'"> un classificateur n’est jamais utilisé.</xsl:when>
</xsl:choose>
<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@classifierPresentDemBoth)='yes' or normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@classifierPresentDemBoth)='some'">
<xsl:text> Le classificateur </xsl:text>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='no'">
<xsl:text>se trouve avant le démonstratif et avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes'">
<xsl:text>peut se trouver avant le démonstratif et avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes'">
<xsl:text> Il se trouve également après le nom et le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='no'">
<xsl:text>se trouve après le nom et le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le nom et le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes'">
<xsl:text> Il se trouve également après le nom mais avant le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='no'">
<xsl:text>se trouve après le démonstratif mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le démonstratif mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes'">
<xsl:text> Il se trouve également après le nom mais avant le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='no'">
<xsl:text>se trouve après le nom mais avant le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le nom mais avant le démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes'">
<xsl:text> Il peut également se rattacher comme préfixe au démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='no'">
<xsl:text>se rattacher comme un préfixe au démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes'">
<xsl:text>peut se rattacher comme un préfixe au démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes'">
<xsl:text> Il peut également se rattacher comme suffixe au démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='no'">
<xsl:text>se rattache comme suffixe au démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes'">
<xsl:text>peut se rattacher comme suffixe au démonstratif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='yes' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes'">
<xsl:text> Il peut également se trouver ___</xsl:text>
<xsl:value-of select="//np/classifierSpecificDemBothPosOther" />
<xsl:text>. </xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificDemBothPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterDemBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosAfterNBeforeDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosPrefixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosSuffixDem/@checked)='no' and normalize-space(//np/classifierSpecificDemBothPosOther/@checked)='yes'">
<xsl:text>se trouve ___</xsl:text>
<xsl:value-of select="//np/classifierSpecificDemBothPosOther" />
<xsl:text>. </xsl:text>
</xsl:if>	
				</xsl:if>
</p>
</xsl:if>
			
		</section2>
		<section2 id="sNPPoss">
			<secTitle>Possesseurs</secTitle>
		   <p contentType="ctPracticalIntro">
<xsl:text>La possession peut être normalement exprimée par un pronom ou par un syntagme nominal qui consiste en un nom propre, un nom simple ou un nom totalement modifié.</xsl:text>
</p>
		   <p contentType="ctComparativeIntro">
<xsl:text>La possession peut être normalement exprimée par un pronom ou par un syntagme nominal qui consiste en un nom propre, un nom simple ou un nom totalement modifié.  
		   		Cependant le français n’admet les pronoms dans la position possesseur qu’avant le nom, et tous les possesseurs nominaux et possesseurs de syntagmes nominaux complets nécessairement exprimés dans un syntagme prépositionnelle avec </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>de</langData>
<xsl:text> après le nom.</xsl:text>
</p>
			<p contentType="ctComparativeIntro">
<xsl:text>Dans les langues qui expriment les possesseurs par des noms ou des syntagmes nominaux complets aussi bien que par des pronoms, beaucoup rajoutent aussi une sorte de marque comme le </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>’s</langData>
<xsl:text> en anglais pour indiquer la possession.  Ces marques sont soit des affixes soit des clitiques rattachés au nom principal ou des clitiques syntagme de constituant qui se rattachent à un bout ou à l’autre du syntagme complet.  Quelquefois la marque du syntagme possesseur est écrite comme un mot indépendant.  
					La marque en anglais est de ce second type, parce qu’à côté des syntagmes où le </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>’s</langData>
<xsl:text> apparaît attaché au nom principal comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the boy’s mother</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « la mère du garçon »</xsl:text>
</gloss>
<xsl:text> il y a aussi des syntagmes qui montrent clairement que le clitique se rattache à la fin du syntagme nominal complet comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the boy that I just talked to’s mother</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « la mère du garçon à qui je viens de parler »</xsl:text>
</gloss>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the girl in green’s wonderful speech</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « le discours merveilleux de la fille en vert »</xsl:text>
</gloss>
<xsl:text>.  Ces exemples illustrent que des possesseurs peuvent comprendre des syntagmes </xsl:text>
<xsl:choose>
					<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='both'">prépositionnels et /ou postpositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='unknown'">prépositionnels et /ou postpositionnels</xsl:when>
				</xsl:choose>
<xsl:text> et des propositions relatives.  Les possesseurs peuvent aussi être enchâssés l’un dans l’autre comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the boy’s sister’s dog</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « le chien de la soeur du garçon »</xsl:text>
</gloss>
<xsl:text>.  Cela est admis en français dans le syntagme prépositionnel après le nom.</xsl:text>
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
<xsl:text>, </xsl:text>
<xsl:choose>
		   	<xsl:when test="//np/@possNP='yes'">le possesseur peut être un syntagme nominal ou un pronom ajoutés directement au nom, qui tous deux peuvent aussi se trouver  dans  un syntagme <xsl:choose>
		   		<xsl:when test="//pp/@pPos='before'">prepositionnel</xsl:when>
		   		<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
		   		<xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
		   		<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
		      </xsl:choose>.  </xsl:when>
		   	<xsl:when test="//np/@possNP='yesOnly'">le possesseur peut être un syntagme nominal ou un pronom ajoutés directement au nom, mais les syntagmes de possession <xsl:choose>
		      	<xsl:when test="//pp/@pPos='before'">prepositionnel</xsl:when>
		      	<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
		      	<xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
		      	<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
		   	</xsl:choose> ne sont pas admis.  </xsl:when>
		   	<xsl:when test="//np/@possNP='no'">le possesseur peut seulement être un pronom ajouté directement au nom ; les syntagmes nominaux de possession se trouvent uniquement dans un syntagme  <xsl:choose>
		   	<xsl:when test="//pp/@pPos='before'">prepositionnel</xsl:when>
		   	<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
		   	<xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
		   	<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
		   	</xsl:choose>.  </xsl:when>
		   	<xsl:when test="//np/@possNP='none'">ni les syntagmes nominaux ni les pronoms ne peuvent posséder un nom directement ; la possession est exprimée seulement dans un syntagme <xsl:choose>
		      	<xsl:when test="//pp/@pPos='before'">prepositionnel</xsl:when>
		      	<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
		      	<xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
		      	<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
		      </xsl:choose>.  </xsl:when>
		   </xsl:choose>
<xsl:if test="normalize-space(//np/@possNP)!='yesOnly'">
<xsl:text>Le syntagme de possession </xsl:text>
<xsl:choose>
		      	<xsl:when test="//pp/@pPos='before'">prepositionnel</xsl:when>
		      	<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
		      	<xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
		      	<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
		   	</xsl:choose>
<xsl:text> se trouve </xsl:text>
<xsl:choose>
		   		<xsl:when test="//np/@possPPPos='before'">avant le</xsl:when>
		   		<xsl:when test="//np/@possPPPos='after'">après le</xsl:when>
		   		<xsl:when test="//np/@possPPPos='either'">d’un côté ou de l’autre du</xsl:when>
		      </xsl:choose>
<xsl:text> nom. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possNP)='yes' or normalize-space(//np/@possNP)='yesOnly'">
<xsl:text>Le syntagme nominal ou le pronom possesseur se trouve </xsl:text>
<xsl:choose>
		      	<xsl:when test="//np/@possNounPos='before'">avant le</xsl:when>
		      	<xsl:when test="//np/@possNounPos='after'">après le</xsl:when>
		      	<xsl:when test="//np/@possNounPos='either'">d’un côté ou de l’autre du</xsl:when>
		      </xsl:choose>
<xsl:text> nom. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possNP)='no'">
<xsl:text>Le pronom possesseur se trouve </xsl:text>
<xsl:choose>
		      	<xsl:when test="//np/@possPronPos='before'">avant le</xsl:when>
		      	<xsl:when test="//np/@possPronPos='after'">après le</xsl:when>
		      	<xsl:when test="//np/@possPronPos='either'">d’un côté ou de l’autre du</xsl:when>
		      </xsl:choose>
<xsl:text> nom.</xsl:text>
</xsl:if>
</p>
		   
			<p>
<xsl:text>D\Voici quelques exemples de syntagmes nominaux de possession avec des possesseurs simples et enchâssés en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> incluent :</xsl:text>
</p>
			<example num="xNP.NPPoss.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/possessorExample" />
<xsl:with-param name="sExNumber">xNP.NPPoss.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
			<p>
<xsl:text>Voici quelques exemples de syntagmes nominaux de possession avec des possesseurs enchâssés en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> incluent :</xsl:text>
</p>
			<example num="xNP.NPPoss.18">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/embeddedExample" />
<xsl:with-param name="sExNumber">xNP.NPPoss.18</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
			<xsl:if test="normalize-space(//np/@possNP)!='yesOnly'">
<p>
<xsl:text>Voici quelques exemples avec des syntagmes </xsl:text>
<xsl:choose>
					<xsl:when test="//pp/@pPos='before'">prepositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='both'">adpositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
				</xsl:choose>
<xsl:text> comme possesseur incluent :</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//np/@possNP)!='yesOnly'">
<example num="xNP.NPPoss.22">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/ppExample" />
<xsl:with-param name="sExNumber">xNP.NPPoss.22</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
			<p>
<xsl:text>Voici quelques exemples avec des propositions relatives dans le possesseur, incluses dans des phrases complètes sont :</xsl:text>
</p>
			<example num="xNP.NPPoss.26">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/relClExample" />
<xsl:with-param name="sExNumber">xNP.NPPoss.26</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
			<xsl:if test="normalize-space(//np/@possNP)='yes' or normalize-space(//np/@possNP)='yesOnly'">
<p>
<xsl:text>Comme cela a été vu dans les exemples ci-dessus, en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>,</xsl:text>
<xsl:choose>
					<xsl:when test="//np/@possMarked='no'"> il n’a pas de marque spéciale pour distinguer les possesseurs de tout autre syntagme nominal.</xsl:when>
					<xsl:when test="//np/@possMarked='yesAffix'"> on marque le nom principal dans le possesseur avec un affixe pour distinguer les possesseurs de tout autre syntagme nominal.  L’affixe est :</xsl:when>
					<xsl:when test="//np/@possMarked='yesProclitic'"> marque le syntagme dans son ensemble avec une proclitique qui se rattache au premier mot dans le possesseur pour distinguer les possesseurs de tout autre syntagme nominal.  Le clitique est :</xsl:when>
					<xsl:when test="//np/@possMarked='yesEnclitic'"> marque le syntagme dans son enemble avec un enclitique qui se rattache au dernier mot dans le possesseur pour distinguer les possesseurs de tout autre syntagme nominal.  Le clitique est :</xsl:when>
					<xsl:when test="//np/@possMarked='yesWord'"> marque le syntagme possesseur dans son ensemble avec un mot indépendant pour le distinguer de toute autre syntagme nominal.  La présence du mot marqué est  <xsl:choose>
						<xsl:when test="//np/@possWordRequired='no'">facultatif dans certains cas.</xsl:when>
						<xsl:when test="//np/@possWordRequired='yes'">toujours obligatoire.</xsl:when>
					</xsl:choose>  Il se trouve </xsl:when>
				</xsl:choose>
<xsl:if test="normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordBefore/@checked)='yes' and normalize-space(//np/possWordAfter/@checked)='no' and normalize-space(//np/possWordBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordBefore/@checked)='no' and normalize-space(//np/possWordAfter/@checked)='yes' and normalize-space(//np/possWordBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordBefore/@checked)='no' and normalize-space(//np/possWordAfter/@checked)='no' and normalize-space(//np/possWordBoth/@checked)='yes'">
<xsl:text>des les deux côtés du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordBefore/@checked)='yes' and normalize-space(//np/possWordAfter/@checked)='yes' and normalize-space(//np/possWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordBefore/@checked)='yes' and normalize-space(//np/possWordAfter/@checked)='no' and normalize-space(//np/possWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordBefore/@checked)='no' and normalize-space(//np/possWordAfter/@checked)='yes' and normalize-space(//np/possWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordBefore/@checked)='yes' and normalize-space(//np/possWordAfter/@checked)='yes' and normalize-space(//np/possWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordOther/@checked)='no'">
<xsl:text> syntagme possesseur.  Ce mot est :</xsl:text>
				   </xsl:if>
<xsl:if test="normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordBefore/@checked)='no' and normalize-space(//np/possWordAfter/@checked)='no' and normalize-space(//np/possWordBoth/@checked)='no' and normalize-space(//np/possWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//np/possWordOther" />
<xsl:text>.  Ce mot est :</xsl:text>
				   </xsl:if>
<xsl:if test="normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordBefore/@checked)='yes' and normalize-space(//np/possWordOther/@checked)='yes' or normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordAfter/@checked)='yes' and normalize-space(//np/possWordOther/@checked)='yes' or normalize-space(//np/@possMarked)='yesWord' and normalize-space(//np/possWordBoth/@checked)='yes' and normalize-space(//np/possWordOther/@checked)='yes'">
<xsl:text> syntagme possesseur et peut aussi se trouver ___</xsl:text>
<xsl:value-of select="//np/possWordOther" />
<xsl:text>.  Ce mot est :</xsl:text>
</xsl:if>
</p>
</xsl:if>
	<xsl:if test="normalize-space(//np/@possMarked)='yesAffix'">
<example num="xNP.NPPoss.30">
<table border="1">
	      <tr>
	      	<th>Affixe marquant la possession</th>
	      	<th>Glose</th>
	      </tr>
	      <tr>
<xsl:for-each select="//np/possMarkerAffix/form[1]">
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
<xsl:for-each select="//np/possMarkerAffix/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/possMarkerAffix/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
		   <xsl:if test="normalize-space(//np/@possMarked)='yesProclitic' or normalize-space(//np/@possMarked)='yesEnclitic'">
<example num="xNP.NPPoss.32">
<table border="1">
		         <tr>
		         	<th>Clitique marquant la possession</th>
		         </tr>
		         <tr>
<xsl:for-each select="//np/possMarkerClitic/form[1]">
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
<xsl:for-each select="//np/possMarkerClitic/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/possMarkerClitic/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
		   <xsl:if test="normalize-space(//np/@possMarked)='yesWord'">
<example num="xNP.NPPoss.34">
<table border="1">
		         <tr>
		         	<th>Mot marquant la possession</th>
		         </tr>
		         <tr>
<xsl:for-each select="//np/possMarkerWord/form[1]">
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
<xsl:for-each select="//np/possMarkerWord/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/possMarkerWord/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
		   
				<p contentType="ctComparativeIntro">
<xsl:text>En anglais les possesseurs et les articles ou démonstratifs ne se trouvent pas dans le même syntagme nominal, à moins que le possesseur soit exprimé dans un syntagme prépositionnel.  Par exemple </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>those [the boy’s] books</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (ces [du garçon] livres-là)</xsl:text>
</gloss>
<xsl:text> n’est pas correct du point de vue grammatical. On devrait utiliser </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>those books [of his]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (ces livres [du garçon])</xsl:text>
</gloss>
<xsl:text> pour exprimer la même pensée. En français ces éléments ne se trouvent pas ensemble.  Certaines autres langues admettent aux possesseurs et aux articles ou démonstratifs se trouvent dans le même syntagme ; le premier exemple, donc, serait correct.</xsl:text>
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
<xsl:text> possesseurs nominaux ou pronominaux </xsl:text>
<xsl:choose>
						<xsl:when test="//np/@possCooccur='yes'">peuvent</xsl:when>
						<xsl:when test="//np/@possCooccur='no'">ne peuvent pas</xsl:when>
					</xsl:choose>
<xsl:text> se trouver dans le même syntagme que des </xsl:text>
<xsl:choose>
						<xsl:when test="//np/@artAndDem='article'">articles</xsl:when>
						<xsl:when test="//np/@artAndDem='demonstrative'">démonstratifs</xsl:when>
						<xsl:when test="//np/@artAndDem='both'">articles et/ou démonstratifs</xsl:when>
					</xsl:choose>
<xsl:text> dans la position normale de possesseur</xsl:text>
<xsl:choose>
				      <xsl:when test="//np/@possCooccur='yes'">.</xsl:when>
				   	<xsl:when test="//np/@possCooccur='no'">.  Au lieu de cela </xsl:when>
				   </xsl:choose>
<xsl:if test="normalize-space(//np/@possCooccur)='no'">
<xsl:text>le possesseur est exprimé dans un syntagme </xsl:text>
				      <xsl:choose>
				      	<xsl:when test="//pp/@pPos='before'">prepositionnel</xsl:when>
				      	<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
				      	<xsl:when test="//pp/@pPos='both'">prépositionel ou postpositionnel </xsl:when>
				      	<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
				      </xsl:choose>
				      <xsl:text>.</xsl:text>
				   </xsl:if>
</p>
		
		</section2>
		<section2 id="sNPQP">
			<secTitle>Syntagmes de quantité</secTitle>
			<p contentType="ctPracticalIntro">
<xsl:text>Les syntagmes de quantité incluent à la fois les nombres (la section </xsl:text>
<sectionRef sec="sAdjNumbers" />
<xsl:text>) et les quantifieurs de portée plus restreinte (la section </xsl:text>
<sectionRef sec="sQPOtherQuantifiers" />
<xsl:text>).</xsl:text>
</p>
		   <p contentType="ctComparativeIntro">
<xsl:text>Les syntagmes de quantité incluent à la fois les numéraux (section </xsl:text>
<sectionRef sec="sAdjNumbers" />
<xsl:text>) et les quantifieurs de portée plus restreinte (la section </xsl:text>
<sectionRef sec="sQPOtherQuantifiers" />
<xsl:text>).  Ces modificateurs marquent le nombre du syntagme nominal dans son ensemble.  Voici quelques exemples de syntagmes nominaux quantifieurs en anglais : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>those very few books</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (ces quelques rares livres)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the boy’s many dogs</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (le grand nombre de chiens du garçon)</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>only the first one hundred boys</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (seulement les cent premiers garçons)</xsl:text>
</gloss>
<xsl:text>.  En anglais et en français, tous les syntagmes quantifieurs se trouvent avant le nom.</xsl:text>
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
<xsl:text>, les syntagmes quantifieurs se trouvent </xsl:text>
<xsl:if test="normalize-space(//np/qpPosBefore/@checked)='yes' and normalize-space(//np/qpPosAfter/@checked)='no' and normalize-space(//np/qpPosBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/qpPosBefore/@checked)='no' and normalize-space(//np/qpPosAfter/@checked)='yes' and normalize-space(//np/qpPosBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/qpPosBefore/@checked)='no' and normalize-space(//np/qpPosAfter/@checked)='no' and normalize-space(//np/qpPosBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/qpPosBefore/@checked)='yes' and normalize-space(//np/qpPosAfter/@checked)='yes' and normalize-space(//np/qpPosBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/qpPosBefore/@checked)='yes' and normalize-space(//np/qpPosAfter/@checked)='no' and normalize-space(//np/qpPosBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/qpPosBefore/@checked)='no' and normalize-space(//np/qpPosAfter/@checked)='yes' and normalize-space(//np/qpPosBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/qpPosBefore/@checked)='yes' and normalize-space(//np/qpPosAfter/@checked)='yes' and normalize-space(//np/qpPosBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/qpPosOther/@checked)='no'">
<xsl:text> nom.  </xsl:text>
		      </xsl:if>
<xsl:if test="normalize-space(//np/qpPosBefore/@checked)='no' and normalize-space(//np/qpPosAfter/@checked)='no' and normalize-space(//np/qpPosBoth/@checked)='no' and normalize-space(//np/qpPosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//np/qpPosOther" />
<xsl:text>.   </xsl:text>
		      </xsl:if>
<xsl:if test="normalize-space(//np/qpPosBefore/@checked)='yes' and normalize-space(//np/qpPosOther/@checked)='yes' or normalize-space(//np/qpPosAfter/@checked)='yes' and normalize-space(//np/qpPosOther/@checked)='yes' or normalize-space(//np/qpPosBoth/@checked)='yes' and normalize-space(//np/qpPosOther/@checked)='yes'">
<xsl:text> nom et peut aussi se trouver ___</xsl:text>
<xsl:value-of select="//np/qpPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@qpEitherRestrictedNumPos)='before' and normalize-space(//np/qpPosBefore/@checked)='yes' and normalize-space(//np/qpPosAfter/@checked)='yes' or normalize-space(//np/@qpEitherRestrictedNumPos)='before' and normalize-space(//np/qpPosBoth/@checked)='yes'">
	<xsl:text>Tous les numéraux se trouvent avant le nom. </xsl:text>
					</xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//np/@qpEitherRestrictedNumPos)='after' and normalize-space(//np/qpPosBefore/@checked)='yes' and normalize-space(//np/qpPosAfter/@checked)='yes' or normalize-space(//np/@qpEitherRestrictedNumPos)='after' and normalize-space(//np/qpPosBoth/@checked)='yes'">
						<xsl:text>Tous les numéraux se trouvent après le nom. </xsl:text>
					</xsl:if>
</p>
				<p>
<xsl:text>Voici quelques exemples de syntagmes quantifieurs en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> :</xsl:text>
</p>
			<example num="xNP.NPQP.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/qpExample" />
<xsl:with-param name="sExNumber">xNP.NPQP.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
			
			<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific'">
<p>
<xsl:text>Dans ces syntagmes nominaux avec des numéraux ou d’autres quantifieurs</xsl:text>
<xsl:choose>
<xsl:when test="//np/@classifierPresentQ='yes'"> un classificateur est obligatoire.</xsl:when>
					<xsl:when test="//np/@classifierPresentQ='some'"> un classificateur est présent dans certains syntagmes nominaux de ce type, mais pas obligatoire pour tous.</xsl:when>
					<xsl:when test="//np/@classifierPresentQ='no'"> un classificateur n’est jamais utilisé.</xsl:when>
</xsl:choose>
<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//np/@classifierPresentQ)='yes' or normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//np/@classifierPresentQ)='some'">
<xsl:text> Le classificateur </xsl:text>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosOther/@checked)='no'">
<xsl:text>se trouve avant le quantifieur et le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes'">
<xsl:text>peut se trouver avant le quatifieur et le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes'">
<xsl:text> Il se trouve également après le nom et le quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosOther/@checked)='no'">
<xsl:text>se trouve après le nom et le quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le nom et le quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes'">
<xsl:text> Il se trouve également après le quantifieur mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosOther/@checked)='no'">
<xsl:text>se trouve après le quantifieur mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le quantifieur mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes'">
<xsl:text> Il se trouve également après le nom mais avant le quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosOther/@checked)='no'">
<xsl:text>se trouve après le nom mais avant le quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le nom mais avant le quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes'">
<xsl:text> Il peut également s’attacher comme préfixe au quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosOther/@checked)='no'">
<xsl:text>se rattache comme préfixe au quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes'">
<xsl:text>peut se rattacher comme préfixe au quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' or normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes'">
<xsl:text> Il peut également se ratttacher comme suffixe au quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='no'">
<xsl:text>se rattache comme suffixe au quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes'">
<xsl:text>peut se rattacher comme suffixe au quantifieur.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='yes' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes'">
<xsl:text> Il peut également se trouver ___</xsl:text>
<xsl:value-of select="//np/classifierSpecificQPosOther" />
<xsl:text>. </xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificQPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterQBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificQPosAfterNBeforeQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosPrefixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosSuffixQ/@checked)='no' and normalize-space(//np/classifierSpecificQPosOther/@checked)='yes'">
<xsl:text>se trouve ___</xsl:text>
<xsl:value-of select="//np/classifierSpecificQPosOther" />
<xsl:text>. </xsl:text>
</xsl:if>	
				</xsl:if>
</p>
</xsl:if>
			
			
		</section2>
		<section2 id="sNPAdjP">
			<secTitle>Syntagmes adjectivaux</secTitle>
			<p contentType="ctPracticalIntro">
<xsl:text>Les adjectifs qualitatifs et leurs modificateurs ont été traités dans la section </xsl:text>
<sectionRef sec="sAdjQual" />
<xsl:text> ci-dessus. </xsl:text>
</p>
		   <p contentType="ctComparativeIntro">
<xsl:text>Les adjectifs qualitatifs et leurs modificateurs ont été traités dans la section </xsl:text>
<sectionRef sec="sAdjQual" />
<xsl:text> ci-dessus.  Les syntagmes adjectivaux se trouvent près du nom, donnant des syntagmes nominaux tels que :</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>those very few old, dirty books</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « ces très peu de vieux livres sales »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>all the boy’s many black dogs</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « tous les nombreux chiens noirs du garçon »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>only the first one hundred very eager young boys</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « seulement les cent premiers jeunes garçons très impatients »</xsl:text>
</gloss>
<xsl:text>.  En anglais, comme les exemples le mettent en évidence, tous les adjectifs se trouvent avant le nom et plus qu'un syntagme adjectival est admis, contrairement aux modificateurs traités jusqu’à présent.  En français, normalement l’adjectif se trouve après le nom, avec quelques exceptions précises ; où deux ou plusieurs adjectifs accompagnent un nom, on peut se trouver avant et l’autre(s) après.</xsl:text>
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
<xsl:text> les syntagmes adjectivaux se trouvent </xsl:text>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='yes' and normalize-space(//np/adjAfter/@checked)='no' and normalize-space(//np/adjBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='no' and normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='no' and normalize-space(//np/adjAfter/@checked)='no' and normalize-space(//np/adjBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='yes' and normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='no'">
<xsl:text>d’un côté ou l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='yes' and normalize-space(//np/adjAfter/@checked)='no' and normalize-space(//np/adjBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='no' and normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='yes' and normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='yes'">
<xsl:text>d’un côté ou l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjPosOther/@checked)='no'">
<xsl:text> nom.  </xsl:text>
		      </xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='no' and normalize-space(//np/adjAfter/@checked)='no' and normalize-space(//np/adjBoth/@checked)='no' and normalize-space(//np/adjPosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//np/adjPosOther" />
<xsl:text>.   </xsl:text>
		      </xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='yes' and normalize-space(//np/adjPosOther/@checked)='yes' or normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjPosOther/@checked)='yes' or normalize-space(//np/adjBoth/@checked)='yes' and normalize-space(//np/adjPosOther/@checked)='yes'">
<xsl:text> nom et peuvent aussi se trouver ___</xsl:text>
<xsl:value-of select="//np/adjPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
</p>
		   <p>
<xsl:text>Voice quelques exemples de syntagmes nominaux modifiés par des adjectifs qualitatifs ou syntagmes adjectivaux en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> :</xsl:text>
</p>
			<example num="xNP.NPAdjP.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/adjpExample" />
<xsl:with-param name="sExNumber">xNP.NPAdjP.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
			<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific'">
<p>
<xsl:text>Dans ces syntagmes nominaux avec des adjectifs</xsl:text>
<xsl:choose>
<xsl:when test="//np/@classifierPresentAdj='yes'"> un classificateur est obligatoire</xsl:when>
					<xsl:when test="//np/@classifierPresentAdj='some'"> un classificateur est présent dans certains syntagmes nominaux de ce type, mais n’est pas obligatoire dans tous.</xsl:when>
					<xsl:when test="//np/@classifierPresentAdj='no'"> un classificateur n’est jamais utilisé.</xsl:when>
</xsl:choose>
<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//np/@classifierPresentAdj)='yes' or normalize-space(//typology/@classifier)='yesSpecific' and normalize-space(//np/@classifierPresentAdj)='some'">
<xsl:text> Le classificateur </xsl:text>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='no'">
<xsl:text>se trouve avant l’adjectif et le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes'">
<xsl:text>peut se trouver avant l’adjectif et le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes'">
<xsl:text> Il se trouve également après le nom et l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='no'">
<xsl:text>se trouve après le nom et l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le nom et l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes'">
<xsl:text> Il se trouve également après l’adjectif mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='no'">
<xsl:text>se trouve après l’adjectif mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes'">
<xsl:text>peut se trouver après l’adjectif mais avant le nom.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes'">
<xsl:text> Il se trouve également après le nom mais avant l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='no'">
<xsl:text>se trouve après le nom mais avant l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes'">
<xsl:text>peut se trouver après le nom mais avant l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes'">
<xsl:text> Il peut également se rattacher comme préfixe à l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='no'">
<xsl:text>se rattache comme préfixe à l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes'">
<xsl:text>peut se rattacher comme préfixe à l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes'">
<xsl:text> Il peut également se rattacher comme suffixe à l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='no'">
<xsl:text>se rattache comme suffixe à l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes'">
<xsl:text>peut se rattacher comme suffixe à l’adjectif.</xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes' or normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='yes' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes'">
<xsl:text> Il peut également se trouver ___</xsl:text>
<xsl:value-of select="//np/classifierSpecificAdjPosOther" />
<xsl:text>. </xsl:text>
</xsl:if>
					<xsl:if test="normalize-space(//np/classifierSpecificAdjPosBeforeBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterBoth/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterAdjBeforeN/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosAfterNBeforeAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosPrefixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosSuffixAdj/@checked)='no' and normalize-space(//np/classifierSpecificAdjPosOther/@checked)='yes'">
<xsl:text>se trouve ___</xsl:text>
<xsl:value-of select="//np/classifierSpecificAdjPosOther" />
<xsl:text>. </xsl:text>
</xsl:if>	
				</xsl:if>
</p>
</xsl:if>
			
			
		</section2>
		<section2 id="sNPPP">
			<secTitle>            <xsl:choose>
				<xsl:when test="//pp/@pPos='before'">Syntagmes prépositionnels</xsl:when>
				<xsl:when test="//pp/@pPos='after'">Syntagmes postpositionnels</xsl:when>
				<xsl:when test="//pp/@pPos='both'">Syntagmes prépositionnels et postpositionnels</xsl:when>
				<xsl:when test="//pp/@pPos='unknown'">Syntagmes adpositionnels</xsl:when>
			</xsl:choose>
</secTitle>
			<p contentType="ctPracticalIntro">
<xsl:text>Les noms simples et les noms composés peuvent avoir des modificateurs de syntagmes ou des compléments </xsl:text>
<xsl:choose>
					<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='both'">prépositionnels et/ou  postpositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
				</xsl:choose>
<xsl:text>. </xsl:text>
</p>
		   <p contentType="ctComparativeIntro">
<xsl:text>Les noms simples et les noms composés peuvent avoir des modificateurs ou de compléments de syntagmes </xsl:text>
<xsl:choose>
		   		<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
		   		<xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
		   		<xsl:when test="//pp/@pPos='both'">prépositionnels et/ou  postpositionnels</xsl:when>
		   		<xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
		   	</xsl:choose>
<xsl:text> tels que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the large, round bottle [of syrup]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (la grande bouteille ronde [de sirop])</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the boy’s letter [to that girl]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (la lettre du garçon [à la fille])</xsl:text>
</gloss>
<xsl:text>.  En plus de cela, des syntagmes </xsl:text>
<xsl:choose>
		      	<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
		      	<xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
		      	<xsl:when test="//pp/@pPos='both'">prépositionnels et/ou  postpositionnels</xsl:when>
		      	<xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
		      </xsl:choose>
<xsl:text>au génitif peuvent prendre la place du possesseur, comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>those dogs [of his]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (ces chiens [à lui])</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the tablecloth [of my mother’s]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (cette nappe [à ma mère])</xsl:text>
</gloss>
<xsl:text>.    En français et en anglais, le syntagme prépositionnel se place toujours après le nom.</xsl:text>
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
<xsl:text>, le syntagme </xsl:text>
<xsl:choose>
					<xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
					<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
					<xsl:when test="//pp/@pPos='both'">prépositionnel et/ou  postpositionnel</xsl:when>
					<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
				</xsl:choose>
<xsl:text> se trouve </xsl:text>
<xsl:choose>
				      	<xsl:when test="//np/@ppPos='before'">avant le</xsl:when>
				      	<xsl:when test="//np/@ppPos='after'">après le</xsl:when>
				      	<xsl:when test="//np/@ppPos='either'">de part ou d’autre de</xsl:when>
				         <xsl:when test="//np/@ppPos='unknown'">_______</xsl:when>
				      </xsl:choose>
<xsl:text> nom qu’il modifie. Voice quelques exemples de modificateurs de syntagme ou des compléments </xsl:text>
<xsl:choose>
					<xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
					<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
					<xsl:when test="//pp/@pPos='both'">prépositionnel et/ou  postpositionnel</xsl:when>
					<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
				</xsl:choose>
<xsl:text> en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> :</xsl:text>
</p>
			<example num="xNP.NPPP.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/compPPExample" />
<xsl:with-param name="sExNumber">xNP.NPPP.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
			<p>
<xsl:text>Voir la section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text> pour plus de détails sur les syntagmes </xsl:text>
<xsl:choose>
					<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='both'">prépositionnels et/ou  postpositionnels</xsl:when>
					<xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
				</xsl:choose>
<xsl:text> en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.</xsl:text>
</p>
		</section2>
<section2 id="sNPParticiple">
	<secTitle>Participes</secTitle>
   <p contentType="ctPracticalIntro">
<xsl:text>Les participes ou syntagmes participiaux peuvent fonctionner comme des adjectifs qualificatifs et modifier un nom. </xsl:text>
</p>
   <p contentType="ctComparativeIntro">
<xsl:text>Les participes ou syntagmes participiaux peuvent fonctionner comme des adjectifs qualificatifs et modifier un nom.  Voici quelques exemples en français avec le participe ou le syntagme participial entre parenthèses : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>le soleil clair, [brillant]</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mon enfant [larmoyant]</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>les livres [appréciés par des millions de lecteurs].</langData>
</p>
   <p>
<xsl:text>Voice quelques exemples en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> :</xsl:text>
</p>
   <example num="xNP.NPParticiple.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/partExample" />
<xsl:with-param name="sExNumber">xNP.NPParticiple.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
   <p contentType="ctPracticalIntro">
<xsl:text>Un participe ou syntagme participial peut ressembler à un nom et un complément. Ce syntagme complet occupe une position d’argument tout à fait normal, tel que le sujet, l’objet, l’objet indirect ou l’objet d’une adposition. Ceux-ci sont appelés gérondifs en anglais et dans certaines autres langues, mais le français utilise un infinitif au lieu d'un gérondif, c'est donc une phrase participe en français.</xsl:text>
</p>
   <p contentType="ctComparativeIntro">
<xsl:text>Un participe ou syntagme participial peut ressembler à un nom et un complément. Ce syntagme complet occupe une position d’argument normal tout à fait, tel que le sujet, l’objet, l’objet indirect ou l’objet d’une adposition. Ceux-ci sont appelés gérondifs en anglais et dans certaines autres langues, mais le français utilise un infinitif au lieu d'un gérondif, c'est donc une phrase participe en français. Certains exemples en anglais avec des syntagmes complets avec le syntagme avec nom verbal incluent : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[Studying participles] is challenging</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « [Etudier la grammaire] est difficile »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>He likes [reading Latin poetry]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « Il aime [lire la poésie latine] »</xsl:text>
</gloss>
<xsl:text>.  Voice quelques exemples français comme ceux-ci utiliser l’infinitif :</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le voleur a ouvert la porte en [cassant la serrure]</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Nous avons trouvé le chien en [cherchant dans le bois]</langData>
<xsl:text>.  De tels syntagmes peuvent être modifiés par un possesseur et/ou un autre déterminant, et quelquefois seul le participe reste le noyau d’un syntagme nominal comme dans : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>les blessés graves</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>les mourants</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>vos poursuivants</langData>
<xsl:text>.</xsl:text>
</p>
   <p>
<xsl:text>Voici quelques exemples de participes ou de syntagmes participiaux qui peuvent prendre la place d’un syntagme nominal en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> :</xsl:text>
</p>
   <example num="xNP.NPParticiple.18">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/partHeadExample" />
<xsl:with-param name="sExNumber">xNP.NPParticiple.18</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
   <p>
<xsl:text>Ces syntagmes participiaux peuvent être utilisés dans des syntagmes complets comme cela est illustré ci-dessous :</xsl:text>
</p>
   <example num="xNP.NPParticiple.22">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//np/partHeadSentExample" />
<xsl:with-param name="sExNumber">xNP.NPParticiple.22</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
   
</section2>		
	</section1>
	
	
		
		
	
	
		
		
		
		
		
	
	
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
	
		
		
		
	
	
		
		
		
		
		
		
		
	

	
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
   
   
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
   
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	

   
      
   
   
      
   
   
      
      
      
   
   
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
      
         
         
         
         
         
         
         
        
      
         
         
         
         
         
         
         
        
      
         
         
         
         
         
         
         
        
      
         
         
         
         
         
         
         
        
      
         
         
         
         
         
         
         
        
      
         
         
         
         
         
         
         
        
      
         
         
         
         
         
         
         
        
      
         
         
         
      
      
         
         
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
               
      
   
      
   
   
      
      
      
   
   
      
   
   
      
   
   
      
   
   
      
      
      
   
   
   
   
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
		
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
	
	
		
		
		
		
		
		
		
	
   
 
   
	
		
	
	
		
		
		
	
	
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
		 
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
	   
	   
	   
	
	
	   
	   
	   
	   
	   
	   
	   
	   
	   
	
	
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
   
	
	
		
	
	
	
	
		
		
		
	
	
	
		
		
		
	
		
		
	
	
		
		
		

		
		
		
	
	
		
		
		
	
	
		
	
	
		
	
   
   
   
      
      
      
      
      
      
         
      
      
      
      
      
      
      
        
      
      
      
      
      
      
      
        
      
      
      
      
      
      
      
        
      
      
      
      
      
      
      
        
   
   
      
      
      
      
      
      
         
      
      
      
      
      
      
      
        
      
      
      
      
      
      
      
        
      
      
      
      
      
      
      
        
      
      
      
      
      
      
      
        
   
   
      
      
      
   
   
      
      
      
   

	
	
	
		
	
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
			
			
			
			
			
			
			
			
			
			
			
			
			
			
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	
	
		
	
		
	
		
		
		
		
		
		
		
		
		
		
		
	
		
			
			
			
			
			
			
			
			
			
			
			
			
			
			
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	
		
	
		
	
		
		
		
		
		
		
		
		
		
		
		
	
		
			
			
			
			
			
			
			
			
			
			
			
			
			
			
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	
		
	
		
		
		
		
		
		
		
	
		
			
			
			
			
			
			
			
			
			
			
			
			
			
			
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	
		
		
		
		
		
		
		
	
		
			
			
			
			
			
			
			
			
			
			
			
			
			
			
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		


</xsl:template>
</xsl:stylesheet>
