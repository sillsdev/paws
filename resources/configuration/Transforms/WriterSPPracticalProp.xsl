<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="prop">
    <section1 id="sProp">
        <secTitle>Los nombres propios</secTitle>
       <p contentType="ctPracticalIntro">
<xsl:text>Los nombres propios son una clase especial de sustantivos o frases que sintácticamente funcionan igual que otros sustantivos o frases nominales.</xsl:text>
</p>
          <p contentType="ctComparativeIntro">
<xsl:text>Los nombres propios son una clase especial de sustantivos o frases que sintácticamente funcionan igual que otros sustantivos o frases nominales. En español, algunos nombres propios pueden presentarse solos, como </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Susana</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Oaxaca</langData>
<xsl:text>.  Otros funcionan como sustantivos compuestos, como </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>George Washington</langData>
<xsl:text>.  Los nombres propios también pueden contener los artículos y/o frases </xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
            </xsl:choose>
<xsl:text>, como en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>los Estados Unidos de América</langData>
<xsl:text>.  Muchas lenguas requieren un artículo antes de un nombre. También se presentan los apositivos.  En algunos casos aparecen con un posesivo, como en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mi hijo, David</langData>
<xsl:text>, pero apositivos se tratann más adelante en la sección </xsl:text>
<sectionRef sec="sCoordAppositive" />
<xsl:text>.  Además, los nombres propios se pueden modificar con los adjetivos y cláusulas relativas, como en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>México fuerte y orgulloso</langData>
<xsl:text> o </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>la Susana que conozco</langData>
<xsl:text>.</xsl:text>
</p>
       <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//prop/@pnClassifier)='yes'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, los nombres propios se marcan con clasificadores lo mismo que sustantivos como parte del sistema de concordancia.</xsl:text>
</p>
</xsl:if> 
       <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//prop/@pnClassifier)='no'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, los nombres propios no se marcan con clasificadores al contrario que sustantivos.</xsl:text>
</p>
</xsl:if>       
       <xsl:if test="normalize-space(//np/@artAndDem)!='no'">
<p>
<xsl:text>Los nombres propios</xsl:text>
<xsl:choose>
          <xsl:when test="//prop/@pnDeterminer='none'"> no pueden</xsl:when>
           <xsl:when test="//prop/@pnDeterminer='no'"> pueden</xsl:when>
           <xsl:when test="//prop/@pnDeterminer='yes'"> deben</xsl:when>
       </xsl:choose>
<xsl:text> contener un </xsl:text>
<xsl:choose>
          <xsl:when test="//np/@artAndDem='article'">artículo</xsl:when>
          <xsl:when test="//np/@artAndDem='demonstrative'">demostrativo</xsl:when>
          <xsl:when test="//np/@artAndDem='both'">artículo o demostrativo</xsl:when>
</xsl:choose>
<xsl:text> o un posesivo.</xsl:text>
</p>
</xsl:if>
        <p>
<xsl:text>Algunos ejemplos de nombres propios simples y compuestos en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> son los siguientes:</xsl:text>
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
<xsl:text>Algunos ejemplos de nombres propios con frases </xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
            </xsl:choose>
<xsl:text> son los siguientes:</xsl:text>
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
<xsl:text>Algunos ejemplos de nombres propios modificados por cláusulas relativas en oraciones completas son:</xsl:text>
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
