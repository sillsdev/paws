<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="prop">
    <section1 id="sProp">
        <secTitle>Noms propres</secTitle>
       <p contentType="ctPracticalIntro">
<xsl:text>Les noms propres sont un type particulier de substantif ou de syntagme qui fonctionne tout comme les autres substantifs ou syntagmes nominaux sur le plan syntaxique.</xsl:text>
</p>
       <p contentType="ctComparativeIntro">
<xsl:text>Les noms propres sont un type particulier de substantif ou de syntagme qui fonctionne tout comme les autres substantifs ou syntagmes nominaux sur le plan syntaxique.  En français, certains noms propres peuvent se présenter seuls, comme </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Susanne</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Russie</langData>
<xsl:text>.  D’autres sont comme les substantifs composés, tels que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>George Washington</langData>
<xsl:text>.  Les noms propres peuvent aussi contenir des articles et/ou des syntagmes </xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
            </xsl:choose>
<xsl:text> comme </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>les Etats-Unis d’Amérique</langData>
<xsl:text>.  Bien des langues exigent un article devant un nom.  Les appositifs se présentent, parfois avec un possesseur, comme </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mon fils, David</langData>
<xsl:text> mais ils seront traités plus tard dans la section </xsl:text>
<sectionRef sec="sCoordAppositive" />
<xsl:text>.  En plus, les noms propres peuvent être modifiés par des adjectifs et des propositions relatives, comme dans  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>la belle France</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>la Susanne Leblanc que je connais</langData>
<xsl:text>.</xsl:text>
</p>
        <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//prop/@pnClassifier)='yes'">
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
<xsl:text>, les noms propres portent des classificateurs qui marquent l’accord, comme pour les substantifs.</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//prop/@pnClassifier)='no'">
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
<xsl:text>, les noms propres ne portent pas de classificateurs pour marquer l’accord comme pour les substantifs.</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)!='no'">
<p>
<xsl:text>Les nom propres en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
            <xsl:when test="//prop/@pnDeterminer='none'"> ne peuvent pas</xsl:when>
            <xsl:when test="//prop/@pnDeterminer='no'"> peuvent, mais ce n’est pas obligatoire</xsl:when>
            <xsl:when test="//prop/@pnDeterminer='yes'"> doivent</xsl:when>
       </xsl:choose>
<xsl:text> contenir </xsl:text>
<xsl:choose>
          <xsl:when test="//np/@artAndDem='article'">un article</xsl:when>
           <xsl:when test="//np/@artAndDem='demonstrative'">un démonstratif</xsl:when>
           <xsl:when test="//np/@artAndDem='both'">un article et/ou un démonstratif</xsl:when>
</xsl:choose>
<xsl:text> ou un possesseur.</xsl:text>
</p>
</xsl:if>
       <p>
<xsl:text>Voice quelques exemples avec des noms propres simples et composés en </xsl:text>
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
        <example num="xProp.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//prop/example" />
<xsl:with-param name="sExNumber">xProp.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
        <p>
<xsl:text>Voice quelques exemples de noms propres avec des syntagmes </xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
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
<xsl:text> :</xsl:text>
</p>
        <example num="xProp.20">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//prop/ppExample" />
<xsl:with-param name="sExNumber">xProp.20</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
        <p>
<xsl:text>Voici quelques exemples de noms propres modifiés par des propositions relatives comprises dans des phrases simples mais complètes :</xsl:text>
</p>
        <example num="xProp.24">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//prop/relClExample" />
<xsl:with-param name="sExNumber">xProp.24</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
    </section1>
   
	  
	  
	  
   
   
	  
	  
	  
   
   
	  
   
</xsl:template>
</xsl:stylesheet>
