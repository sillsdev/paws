<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="prop">
    <section1 id="sProp">
        <secTitle>Proper Names</secTitle>
       <p contentType="ctPracticalIntro">
<xsl:text>Proper names are a special kind of noun or phrase that acts syntactically just like other nouns or nominal phrases.</xsl:text>
</p>
       <p contentType="ctComparativeIntro">
<xsl:text>Proper names are a special kind of noun or phrase that acts syntactically just like other nouns or nominal phrases.  In English, some proper names can stand alone, like </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Sue</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Russia</langData>
<xsl:text>.  Others are like compound nouns, such as </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>George Washington</langData>
<xsl:text>.  Proper names may also contain articles and/or </xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pPos='before'">prepositional</xsl:when>
                <xsl:when test="//pp/@pPos='after'">postpositional</xsl:when>
                <xsl:when test="//pp/@pPos='both'">prepositional or postpositional</xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">adpositional</xsl:when>
            </xsl:choose>
<xsl:text> phrases, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the United States of America</langData>
<xsl:text>.  Many languages require an article before a name.  Appositives also occur, possibly including a possessor, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>my son, David</langData>
<xsl:text>, but these will be handled later in section </xsl:text>
<sectionRef sec="sCoordAppositive" />
<xsl:text>.  In addition, proper names can be modified by adjectives and relative clauses, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the good, old USA</langData>
<xsl:text> or </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the Susan Welch that I know</langData>
<xsl:text>.</xsl:text>
</p>
       <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//prop/@pnClassifier)='yes'">
<p>
<xsl:text>In </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, proper names carry classifiers just like nouns as part of the concord agreement system.</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//prop/@pnClassifier)='no'">
<p>
<xsl:text>In </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, proper names do not carry classifiers as nouns do as part of the concord agreement system.</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//np/@artAndDem)!='no'">
<p>
<xsl:text>Proper names in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
          <xsl:when test="//prop/@pnDeterminer='none'"> may not</xsl:when>
           <xsl:when test="//prop/@pnDeterminer='no'"> may but are not required to</xsl:when>
           <xsl:when test="//prop/@pnDeterminer='yes'"> must</xsl:when>
       </xsl:choose>
<xsl:text> contain </xsl:text>
<xsl:choose>
          <xsl:when test="//np/@artAndDem='article'">an article</xsl:when>
          <xsl:when test="//np/@artAndDem='demonstrative'">a demonstrative</xsl:when>
          <xsl:when test="//np/@artAndDem='both'">an article and/or demonstrative</xsl:when>
</xsl:choose>
<xsl:text> or a possessor.</xsl:text>
</p>
</xsl:if>
       <p>
<xsl:text>Examples with simple and compound proper names in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> include:</xsl:text>
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
<xsl:text>Examples of proper names with </xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pPos='before'">prepositional</xsl:when>
                <xsl:when test="//pp/@pPos='after'">postpositional</xsl:when>
                <xsl:when test="//pp/@pPos='both'">prepositional or postpositional</xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">adpositional</xsl:when>
            </xsl:choose>
<xsl:text> phrases in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> include:</xsl:text>
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
<xsl:text>Some examples of proper names modified by relative clauses included in simple full sentences are:</xsl:text>
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
