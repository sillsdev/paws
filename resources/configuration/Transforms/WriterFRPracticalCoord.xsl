<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="coord">
  <section1 id="sCoord">
  	<secTitle>Constructions de coordination</secTitle>
	<p contentType="ctComparativeIntro">
<xsl:text>Cette section commence par res constructions de coordination simples, où il y a une conjonction explicite entre les conjoints. Ceci comprend la coordination au niveau de la phrase et au niveau du syntagme verbal, du syntagme nominal, du syntagme </xsl:text>
<xsl:choose>
			<xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
		 <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
		 <xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
		 <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
		</xsl:choose>
<xsl:text> et du syntagme adjectival. Ensuite les listes et les constructions appositives seront traitées, au niveau du syntagme nominal seulement. </xsl:text>
</p>

  	<p contentType="ctComparativeIntro">
<xsl:text>En français, les conjonctions utilisées entre deux conjoncts sont </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>et</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>ou</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mais</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>et/ou</langData>
<xsl:text>.  En plus il y a d’autres constructions de coordination qui exigent une conjonction initiale, comme </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>soit...soit</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>ni...ni</langData>
<xsl:text>.  Certaines langues utilisent aussi un mot qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>avec</langData>
<xsl:text> comme conjonction entre syntagmes nominaux.
</xsl:text>
</p>
     <p contentType="ctPracticalIntro">
<xsl:text>Des exemples de la coordination de phrases, de syntagmes verbaux, de syntagmes nominaux, de syntagmes </xsl:text>
<xsl:choose>
     		<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
           <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
           <xsl:when test="//pp/@pPos='both'">adpositionnels</xsl:when>
           <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
     	</xsl:choose>
<xsl:text> et de syntagmes adjectivaux seront donnés. Ensuite les listes et les constructions appositives seront décrites. </xsl:text>
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
<xsl:text>, on utilise les conjonctions suivantes entre deux conjoncts :</xsl:text>
</p>
			<example num="xCoord.12">
<table border="1">
					<tr>
						<th>Morphèmes</th>
						<th>Glose</th>
					</tr>
					<tr>
<xsl:for-each select="//coord/and/form[1]">
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
<xsl:otherwise>et</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//coord/and/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//coord/and/form[position() &gt; 1]">
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
<xsl:otherwise>et</xsl:otherwise>
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
<xsl:for-each select="//coord/andThen/form[1]">
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
<xsl:otherwise>et puis</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//coord/andThen/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//coord/andThen/form[position() &gt; 1]">
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
<xsl:otherwise>et puis</xsl:otherwise>
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
<xsl:for-each select="//coord/or/form[1]">
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
<xsl:otherwise>ou</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//coord/or/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//coord/or/form[position() &gt; 1]">
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
<xsl:otherwise>ou</xsl:otherwise>
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
<xsl:for-each select="//coord/andOr/form[1]">
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
<xsl:otherwise>et/ou</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//coord/andOr/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//coord/andOr/form[position() &gt; 1]">
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
<xsl:otherwise>et/ou</xsl:otherwise>
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
<xsl:for-each select="//coord/but/form[1]">
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
<xsl:otherwise>mais</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//coord/but/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//coord/but/form[position() &gt; 1]">
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
<xsl:otherwise>mais</xsl:otherwise>
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
<xsl:for-each select="//coord/with/form[1]">
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
<xsl:otherwise>avec</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//coord/with/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//coord/with/form[position() &gt; 1]">
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
<xsl:otherwise>avec</xsl:otherwise>
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
<xsl:for-each select="//coord/other/form[1]">
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
<xsl:otherwise>autres</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//coord/other/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//coord/other/form[position() &gt; 1]">
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
<xsl:otherwise>autres</xsl:otherwise>
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
<xsl:text> on utilise les conjonctions suivantes dans une construction de type </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>soit...soit</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>ni...ni</langData>
<xsl:text> :</xsl:text>
</p>
			<example num="xCoord.16">
<table border="1">
					<tr>
						<th>Morphèmes</th>
						<th>Glose</th>
					</tr>
					<tr>
<xsl:for-each select="//coord/either/form[1]">
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
<xsl:otherwise>soit (partie initiale)</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//coord/either/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//coord/either/form[position() &gt; 1]">
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
<xsl:otherwise>soit (partie initiale)</xsl:otherwise>
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
<xsl:for-each select="//coord/eitherOr/form[1]">
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
<xsl:otherwise>ou, soit (deuxième partie)</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//coord/eitherOr/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//coord/eitherOr/form[position() &gt; 1]">
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
<xsl:otherwise>ou, soit (deuxième partie)</xsl:otherwise>
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
<xsl:for-each select="//coord/neither/form[1]">
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
<xsl:otherwise>ni (partie initiale)</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//coord/neither/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//coord/neither/form[position() &gt; 1]">
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
<xsl:otherwise>ni (partie initiale)</xsl:otherwise>
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
<xsl:for-each select="//coord/nor/form[1]">
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
<xsl:otherwise>ni (deuxième partie)</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//coord/nor/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//coord/nor/form[position() &gt; 1]">
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
<xsl:otherwise>ni (deuxième partie)</xsl:otherwise>
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

	 <p>
<xsl:text></xsl:text>
<xsl:choose>
	 	<xsl:when test="//coord/@conjWord='yes'">Toutes les conjonctions ci-dessus sont écrites comme des mots indépendants entre les conjoncts.</xsl:when>
	 	<xsl:when test="//coord/@conjWord='some'">Quelques-unes de ces conjonctions sont écrites comme des mots indépendants entre les conjoncts, mais d’autres se rattachent </xsl:when>
	 	<xsl:when test="//coord/@conjWord='no'">Toutes les conjonctions se rattachent </xsl:when>
	 </xsl:choose>
<xsl:if test="normalize-space(//coord/@conjWord)!='yes'">
	 	<xsl:if test="normalize-space(//coord/proclitic/@checked)='yes' and normalize-space(//coord/enclitic/@checked)='no'">
<xsl:text>au début du deuxième conjonct comme des proclitiques de syntagme</xsl:text>
</xsl:if>
	 	<xsl:if test="normalize-space(//coord/proclitic/@checked)='no' and normalize-space(//coord/enclitic/@checked)='yes'">
<xsl:text>soit comme enclitiques de syntagme</xsl:text>
</xsl:if>
	 	<xsl:if test="normalize-space(//coord/proclitic/@checked)='yes' and normalize-space(//coord/enclitic/@checked)='yes'">
<xsl:text>soit au début du deuxième conjonct ou à la fin du premier conjonct comme des clitiques de syntagme</xsl:text>
</xsl:if>
	    <xsl:if test="normalize-space(//coord/attachesOther/@checked)='no'">
<xsl:text>. </xsl:text>
</xsl:if>
	 	<xsl:if test="normalize-space(//coord/proclitic/@checked)='no' and normalize-space(//coord/enclitic/@checked)='no' and normalize-space(//coord/attachesOther/@checked)='yes'">
<xsl:text>à ___</xsl:text>
<xsl:value-of select="//coord/attachesOther" />
<xsl:text>. </xsl:text>
</xsl:if>
	 	<xsl:if test="normalize-space(//coord/proclitic/@checked)='yes' and normalize-space(//coord/attachesOther/@checked)='yes' or normalize-space(//coord/enclitic/@checked)='yes' and normalize-space(//coord/attachesOther/@checked)='yes'">
<xsl:text> et peuvent aussi se rattacher à ___</xsl:text>
<xsl:value-of select="//coord/attachesOther" />
<xsl:text>. </xsl:text>
</xsl:if>
	 </xsl:if>
<xsl:if test="normalize-space(//coord/@noConj)='yes'">
<xsl:text>  Outre ces conjonctions, deux éléments peuvent être joints sans aucune conjonction, au moins au niveau du syntagme nominal et de la phrase. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//coord/@noConj)='no'">
<xsl:text>  Lorsque seulement deux éléments seulement sont joints, une des conjonctions ci-dessus doit être présente.</xsl:text>
</xsl:if>
</p>

	 <section2 id="sCoordLevels">
	 	<secTitle>Les niveaux de coordination</secTitle>

	 	<p>
<xsl:text>Dans les sections qui suivent on présente les différents niveaux de coordination.</xsl:text>
</p>
		<section3 id="sCoordSentence">
			<secTitle>Coordination de syntagmes</secTitle>
			<p contentType="ctComparativeIntro">
<xsl:text>En général, la coordination se pratique entre des catégories pareilles. Au niveau de la phrase, ceci veut dire que deux phrases déclaratives peuvent se joindre, comme suit : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jean est allé au bureau ce matin et il vient de rentrer</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Ou je viendrai à la soirée ou j’enverrai ma sœur</langData>
<xsl:text>, ou deux questions, comme suit : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>A quelle heure le courrier est-il arrivé et où est mon colis?</langData>
<xsl:text>  Lorsqu’on utilise la conjonction de contraste </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mais</langData>
<xsl:text>, un des conjoints doit être au négatif, comme suit : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jean est allé au bureau ce matin mais il n’est pas revenu</langData>
<xsl:text>.</xsl:text>
</p>
		   <p contentType="ctPracticalIntro">
<xsl:text>En général, la coordination se fait entre des éléments de catégorie identique. Pour les phrases, ceci veut dire que deux phrases déclaratives, ou deux questions, peuvent être coordonnées. Quand la conjonction contrastive est </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mais</langData>
<xsl:text>, un des conjoncts est fréquemment négatif.</xsl:text>
</p>
		   <p>
<xsl:text>Voici quelques exemples de la coordination de deux phrases en </xsl:text>
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
			<example num="xCoord.CoordLevels.CoordSentence.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//coord/sentExample" />
<xsl:with-param name="sExNumber">xCoord.CoordLevels.CoordSentence.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
			<p>
<xsl:text>Voici quelques exemples de la coordination séquentielle entre deux phrases :</xsl:text>
</p>
			<example num="xCoord.CoordLevels.CoordSentence.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//coord/sentSeqExample" />
<xsl:with-param name="sExNumber">xCoord.CoordLevels.CoordSentence.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
			<p>
<xsl:text>Voir dans la section </xsl:text>
<sectionRef sec="sAdvCl" />
<xsl:text> pour des exemples de mots et propositions d’introduction quelquefois appelés coordination, ainsi que des exemples de propositions adverbiales, qui sont la subordination.</xsl:text>
</p>
</section3>
		<section3 id="sCoordVP">
			<secTitle>Coordination de syntagmes verbaux</secTitle>
			<p contentType="ctComparativeIntro">
<xsl:text>La coordination de syntagmes verbaux implique deux syntagmes verbaux qui partagent le même sujet. Voici quelques exemples en français qui ont des syntagmes verbaux de coordination : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Guillaume a fait une course et a gagné le prix</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je viendrai à la soirée ou j’enverrai ma soeur</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je ne viendrai à la soirée ni n’enverrai ma soeur</langData>
<xsl:text>.</xsl:text>
</p>
		   <p contentType="ctPracticalIntro">
<xsl:text>La coordination de syntagmes verbaux implique deux syntagmes verbaux qui partagent le même sujet.</xsl:text>
</p>
		   <p>
<xsl:text>Voici quelques exemples de la coordination de syntagmes verbaux en </xsl:text>
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
			<example num="xCoord.CoordLevels.CoordVP.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//coord/vpExample" />
<xsl:with-param name="sExNumber">xCoord.CoordLevels.CoordVP.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</section3>
		<section3 id="sCoordDP">
			<secTitle>Coordination de syntagmes nominaux</secTitle>
			<p contentType="ctComparativeIntro">
<xsl:text>Généralement, les syntagmes nominaux coordonnés fonctionnent comme sujet, objet, objet indirect, et objet d’une </xsl:text>
<xsl:choose>
					<xsl:when test="//pp/@pPos='before'">préposition</xsl:when>
			      <xsl:when test="//pp/@pPos='after'">postposition</xsl:when>
			      <xsl:when test="//pp/@pPos='both'">adposition</xsl:when>
			      <xsl:when test="//pp/@pPos='unknown'">adposition</xsl:when>
				</xsl:choose>
<xsl:text>, tout comme un syntagme nominal normal. Voici des exemples en français qui comprennent la coordination de syntagmes nominaux : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Guillaume a couru dans le Marathon à Boston et aux Jeux Olympiques</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Ma soeur ou moi serons là</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Ni ta soeur ni mon frère seront là</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je viendrai à la répétition mais pas au dîner</langData>
<xsl:text>. </xsl:text>
</p>
		   <p contentType="ctPracticalIntro">
<xsl:text>Généralement, les syntagmes nominaux coordonnés fonctionnent comme sujet, objet, objet indirect, et objet d’une </xsl:text>
<xsl:choose>
		   		<xsl:when test="//pp/@pPos='before'">préposition</xsl:when>
		   		<xsl:when test="//pp/@pPos='after'">postposition</xsl:when>
		   		<xsl:when test="//pp/@pPos='both'">adposition</xsl:when>
		   		<xsl:when test="//pp/@pPos='unknown'">adposition</xsl:when>
		   	</xsl:choose>
<xsl:text>, tout comme un syntagme nominal normal.</xsl:text>
</p>
		   <p>
<xsl:text>Voici quelques exemples de la coordination de syntagmes nominaux en </xsl:text>
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
			<example num="xCoord.CoordLevels.CoordDP.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//coord/dpExample" />
<xsl:with-param name="sExNumber">xCoord.CoordLevels.CoordDP.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</section3>
	  <section3 id="sCoordPP">
		  <secTitle>
		  <xsl:choose>
		  	<xsl:when test="//pp/@pPos='before'">Coordination de syntagmes prépositionnels</xsl:when>
		  	<xsl:when test="//pp/@pPos='after'">Coordination de syntagmes postpositionnels</xsl:when>
		  	<xsl:when test="//pp/@pPos='both'">Coordination de syntagmes adpositionnels</xsl:when>
		  	<xsl:when test="//pp/@pPos='unknown'">Coordination de syntagmes adpositionnels</xsl:when>
			</xsl:choose>
</secTitle>
		  <p contentType="ctComparativeIntro">
<xsl:text>Généralement il est possible de trouver les syntagmes </xsl:text>
<xsl:choose>
		     	<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
				<xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
				<xsl:when test="//pp/@pPos='both'">adpositionnels</xsl:when>
				<xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
			 </xsl:choose>
<xsl:text> de coordination dans toutes les positions occupées par un syntagme </xsl:text>
<xsl:choose>
		     	<xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
		        <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
		        <xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
		        <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
		     </xsl:choose>
<xsl:text> normal. Voici des exemples en français de phrases qui comprennent des syntagmes prépositionnels de coordination : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Guillaume a couru à travers la forêt et à travers le pont en courant</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je viendrai avec toi à la répétition mais pas chez toi</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je viendrai soit aux noces, soit à la réception</langData>
<xsl:text>.</xsl:text>
</p>
	     <p contentType="ctPracticalIntro">
<xsl:text>Généralement il est possible de trouver les syntagmes </xsl:text>
<xsl:choose>
	     		<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
	     		<xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
	     		<xsl:when test="//pp/@pPos='both'">adpositionnels</xsl:when>
	     		<xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
	     	</xsl:choose>
<xsl:text> de coordination dans toutes les positions occupées par un syntagme </xsl:text>
<xsl:choose>
	     		<xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
	     		<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
	     		<xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
	     		<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
	     	</xsl:choose>
<xsl:text> normal.</xsl:text>
</p>
	     <p>
<xsl:text>Voici quelques exemples en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> de coordination de syntagmes </xsl:text>
<xsl:choose>
			  	<xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
				  <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
			  	<xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
				  <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
</xsl:choose>
<xsl:text> :</xsl:text>
</p>
		  <example num="xCoord.CoordLevels.CoordPP.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//coord/coordppExample" />
<xsl:with-param name="sExNumber">xCoord.CoordLevels.CoordPP.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	  </section3>
	  <section3 id="sCoordAdj">
	  	<secTitle>Coordination de syntagmes adjectivaux</secTitle>
			<p contentType="ctComparativeIntro">
<xsl:text>Finalement, les adjectifs ou les syntagmes adjectivaux peuvent normalement être coordinés, et lorsqu’ils modifient un nom, comme suit : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le chien noir et blanc est à mon fils</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Ma soeur veut une bougie rouge vif ou bleu clair</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Cela paraît être une plaie terriblement douloureuse et très dangereuse sur ta jambe</langData>
<xsl:text>, et lorsqu’ils servent d’adjectif  prédicatif dans une phrase copulative, comme suit : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>La plaie sur ta jambe est terriblement douloureuse et très dangereuse</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Cette étoffe est très lisse et soyeuse</langData>
<xsl:text>.</xsl:text>
</p>
	     <p contentType="ctPracticalIntro">
<xsl:text>Enfin, les adjectifs ou les syntagmes adjectivaux peuvent généralement être coordonnés, à la fois lorsqu’ils modifient un nom et lorsqu’ils servent de prédicat adjectival dans une phrase à copule.</xsl:text>
</p>
	     <p>
<xsl:text>Voici quelques exemples en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> de coordination de syntagmes adjectivaux :</xsl:text>
</p>
			<example num="xCoord.CoordLevels.CoordAdj.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//coord/adjExample" />
<xsl:with-param name="sExNumber">xCoord.CoordLevels.CoordAdj.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	  </section3>
	 </section2>
	 <section2 id="sCoordList">
		<secTitle>Listes</secTitle>
	 	<p contentType="ctComparativeIntro">
<xsl:text>Les listes comprennent trois ou plus éléments conjoncts qui forment un seul syntagme nominal. Les éléments initiaux sont séparés normalement par des virgules, et il y a une conjonction explicite avant l’élément final, quoique d’autres possibilités existent. Voici quelques exemples de syntagmes nominaux sous forme de listes en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[Jean, Guillaume, Susanne et Marie]</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[Jean, Guillaume, Susanne et/ou Marie]</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[Jean et Guillaume ou Susanne et Marie]</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[un chat, deux chiens et un poulet, mais pas un singe]</langData>
<xsl:text>.</xsl:text>
</p>
	 	<p contentType="ctPracticalIntro">
<xsl:text>Les listes comprennent trois ou plus éléments conjoncts qui forment un seul syntagme nominal. Les éléments initiaux sont généralement séparés par des virgules, et il y a une conjonction explicite avant l’élément final, quoique d’autres possibilités existent. </xsl:text>
</p>
	    
		<p>
<xsl:text>Voici quelques exemples de listes en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> dans un syntagme nominal :</xsl:text>
</p>
		<example num="xCoord.CoordList.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//coord/listExample" />
<xsl:with-param name="sExNumber">xCoord.CoordList.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	 </section2>


	 <section2 id="sCoordAppositive">
		<secTitle>Appositifs</secTitle>
	 	<p contentType="ctComparativeIntro">
<xsl:text>Les appositifs aussi forment un seul syntagme nominal. Les appositifs sont généralement formés d’un nom suivi d’une virgule, puis vient une description suivie d’une virgule; l’ordre peut être inversé. Voici quelques exemples en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[George Washington, le premier président des Etats Unis]</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[Mon frère, Jacques]</langData>
<xsl:text>.</xsl:text>
</p>
	 	<p contentType="ctPracticalIntro">
<xsl:text>Les appositifs aussi forment un seul syntagme nominal. Les appositifs sont généralement formés d’un nom suivi d’une virgule, puis vient une description suivie d’une virgule; l’ordre peut être inversé.</xsl:text>
</p>
	    <p>
<xsl:text>Voici des exemples d’appositifs en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> dans un syntagme nominal :</xsl:text>
</p>
		<example num="xCoord.CoordAppositive.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//coord/appositiveExample" />
<xsl:with-param name="sExNumber">xCoord.CoordAppositive.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	 </section2>


  </section1>


   
	  
   
   
	  
   
   
	  
   

      
         
         
         
         
   
      
      
      
     
   
      
      
      
     
   
      
     
   
      
      
      
         
         
        
   
      
      
      
      
      
      
      
     
   
</xsl:template>
</xsl:stylesheet>
