<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="advp">
    <section1 id="sAdvP">
       <secTitle>Adverbes</secTitle>
        <p>
<xsl:text>Les adverbes expriment quatre types fondamentaux d’information : le temps, le lieu, la manière, et la raison ou le but. Les indéfinis adverbiaux seront également traités. Pour les adverbes interrogatifs voir la section </xsl:text>
<sectionRef sec="sQuesContent" />
<xsl:text>.</xsl:text>
</p>

        <section2 id="sAdvPTemporal">
            <secTitle>Adverbes de temps</secTitle>
            <p contentType="ctComparativeIntro">
<xsl:text>Les adverbes de temps comprennent les mots français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>déjà</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>alors</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>bientôt</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>maintenant</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>plus tard</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>toujours</langData>
<xsl:text>. </xsl:text>
</p>

           <p>
<xsl:text>Voici les adverbes de temps en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> : 
              </xsl:text>
</p>           
           <example num="xAdvP.AdvPTemporal.8">
<table border="1">
                 <tr>
                    <th>Adverbes de temps</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/temporalExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
              </table>
</example>
           
           <p contentType="ctComparativeIntro">
<xsl:text>Beaucoup de langues admettent que les mots de degré modifient les adverbes. Voici quelques exemples, en français, de syntagmes adverbiaux temporels positifs liés aux modificateurs : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>très bientôt</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>bien plus tard</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>seulement maintenant</langData>
<xsl:text>. </xsl:text>
</p>

           <xsl:if test="normalize-space(//advp/@temporalDegree)='no'">
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
<xsl:text>, les adverbes de temps ne sont ni modifiés ni intensifiés.</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeWord/@checked)='yes'">
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
<xsl:text>, les adverbes de temps peuvent être modifiés par des mots de degré placés </xsl:text>
<xsl:if test="normalize-space(//advp/temporalDegreeWordBefore/@checked)='yes' and normalize-space(//advp/temporalDegreeWordAfter/@checked)='no' and normalize-space(//advp/temporalDegreeWordBoth/@checked)='no'">
<xsl:text>avant</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalDegreeWordBefore/@checked)='no' and normalize-space(//advp/temporalDegreeWordAfter/@checked)='yes' and normalize-space(//advp/temporalDegreeWordBoth/@checked)='no'">
<xsl:text>après</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalDegreeWordBefore/@checked)='no' and normalize-space(//advp/temporalDegreeWordAfter/@checked)='no' and normalize-space(//advp/temporalDegreeWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalDegreeWordBefore/@checked)='yes' and normalize-space(//advp/temporalDegreeWordAfter/@checked)='yes' and normalize-space(//advp/temporalDegreeWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalDegreeWordBefore/@checked)='yes' and normalize-space(//advp/temporalDegreeWordAfter/@checked)='no' and normalize-space(//advp/temporalDegreeWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalDegreeWordBefore/@checked)='no' and normalize-space(//advp/temporalDegreeWordAfter/@checked)='yes' and normalize-space(//advp/temporalDegreeWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalDegreeWordBefore/@checked)='yes' and normalize-space(//advp/temporalDegreeWordAfter/@checked)='yes' and normalize-space(//advp/temporalDegreeWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalDegreeWordOther/@checked)='no'">
<xsl:text> l’adverbe de temps.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalDegreeWordBefore/@checked)='no' and normalize-space(//advp/temporalDegreeWordAfter/@checked)='no' and normalize-space(//advp/temporalDegreeWordBoth/@checked)='no' and normalize-space(//advp/temporalDegreeWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//advp/temporalDegreeWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalDegreeWordBefore/@checked)='yes' and normalize-space(//advp/temporalDegreeWordOther/@checked)='yes' or normalize-space(//advp/temporalDegreeWordAfter/@checked)='yes' and normalize-space(//advp/temporalDegreeWordOther/@checked)='yes' or normalize-space(//advp/temporalDegreeWordBoth/@checked)='yes' and normalize-space(//advp/temporalDegreeWordOther/@checked)='yes'">
<xsl:text>, et qui peuvent aussi se placer ___</xsl:text>
<xsl:value-of select="//advp/temporalDegreeWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Voici les mots de degré qui peuvent modifier les adverbes de temps en </xsl:text>
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
</xsl:if>
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeWord/@checked)='yes'">
<example num="xAdvP.AdvPTemporal.16">
<table border="1">
                 <tr>
                    <th>Mots de degré</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/temporalDegreeExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
              </table>
</example>
</xsl:if>     
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeWord/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’adverbes de temps avec des mots de degré qui les modifient :</xsl:text>
</p>
</xsl:if>          
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeWord/@checked)='yes'">
<example num="xAdvP.AdvPTemporal.20">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//advp/temporalPhraseExample" />
<xsl:with-param name="sExNumber">xAdvP.AdvPTemporal.20</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>            
           
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeAttaches/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeWord/@checked)='yes'">
<xsl:text>Les adverbes de temps peuvent également avoir </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeWord/@checked)='no'">
<xsl:text>En </xsl:text>
                 <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, il existe </xsl:text>
</xsl:if>
<xsl:text>des affixes ou des clitiques qui se rattachent à l’adverbe de temps pour l’intensifier. Les affixes ou clitiques qui peuvent modifier les adverbes de temps sont les suivants :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeAttaches/@checked)='yes'">
<example num="xAdvP.AdvPTemporal.24">
<table border="1">
                 <tr>
                    <th>Affixes ou clitiques de degré</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/temporalDegreeAffixExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
              </table>
</example>
</xsl:if>
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeAttaches/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’adverbes de temps auxquels se rattachent des affixes ou des clitiques de degré :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeAttaches/@checked)='yes'">
<example num="xAdvP.AdvPTemporal.28">
<table border="1">
                 <tr>
                    <th>Adverbes de temps modifiés</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/temporalPhraseAffixExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
              </table>
</example>
</xsl:if>
           
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeRedup/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/temporalDegreeWord/@checked)='yes' or normalize-space(//advp/temporalDegreeAttaches/@checked)='yes'">
<xsl:text>Les adverbes de temps on peut aussi </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeWord/@checked)='no' and normalize-space(//advp/temporalDegreeAttaches/@checked)='no'">
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
</xsl:if>
<xsl:text>utiliser la réduplication pour intensifier le sens de l’adverbe de temps.  Voici quelques exemples d’adverbes de temps pour lesquels la réduplication modifie ou intensifie le sens :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeRedup/@checked)='yes'">
<example num="xAdvP.AdvPTemporal.32">
<table border="1">
                 <tr>
                    <th>Adverbes de temps avec réduplication</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/temporalDegreeRedupExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
              </table>
</example>
</xsl:if>
           
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeOther/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/temporalDegreeWord/@checked)='yes' or normalize-space(//advp/temporalDegreeAttaches/@checked)='yes' or normalize-space(//advp/temporalDegreeRedup/@checked)='yes'">
<xsl:text>Les adverbes de temps peuvent aussi </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeWord/@checked)='no' and normalize-space(//advp/temporalDegreeAttaches/@checked)='no' and normalize-space(//advp/temporalDegreeRedup/@checked)='no'">
<xsl:text>En </xsl:text>
                 <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, les adverbes de temps peuvent </xsl:text>
</xsl:if>
<xsl:text>être modifiés ou intensifiés par ___ </xsl:text>
<xsl:value-of select="//advp/temporalDegreeOther" />
<xsl:text>.  Voici quelques exemples d’adverbes de temps qui ont été modifiés ou intensifiés de cette façon :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//advp/@temporalDegree)='yes' and normalize-space(//advp/temporalDegreeOther/@checked)='yes'">
<example num="xAdvP.AdvPTemporal.36">
<table border="1">
                 <tr>
                    <th>Adverbes de temps modifiés ou intensifiés</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/temporalDegreeOtherExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
              </table>
</example>
</xsl:if>
           
           <p>
<xsl:text>L’élément temporel d’une phrase est souvent exprimé par des noms. En voici quelques exemples : </xsl:text>
</p>
           <example num="xAdvP.AdvPTemporal.40">
<table border="1">
                 <tr>
                    <th>Noms temporels</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/temporalNounExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
              </table>
</example>
           <p>
<xsl:text>Ces noms temporels peuvent eux aussi être modifiés, comme dans ces syntagmes nominaux suivants : </xsl:text>
</p>
           <example num="xAdvP.AdvPTemporal.44">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//advp/temporalNounModifierExample" />
<xsl:with-param name="sExNumber">xAdvP.AdvPTemporal.44</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
                     
              <p contentType="ctPracticalIntro">
<xsl:text>L’élément temporel d’une phrase peut être exprimé par d’autres types de mots or de syntagmes, tels que des syntagmes adpositionnels et des propositions adverbiales. Ces syntagmes sont placés dans la même position, dans une proposition, que les adverbes de temps. On les trouve généralement soit en position initiale ou en position finale. Voir la section </xsl:text>
<sectionRef sec="sNP" />
<xsl:text> pour la structure des syntagmes nominaux et la section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text> pour les informations sur les syntagmes adpositionnels. Voir aussi la section </xsl:text>
<sectionRef sec="sAdvClTemporal" />
<xsl:text> pour les exemples de propositions adverbiales temporelles.</xsl:text>
</p>
           <p contentType="ctComparativeIntro">
<xsl:text>L’élément de temps d’une phrase peut être exprimé par d’autres types de mots ou syntagmes, tels que les syntagmes prépositionnels </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pendant longtemps</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>dans peu de temps</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>à 10 heures</langData>
<xsl:text>, et
                 et les propositions adverbiales </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pendant que vous travaillez</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>quand Suzanne est arrivée</langData>
<xsl:text>.  Ces syntagmes se trouvent dans la même position dans une proposition, que les adverbes temporels.  On les trouve généralement soit en position initiale ou en position finale. Voir la section </xsl:text>
<sectionRef sec="sNP" />
<xsl:text> pour la structure des syntagmes nominaux et la section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text> pour les informations sur les syntagmes adpositionnels. Voir aussi la section </xsl:text>
<sectionRef sec="sAdvClTemporal" />
<xsl:text> pour les exemples de propositions adverbiales temporelles.</xsl:text>
</p>
        </section2>
       <section2 id="sAdvPLocative">
          <secTitle>Adverbes locatifs </secTitle>
          <p contentType="ctComparativeIntro">
<xsl:text>Les adverbes locatifs comprennent les mots français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>ici</langData>
<xsl:text> , </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>là</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>partout</langData>
<xsl:text>. </xsl:text>
</p>
          
          <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//advp/@locativeClassifier)='yes'">
<p>
<xsl:text>Voici les radicaux des adverbes locatifs en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>. Chacune peut être réalisée avec le classificateur approprié.</xsl:text>
</p>
</xsl:if>           
          <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' or normalize-space(//advp/@locativeClassifier)!='yes'">
<p>
<xsl:text>Voici les adverbes en </xsl:text>
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
</xsl:if>           
          <example num="xAdvP.AdvPLocative.10">
<table border="1">
                <tr>
                   <th>Adverbes locatifs</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/locativeExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
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
<xsl:text>, </xsl:text>
<xsl:if test="normalize-space(//advp/@locativeDem)='someSame'">
<xsl:text>certaines </xsl:text>
</xsl:if>
<xsl:text>des formes de ces adverbes locatifs sont </xsl:text>
<xsl:choose>
                <xsl:when test="//advp/@locativeDem='distinct'">complètement distinctes des pronoms démonstratifs. </xsl:when>
                <xsl:when test="//advp/@locativeDem='same'">identiques aux pronoms démonstratifs, sauf qu’ils apparaissent dans différentes positions de la phrase. </xsl:when>
                <xsl:when test="//advp/@locativeDem='someSame'">identiques aux pronoms démonstratifs, mais d’autres sont distinctes. </xsl:when>
                <xsl:when test="//advp/@locativeDem='demAffix'">liés aux pronoms démonstratifs. On ajoute un affixe au démonstratif pour former un adverbe locatif. </xsl:when>
                <xsl:when test="//advp/@locativeDem='locativeAffix'">liées aux pronoms démonstratifs. On ajoute un affixe à l’adverbe locatif pour former un démonstratif. </xsl:when>
                <xsl:when test="//advp/@locativeDem='other'">liées aux pronoms démonstratifs de la façon suivante : </xsl:when>
             </xsl:choose>
<xsl:if test="normalize-space(//advp/@locativeDem)='other'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//advp/locativeDemOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:text> Voir la section </xsl:text>
<sectionRef sec="sPronDem" />
<xsl:text> pour avoir plus d’informations sur les pronoms démonstratifs.</xsl:text>
</p>
          
          <p contentType="ctComparativeIntro">
<xsl:text>Beaucoup de langues admettent que les mots de degré modifient les adverbes. En anglais les adverbes locatifs peuvent être modifiés par </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>only</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « seulement »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>right</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « juste, même »</xsl:text>
</gloss>
<xsl:text>, comme: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>only here</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « seulement ici »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>right here</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « ici même »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>right there</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « juste là »</xsl:text>
</gloss>
</p>       
         
          <xsl:if test="normalize-space(//advp/@locativeDegree)='no'">
<p>
<xsl:text>Les adverbes locatifs ne sont ni modifiés ni intensifiés en </xsl:text>
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
</xsl:if>
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeWord/@checked)='yes'">
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
<xsl:text> les adverbes peuvent être modifiés par des mots de degré placés </xsl:text>
<xsl:if test="normalize-space(//advp/locativeDegreeWordBefore/@checked)='yes' and normalize-space(//advp/locativeDegreeWordAfter/@checked)='no' and normalize-space(//advp/locativeDegreeWordBoth/@checked)='no'">
<xsl:text>avant</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeDegreeWordBefore/@checked)='no' and normalize-space(//advp/locativeDegreeWordAfter/@checked)='yes' and normalize-space(//advp/locativeDegreeWordBoth/@checked)='no'">
<xsl:text>après</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeDegreeWordBefore/@checked)='no' and normalize-space(//advp/locativeDegreeWordAfter/@checked)='no' and normalize-space(//advp/locativeDegreeWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeDegreeWordBefore/@checked)='yes' and normalize-space(//advp/locativeDegreeWordAfter/@checked)='yes' and normalize-space(//advp/locativeDegreeWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeDegreeWordBefore/@checked)='yes' and normalize-space(//advp/locativeDegreeWordAfter/@checked)='no' and normalize-space(//advp/locativeDegreeWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeDegreeWordBefore/@checked)='no' and normalize-space(//advp/locativeDegreeWordAfter/@checked)='yes' and normalize-space(//advp/locativeDegreeWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeDegreeWordBefore/@checked)='yes' and normalize-space(//advp/locativeDegreeWordAfter/@checked)='yes' and normalize-space(//advp/locativeDegreeWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeDegreeWordOther/@checked)='no'">
<xsl:text> l’adverbe locatif.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeDegreeWordBefore/@checked)='no' and normalize-space(//advp/locativeDegreeWordAfter/@checked)='no' and normalize-space(//advp/locativeDegreeWordBoth/@checked)='no' and normalize-space(//advp/locativeDegreeWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//advp/locativeDegreeWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeDegreeWordBefore/@checked)='yes' and normalize-space(//advp/locativeDegreeWordOther/@checked)='yes' or normalize-space(//advp/locativeDegreeWordAfter/@checked)='yes' and normalize-space(//advp/locativeDegreeWordOther/@checked)='yes' or normalize-space(//advp/locativeDegreeWordBoth/@checked)='yes' and normalize-space(//advp/locativeDegreeWordOther/@checked)='yes'">
<xsl:text> l’adverbe locatif et qui peuvent également se trouver ___</xsl:text>
<xsl:value-of select="//advp/locativeDegreeWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Voici les mots de degré qui peuvent modifier les adverbes locatifs en </xsl:text>
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
</xsl:if>
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeWord/@checked)='yes'">
<example num="xAdvP.AdvPLocative.20">
<table border="1">
                <tr>
                   <th>Mots de degré</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/locativeDegreeExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>     
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeWord/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’adverbes locatifs accompagnés de mots de degré qui les modifient :</xsl:text>
</p>
</xsl:if>          
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeWord/@checked)='yes'">
<example num="xAdvP.AdvPLocative.24">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//advp/locativePhraseExample" />
<xsl:with-param name="sExNumber">xAdvP.AdvPLocative.24</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>            
          
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeAttaches/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeWord/@checked)='yes'">
<xsl:text>Les adverbes locatif peuvent également avoir des affixes ou des clitiques qui se rattachent à l’adverbe locatif pour l’intensifier.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeWord/@checked)='no'">
<xsl:text>En </xsl:text>
                <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, des affixes ou des clitiques peuvent se rattachent à l’adverbe locatif pour l’intensifier.</xsl:text>
</xsl:if>
<xsl:text> Voici les affixes ou clitiques modificateurs :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeAttaches/@checked)='yes'">
<example num="xAdvP.AdvPLocative.28">
<table border="1">
                <tr>
                   <th>Affixes ou clitiques de degré</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/locativeDegreeAffixExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeAttaches/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’adverbes locatifs accompagnés d’un affixe ou d’un clitique :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeAttaches/@checked)='yes'">
<example num="xAdvP.AdvPLocative.32">
<table border="1">
                <tr>
                   <th>Adverbes locatifs modifiés</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/locativePhraseAffixExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>
          
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeRedup/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/locativeDegreeWord/@checked)='yes' or normalize-space(//advp/locativeDegreeAttaches/@checked)='yes'">
<xsl:text>Les adverbes locatifs on peut aussi être intensifiés par la réduplication. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeWord/@checked)='no' and normalize-space(//advp/locativeDegreeAttaches/@checked)='no'">
<xsl:text>En </xsl:text>
                <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, les adverbes locatifs peuvent être intensifiés par la réduplication. </xsl:text>
</xsl:if>
<xsl:text>Voici quelques exemples avec modification ou intensification par moyen la réduplication :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeRedup/@checked)='yes'">
<example num="xAdvP.AdvPLocative.36">
<table border="1">
                <tr>
                   <th>Adverbes locatifs avec réduplication</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/locativeDegreeRedupExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>
          
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeOther/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/locativeDegreeWord/@checked)='yes' or normalize-space(//advp/locativeDegreeAttaches/@checked)='yes' or normalize-space(//advp/locativeDegreeRedup/@checked)='yes'">
<xsl:text>Les adverbes locatifs peuvent également être </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeWord/@checked)='no' and normalize-space(//advp/locativeDegreeAttaches/@checked)='no' and normalize-space(//advp/locativeDegreeRedup/@checked)='no'">
<xsl:text>En </xsl:text>
                <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, les adverbes locatifs sont </xsl:text>
</xsl:if>
<xsl:text>modifiés ou intensifiés par ___ </xsl:text>
<xsl:value-of select="//advp/locativeDegreeOther" />
<xsl:text>.  En voici des exemples:</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@locativeDegree)='yes' and normalize-space(//advp/locativeDegreeOther/@checked)='yes'">
<example num="xAdvP.AdvPLocative.40">
<table border="1">
                <tr>
                   <th>Adverbes locatifs modifiés ou intensifiés</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/locativeDegreeOtherExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>  
          
            <p contentType="ctPracticalIntro">
<xsl:text>La location est souvent exprimé par un syntagme adpositionnel ou simplement par un syntagme nominal, soit un nom propre, ou une description du lieu. Les expressions locatives peuvent être placées à l’initiale ou à la finale de la proposition, ou peuvent être des compléments de verbes de mouvement. Voir la section </xsl:text>
<sectionRef sec="sIPMotion" />
<xsl:text> pour des exemples avec des verbes de mouvement. 
</xsl:text>
</p>
          <p contentType="ctComparativeIntro">
<xsl:text>La location est souvent exprimé par un syntagme prépositionnel, tel que : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>dans les montagnes</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>à Saint Tropez</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>de l’autre côté du fleuve</langData>
<xsl:text>.  Beaucoup de langues admettent simplement un syntagme nominal, formé d’un nom propre ou d’une description du lieu. Les expressions locatives sont normalement placées en position initiale ou finale de la proposition, ou peuvent être des compléments aux verbes de mouvement. Voir la section </xsl:text>
<sectionRef sec="sIPMotion" />
<xsl:text> pour des exemples avec des verbes de mouvement. 
             </xsl:text>
</p>
       </section2>
       
       <section2 id="sAdvPManner">
          <secTitle>Adverbes de manière</secTitle>
          <p contentType="ctPracticalIntro">
<xsl:text>Les adverbes de manière modifient directement le verbe ; ils peuvent être des mots indépendants ou se rattacher au verbe.</xsl:text>
</p>
          <p contentType="ctComparativeIntro">
<xsl:text>Les adverbes de manière modifient directement le verbe ; ils se terminent généralement en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>-ment</langData>
<xsl:text> en français. Quelques langues n’ont pas des mots indépendants ; elles utilisent les affixes verbaux pour exprimer la manière.</xsl:text>
</p>
          <xsl:if test="normalize-space(//advp/@mannerType)='word'">
<p>
<xsl:text>Les adverbes de manière en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont tous écrits comme des mots indépendants. En voici quelques exemples :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='word'">
<example num="xAdvP.AdvPManner.10">
<table border="1">
                <tr>
                   <th>Adverbes de manière</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='both'">
<p>
<xsl:text>Quelques adverbes en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> se présentent comme des mots indépendants, d’autres se rattachent au verbe. Dans le tableau suivant les formes qui s’affixent portent un tiret.</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='both'">
<example num="xAdvP.AdvPManner.14">
<table border="1">
                <tr>
                   <th>Adverbes de manière</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>
          
          <xsl:if test="normalize-space(//advp/@mannerType)='Affix'">
<p>
<xsl:text>Les adverbes de manière en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont tous écrits comme des affixes du verbe. Voici ces affixes :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='Affix'">
<example num="xAdvP.AdvPManner.18">
<table border="1">
                <tr>
                   <th>Affixes d’adverbes de manière</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>         
          
          <p contentType="ctComparativeIntro">
<xsl:text>Les adverbes de manière peuvent généralement être modifiés par des mots de degré.  En français, les adverbes peuvent être modifiés par </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>très</langData>
<xsl:text>
                et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>si</langData>
<xsl:text>, comme en : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>très vite</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>si lentement</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>très bien</langData>
<xsl:text>.</xsl:text>
</p>
          
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='no'">
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
<xsl:text>, les adverbes de manière ne sont ni modifiés ni intensifiés.</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='no'">
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
<xsl:text>, les adverbes écrits comme des mots indépendants ne sont ni modifiés ni intensifiés .</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeWord/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeWord/@checked)='yes'">
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
<xsl:text>, les adverbes de manière </xsl:text>
<xsl:if test="normalize-space(//advp/@mannerType)='both'">
<xsl:text>qui sont des mots indépendants </xsl:text>
</xsl:if>
<xsl:text>peuvent être modifiés par les mots de degré qui se placent </xsl:text>
<xsl:if test="normalize-space(//advp/mannerDegreeWordBefore/@checked)='yes' and normalize-space(//advp/mannerDegreeWordAfter/@checked)='no' and normalize-space(//advp/mannerDegreeWordBoth/@checked)='no'">
<xsl:text>avant</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerDegreeWordBefore/@checked)='no' and normalize-space(//advp/mannerDegreeWordAfter/@checked)='yes' and normalize-space(//advp/mannerDegreeWordBoth/@checked)='no'">
<xsl:text>après</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerDegreeWordBefore/@checked)='no' and normalize-space(//advp/mannerDegreeWordAfter/@checked)='no' and normalize-space(//advp/mannerDegreeWordBoth/@checked)='yes'">
<xsl:text>de deux côtés de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerDegreeWordBefore/@checked)='yes' and normalize-space(//advp/mannerDegreeWordAfter/@checked)='yes' and normalize-space(//advp/mannerDegreeWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerDegreeWordBefore/@checked)='yes' and normalize-space(//advp/mannerDegreeWordAfter/@checked)='no' and normalize-space(//advp/mannerDegreeWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerDegreeWordBefore/@checked)='no' and normalize-space(//advp/mannerDegreeWordAfter/@checked)='yes' and normalize-space(//advp/mannerDegreeWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerDegreeWordBefore/@checked)='yes' and normalize-space(//advp/mannerDegreeWordAfter/@checked)='yes' and normalize-space(//advp/mannerDegreeWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerDegreeWordOther/@checked)='no'">
<xsl:text> l’adverbe de manière.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerDegreeWordBefore/@checked)='no' and normalize-space(//advp/mannerDegreeWordAfter/@checked)='no' and normalize-space(//advp/mannerDegreeWordBoth/@checked)='no' and normalize-space(//advp/mannerDegreeWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//advp/mannerDegreeWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerDegreeWordBefore/@checked)='yes' and normalize-space(//advp/mannerDegreeWordOther/@checked)='yes' or normalize-space(//advp/mannerDegreeWordAfter/@checked)='yes' and normalize-space(//advp/mannerDegreeWordOther/@checked)='yes' or normalize-space(//advp/mannerDegreeWordBoth/@checked)='yes' and normalize-space(//advp/mannerDegreeWordOther/@checked)='yes'">
<xsl:text> l’adverbe de manière et qui peuvent être placés  ___</xsl:text>
<xsl:value-of select="//advp/mannerDegreeWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Voici les mots de degré qui peuvent modifier les adverbes de manière en </xsl:text>
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
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeWord/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeWord/@checked)='yes'">
<example num="xAdvP.AdvPManner.28">
<table border="1">
                <tr>
                   <th>Mots de degré</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerDegreeExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>     
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeWord/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeWord/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’adverbes de manière modifiés par des mots de degré :</xsl:text>
</p>
</xsl:if>          
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeWord/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeWord/@checked)='yes'">
<example num="xAdvP.AdvPManner.32">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//advp/mannerDegreePhraseExample" />
<xsl:with-param name="sExNumber">xAdvP.AdvPManner.32</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>            
          
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeAttaches/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeAttaches/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/mannerWordDegreeWord/@checked)='yes'">
<xsl:text>Les adverbes de manière peut aussi avoir </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerWordDegreeWord/@checked)='no'">
<xsl:text>En </xsl:text>
                <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, il y a</xsl:text>
</xsl:if>
<xsl:text>des affixes ou des clitiques qui peuvent se rattacher à l’adverbe de manière pour l’intensifier. Voici les affixes ou clitiques qui peuvent modifier les adverbes de manière :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeAttaches/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeAttaches/@checked)='yes'">
<example num="xAdvP.AdvPManner.36">
<table border="1">
                <tr>
                   <th>Affixes ou clitiques de degré</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerDegreeAffixExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeAttaches/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeAttaches/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’adverbes de manière où sont attachés les affixes ou les clitiques de degré :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeAttaches/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeAttaches/@checked)='yes'">
<example num="xAdvP.AdvPManner.40">
<table border="1">
                <tr>
                   <th>Adverbes de manière modifiés</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerPhraseAffixExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>
          
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeRedup/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeRedup/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/mannerWordDegreeWord/@checked)='yes' or normalize-space(//advp/mannerWordDegreeAttaches/@checked)='yes'">
<xsl:text>Les adverbes de manière peuvent aussi utiliser la réduplication pour intensifier le sens.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerWordDegreeWord/@checked)='no' and normalize-space(//advp/mannerWordDegreeAttaches/@checked)='no'">
<xsl:text>En </xsl:text>
                <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, la réduplication peut être utilisée pour intensifier le sens des adverbes de manière.</xsl:text>
</xsl:if>
<xsl:text> En voici des exemples :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeRedup/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeRedup/@checked)='yes'">
<example num="xAdvP.AdvPManner.44">
<table border="1">
                <tr>
                   <th>Adverbes de manière avec redoublement</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerDegreeRedupExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>
          
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeOther/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeOther/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/mannerWordDegreeWord/@checked)='yes' or normalize-space(//advp/mannerWordDegreeAttaches/@checked)='yes' or normalize-space(//advp/mannerWordDegreeRedup/@checked)='yes'">
<xsl:text>Les adverbes de manière peuvent également être </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerWordDegreeWord/@checked)='no' and normalize-space(//advp/mannerWordDegreeAttaches/@checked)='no' and normalize-space(//advp/mannerWordDegreeRedup/@checked)='no'">
<xsl:text>En </xsl:text>
                <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, les adverbes de manière sont </xsl:text>
</xsl:if>
<xsl:text>modifiés ou intensifiés par ___ </xsl:text>
<xsl:value-of select="//advp/mannerDegreeOther" />
<xsl:text>.  Voici des exemples d’adverbes de manière qui se modifient ou s’intensifient de cette façon :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='word' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeOther/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerDegree)='yes' and normalize-space(//advp/mannerWordDegreeOther/@checked)='yes'">
<example num="xAdvP.AdvPManner.48">
<table border="1">
                <tr>
                   <th>Adverbes de manière modifiés ou intensifiés</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerDegreeOtherExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>  
          
          
          <xsl:if test="normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='no'">
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
<xsl:text>, les affixes d’adverbes de manière ne sont ni modifiés ni intensifiés.</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='no'">
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
<xsl:text>, les affixes d’adverbes de manière ne sont ni modifiés ni intensifiés.</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' or normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes'">
<p>
<xsl:text>Les affixes des adverbes de manière peuvent être modifiés par des affixes de degré qui se placent </xsl:text>
<xsl:if test="normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='no'">
<xsl:text>avant</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes' and normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='no'">
<xsl:text>après</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre de</xsl:text>
</xsl:if>
<xsl:text> l’adverbe de manière.  Voici ces affixes de degré en</xsl:text>
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
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' or normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes'">
<example num="xAdvP.AdvPManner.56">
<table border="1">
                <tr>
                   <th>Affixes de degré</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerAffixDegreeExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>     
          <xsl:if test="normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' or normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’affixes d’adverbes de manière qui se rattachent à un verbe avec les affixes de degré qui les modifient aussi :</xsl:text>
</p>
</xsl:if>          
          <xsl:if test="normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' or normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes'">
<example num="xAdvP.AdvPManner.60">
<table border="1">
                <tr>
                   <th>Verbes modifiés</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerAffixDegreePhraseExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>            
          
          <xsl:if test="normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeRedup/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeRedup/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' or normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes'">
<xsl:text>Les affixes d’adverbes de manière peuvent aussi utiliser la réduplication pour </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='no' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='no'">
<xsl:text>En </xsl:text>
                <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, la réduplication </xsl:text>
</xsl:if>
<xsl:text>intensifie le sens de l’affixe de l’adverbe de manière. Voici quelques exemples des affixes attachés au verbe, avec la réduplication qui les modifie ou les intensifie :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeRedup/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeRedup/@checked)='yes'">
<example num="xAdvP.AdvPManner.64">
<table border="1">
                <tr>
                   <th>Affixes d’adverbes de manière avec réduplication attachés aux verbes</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerAffixDegreeRedupExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>
          
          <xsl:if test="normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeOther/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeOther/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='yes' or normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='yes' or normalize-space(//advp/mannerAffixDegreeRedup/@checked)='yes'">
<xsl:text>Les affixed d’adverbes de manière peuvent également être </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/mannerAffixDegreeYesBefore/@checked)='no' and normalize-space(//advp/mannerAffixDegreeYesAfter/@checked)='no' and normalize-space(//advp/mannerAffixDegreeRedup/@checked)='no'">
<xsl:text>En </xsl:text>
                <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, les affixes d’adverbes de manière sont </xsl:text>
</xsl:if>
<xsl:text>modifiés ou intensifiés par  ___ </xsl:text>
<xsl:value-of select="//advp/mannerDegreeOther" />
<xsl:text>.  En voici quelques exemples :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/@mannerType)='affix' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeOther/@checked)='yes' or normalize-space(//advp/@mannerType)='both' and normalize-space(//advp/@mannerAffixDegree)='yes' and normalize-space(//advp/mannerAffixDegreeOther/@checked)='yes'">
<example num="xAdvP.AdvPManner.68">
<table border="1">
                <tr>
                   <th>Affixes d’adverbes de manière modifiés ou intensifiés</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/mannerAffixDegreeOtherExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>
</xsl:if>  
          
          <p contentType="ctPracticalIntro">
<xsl:text>Les adverbes de manière ne semblent pas avoir d’équivalents dans d’autres types de syntagmes, mis à part peut-être les comparatifs. Voir la section </xsl:text>
<sectionRef sec="sIPComparatives" />
<xsl:text> pour quelques exemples. </xsl:text>
</p>          
          <p contentType="ctComparativeIntro">
<xsl:text>Les adverbes de manière ne semblent pas avoir d’équivalents dans d’autres types de syntagmes, mis à part peut-être les comparatifs tels que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>aussi vite qu’il le pouvait</langData>
<xsl:text>.  Les comparatifs sont traités dans la section </xsl:text>
<sectionRef sec="sIPComparatives" />
<xsl:text>. </xsl:text>
</p>          
          
       </section2>
       <section2 id="sAdvPReason">
          <secTitle>Adverbes de raison ou de but</secTitle>
          <p contentType="ctPracticalIntro">
<xsl:text>La raison ou le but peuvent être exprimés par un seul adverbe ou par une proposition adverbiale ou par un syntagme adpositionnel.</xsl:text>
</p>
          <p contentType="ctComparativeIntro">
<xsl:text>Les adverbes de raison ou de but comprennent </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>donc</langData>
<xsl:text> et
             </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>cependant</langData>
<xsl:text>.  En français, les adverbes de raison ou de but n’admettent pas de modificateur. La raison ou le but peuvent être exprimés par une proposition adverbiale qui commence par </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>parce que</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>puisque</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pour (que)</langData>
<xsl:text>.  Ces propositions et syntagmes adverbiaux se placent en initiale ou en finale de la phrase. La structure de ces proposition adverbiales sera traitée dans la section </xsl:text>
<sectionRef sec="sAdvClReason" />
<xsl:text>. </xsl:text>
</p>
          <p>
<xsl:text>Les adverbes de raison ou de but qui se présentent seuls ou qui introduisent une proposition adverbiale de raison ou de but en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont les suivants : 
             </xsl:text>
</p>
          <example num="xAdvP.AdvPReason.10">
<table border="1">
                <tr>
                   <th>Adverbes de raison ou de but</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/reasonExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>           
          <p contentType="ctComparativeIntro">
<xsl:text>En français, la raison ou le but peut aussi être exprimé par un syntagme prépositionnel, tel que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pour cette raison</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>de façon intentionnelle</langData>
<xsl:text>.  Ces syntagmes seront décrits à la section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text>. </xsl:text>
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
<xsl:text>, les syntagmes </xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='both'">adpositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
             </xsl:choose>
<xsl:text> qui expriment la raison ou le but sont :  </xsl:text>
</p>
          <example num="xAdvP.AdvPReason.16">
<table border="1">
                <tr>
                   <th>Autres expressions de raison ou de but</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//advp/reasonPPExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.0" select="string-length(normalize-space($sExampleValue0.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.0 != 0 and $sExampleValue0.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
             </table>
</example>           
          <p>
<xsl:text>Voici des exemples de phrases complètes qui comprennent les adverbes ou les propositions adverbiales ou les syntagmes </xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='both'">adpositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
             </xsl:choose>
<xsl:text> exprimant la raison ou le but : 
             </xsl:text>
</p>
          <example num="xAdvP.AdvPReason.20">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//advp/reasonSentExample" />
<xsl:with-param name="sExNumber">xAdvP.AdvPReason.20</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <p contentType="ctPracticalIntro">
<xsl:text>Voir la section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text> pour plus d’information sur les syntagmes </xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='both'">adpositionnels</xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
             </xsl:choose>
<xsl:text> et la section </xsl:text>
<sectionRef sec="sAdvClReason" />
<xsl:text> pour les propositions adverbiales exprimant la raison ou le but.</xsl:text>
</p>
       </section2>
       <section2 id="sAdvPIndef">
          <secTitle>Adverbes indéfinis</secTitle>
          <p contentType="ctComparativeIntro">
<xsl:text>Il y a deux séries d’adverbes indéfinis, bien toutes les langues ne les fusionnent pas en un seul mot : la série de ceux qui comprennent un quantifieur et un nom générique, par exemple, en anglais </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>everytime</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « chaque fois »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>everywhere</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « partout »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>sometime</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « quelque temps »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>somewhere</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « quelque part »</xsl:text>
</gloss>
<xsl:text>, et la série de ceux qui sont formés par un mot interrogatif et un indéfini, tels que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>whenever</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « n’importe quand »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>wherever</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « n’importe où »</xsl:text>
</gloss>
<xsl:text>.</xsl:text>
</p>	   
          <p contentType="ctPracticalIntro">
<xsl:text>Les indéfinis adverbiaux sont utilisés quand l’heure ou la position ne sont pas spécifiques.  Ils sont formés soit d’un quantifieur et d’un nom générique, soit d’un interrogatif et d’un indéfini ; ils peuvent ne pas être combinés en un seul mot. </xsl:text>
</p>
          <p>
<xsl:text>Pour la première série qui comprend un quantifieur et un nom générique, les indéfinis temporels en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> </xsl:text>
<xsl:if test="normalize-space(//advp/temporalIndefTypeQNone/@checked)='yes'">
<xsl:text>ne sont pas exprimés avec un quantifieur.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefQOther/@checked)='yes' and normalize-space(//advp/temporalIndefQPhrase/@checked)='no' and normalize-space(//advp/temporalIndefQWord/@checked)='no'">
<xsl:text>sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/temporalIndefQOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefQPhrase/@checked)='no' and normalize-space(//advp/temporalIndefQWord/@checked)='yes' and normalize-space(//advp/temporalIndefQOther/@checked)='no'">
<xsl:text>sont exprimés par un quantifieur et un nom générique fusionnés en un seul mot. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefQPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefQWord/@checked)='yes' and normalize-space(//advp/temporalIndefQOther/@checked)='no'">
<xsl:text>sont exprimés par un quantifieur et un nom générique fusionnés en un seul mot, mais certains qui restent comme syntagme.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefQPhrase/@checked)='no' and normalize-space(//advp/temporalIndefQWord/@checked)='yes' and normalize-space(//advp/temporalIndefQOther/@checked)='yes'">
<xsl:text>sont exprimés par un quantifieur et un nom générique fusionnés en un seul mot, mais certains sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/temporalIndefQOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefQPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefQWord/@checked)='no' and normalize-space(//advp/temporalIndefQOther/@checked)='no'">
<xsl:text>sont exprimés par un quantifieur et un nom générique qui ne fusionnent pas en un seul mot, mais qui restent comme syntagme. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefQPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefQWord/@checked)='no' and normalize-space(//advp/temporalIndefQOther/@checked)='yes'">
<xsl:text>sont exprimés quelquefois par un quantifieur et un nom générique qui ne fusionnent pas en un seul mot, mais qui reste comme syntagme, et d’autres sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/temporalIndefQOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefQPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefQWord/@checked)='yes' and normalize-space(//advp/temporalIndefQOther/@checked)='yes'">
<xsl:text>sont exprimés quelquefois par un quantifieur et un nom générique fusionnés en un seul mot, mais dans d’autres restent comme syntagme, et d’autres sont exprimés par ___</xsl:text>
<xsl:value-of select="//avdp/temporalIndefQOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:text>  Les indéfinis locatifs </xsl:text>
<xsl:if test="normalize-space(//advp/locativeIndefTypeQNone/@checked)='yes'">
<xsl:text>ne sont pas exprimés par un quantifieur.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefQOther/@checked)='yes' and normalize-space(//advp/locativeIndefQPhrase/@checked)='no' and normalize-space(//advp/locativeIndefQWord/@checked)='no'">
<xsl:text>sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/locativeIndefQOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefQPhrase/@checked)='no' and normalize-space(//advp/locativeIndefQWord/@checked)='yes' and normalize-space(//advp/locativeIndefQOther/@checked)='no'">
<xsl:text>sont exprimés par un quantifieur et un nom générique fusionnés en un seul mot. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefQPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefQWord/@checked)='yes' and normalize-space(//advp/locativeIndefQOther/@checked)='no'">
<xsl:text>sont exprimés quelquefois par un quantifieur et un nom générique fusionnés en un seul mot, mais certains qui restent comme syntagme.???</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefQPhrase/@checked)='no' and normalize-space(//advp/locativeIndefQWord/@checked)='yes' and normalize-space(//advp/locativeIndefQOther/@checked)='yes'">
<xsl:text>sont exprimés quelquefois par un quantifieur et un nom générique fusionnés en un seul mot, mais certains sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/locativeIndefQOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefQPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefQWord/@checked)='no' and normalize-space(//advp/locativeIndefQOther/@checked)='no'">
<xsl:text>sont exprimés par un quantifieur et un nom générique qui ne se fusionnent pas en un seul mot, mais qui restent comme syntagme. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefQPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefQWord/@checked)='no' and normalize-space(//advp/locativeIndefQOther/@checked)='yes'">
<xsl:text>sont exprimés par un quantifieur et un nom générique qui ne se fusionnent pas en un seul mot, mais qui restent comme syntagme, et d’autres sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/locativeIndefQOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefQPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefQWord/@checked)='yes' and normalize-space(//advp/locativeIndefQOther/@checked)='yes'">
<xsl:text>sont exprimés quelquefois par un quantifieur et un nom générique fusionnés en un seul mot, mas dans d’autres restent comme syntagme, et d’autres sont exprimés par ___</xsl:text>
<xsl:value-of select="//avdp/locativeIndefQOther" />
<xsl:text>.</xsl:text>
</xsl:if>
</p>
          <xsl:if test="normalize-space(//advp/temporalIndefQWord/@checked)='yes' or normalize-space(//advp/locativeIndefQWord/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’adverbes indéfinis de ce type, qui s’écrivent en un seul mot :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/temporalIndefQWord/@checked)='yes' or normalize-space(//advp/locativeIndefQWord/@checked)='yes'">
<example num="xAdvP.AdvPIndef.12">
<table border="1">
                <caption>
<xsl:text>Adverbes indéfinis basés sur des quantifieurs</xsl:text>
</caption> 
                <tr>
                   <th>Type</th>
                   <th>Adverbe</th>
                   <th>Glose</th>
                </tr>				
                <xsl:if test="normalize-space(//advp/temporalIndefQWord/@checked)='yes'">
<xsl:variable name="sExampleValue0.1">
<xsl:value-of select="translate(string(//advp/temporalIndefTypeQWordExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.1" select="string-length(normalize-space($sExampleValue0.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.1 != 0 and $sExampleValue0.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefQWord/@checked)='yes'">
<xsl:variable name="sExampleValue1.1">
<xsl:value-of select="translate(string(//advp/locativeIndefTypeQWordExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength1.1" select="string-length(normalize-space($sExampleValue1.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength1.1 != 0 and $sExampleValue1.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength1.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
             </table>
</example>
</xsl:if>
          <xsl:if test="normalize-space(//advp/temporalIndefQPhrase/@checked)='yes' or normalize-space(//advp/locativeIndefQPhrase/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/temporalIndefQPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQOther/@checked)='no'">
                <xsl:text>Dans les adverbiaux temporeles qui ne fusionnent pas en un seul mot, le quantifieur se place </xsl:text>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:text> nom temporel générique. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefQPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQOther/@checked)='no'">
                <xsl:text>Dans les adverbiaux locatifs qui ne fusionnent pas en un seul mot, le quantifieur se place </xsl:text>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:text> nom locatif générique. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefTypeQPQOther/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='no'"> 
                <xsl:text>Dans les adverbiaux temporeles qui ne fusionnent pas en un seul mot, le quantifieur se place ___</xsl:text>
<xsl:value-of select="//advp/temporalIndefTypeQPQOther" />
                <xsl:text>. </xsl:text>
             </xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefTypeQPQOther/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='no'"> 
                <xsl:text>Dans les adverbiaux locatifs qui ne fusionnent pas en un seul mot, le quantifieur se place ___</xsl:text>
<xsl:value-of select="//advp/locativeIndefTypeQPQOther" />
                <xsl:text>. </xsl:text>
             </xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefQPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQOther/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='yes' or normalize-space(//advp/temporalIndefQPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQOther/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='yes' or normalize-space(//advp/temporalIndefQPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQOther/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='yes'">
                <xsl:text>Dans les adverbiaux temporeles qui ne fusionnent pas en un seul mot, le quantificateur se place </xsl:text>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:text> nom temporel générique, et ils peuvent aussi se placer ___</xsl:text>
<xsl:value-of select="//advp/temporalIndefTypeQPQOther" />
<xsl:text>. </xsl:text>
             </xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefQPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQOther/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='yes' or normalize-space(//advp/locativeIndefQPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQOther/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='yes' or normalize-space(//advp/locativeIndefQPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQOther/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='yes'">
                <xsl:text>Dans les adverbiaux locatifs qui ne fusionnent pas en un seul mot, le quantifieur se place </xsl:text>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeQPQBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeQPQBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
                <xsl:text> nom locatif générique, et ils peuvent aussi se placer ___</xsl:text>
<xsl:value-of select="//advp/locativeIndefTypeQPQOther" />
<xsl:text>. </xsl:text>
             </xsl:if>
<xsl:text>  Voici quelques exemples des syntagmes indéfinis :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/temporalIndefQPhrase/@checked)='yes' or normalize-space(//advp/locativeIndefQPhrase/@checked)='yes'">
<example num="xAdvP.AdvPIndef.16">
<table border="1">
                <caption>
<xsl:text>Syntagmes indéfinis basés sur des quantifieurs</xsl:text>
</caption> 
                <tr>
                   <th>Type</th>
                   <th>Adverbe</th>
                   <th>Glose</th>
                </tr>				
                <xsl:if test="normalize-space(//advp/temporalIndefQPhrase/@checked)='yes'">
<xsl:variable name="sExampleValue0.1">
<xsl:value-of select="translate(string(//advp/temporalIndefTypeQPhraseExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.1" select="string-length(normalize-space($sExampleValue0.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.1 != 0 and $sExampleValue0.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefQPhrase/@checked)='yes'">
<xsl:variable name="sExampleValue1.1">
<xsl:value-of select="translate(string(//advp/locativeIndefTypeQPhraseExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength1.1" select="string-length(normalize-space($sExampleValue1.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength1.1 != 0 and $sExampleValue1.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength1.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
             </table>
</example>
</xsl:if>
          <xsl:if test="normalize-space(//advp/temporalIndefQOther/@checked)='yes' or normalize-space(//advp/locativeIndefQOther/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’indéfinis formés de cette façon :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/temporalIndefQOther/@checked)='yes' or normalize-space(//advp/locativeIndefQOther/@checked)='yes'">
<example num="xAdvP.AdvPIndef.20">
<table border="1">
                <caption>
<xsl:text>Indéfinis basés sur des quantifieurs</xsl:text>
</caption> 
             <tr>
                <th>Type</th>
                <th>Adverbe</th>
                <th>Glose</th>
             </tr>				
             <xsl:if test="normalize-space(//advp/temporalIndefQOther/@checked)='yes'">
<xsl:variable name="sExampleValue0.1">
<xsl:value-of select="translate(string(//advp/temporalIndefTypeQOtherExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.1" select="string-length(normalize-space($sExampleValue0.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.1 != 0 and $sExampleValue0.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
             <xsl:if test="normalize-space(//advp/locativeIndefQOther/@checked)='yes'">
<xsl:variable name="sExampleValue1.1">
<xsl:value-of select="translate(string(//advp/locativeIndefTypeQOtherExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength1.1" select="string-length(normalize-space($sExampleValue1.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength1.1 != 0 and $sExampleValue1.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength1.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
             </table>
</example>
</xsl:if>
          <p>
<xsl:text>Pour le deuxième type d’indéfinis qui comprend un interrogatif et un mot indéfini, en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> les indéfinis temporeles</xsl:text>
<xsl:if test="normalize-space(//advp/temporalIndefTypeIntNone/@checked)='yes'">
<xsl:text>ne sont pas exprimés par un interrogatif.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefIntOther/@checked)='yes' and normalize-space(//advp/temporalIndefIntPhrase/@checked)='no' and normalize-space(//advp/temporalIndefIntWord/@checked)='no'">
<xsl:text>sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/temporalIndefIntOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefIntPhrase/@checked)='no' and normalize-space(//advp/temporalIndefIntWord/@checked)='yes' and normalize-space(//advp/temporalIndefIntOther/@checked)='no'">
<xsl:text>sont exprimés par un mot interrogatif temporel et un indéfini fusionnés en un seul mot. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefIntPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefIntWord/@checked)='yes' and normalize-space(//advp/temporalIndefIntOther/@checked)='no'">
<xsl:text>sont exprimés quelquefois par un mot interrogatif temporel et un indéfini fusionnés en un seul mot, mais d’autres restent comme syntagme. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefIntPhrase/@checked)='no' and normalize-space(//advp/temporalIndefIntWord/@checked)='yes' and normalize-space(//advp/temporalIndefIntOther/@checked)='yes'">
<xsl:text>sont exprimés quelquefois par un mot interrogatif temporel et un indéfini fusionnés en un seul mot, mais d’autres sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/temporalIndefIntOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefIntPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefIntWord/@checked)='no' and normalize-space(//advp/temporalIndefIntOther/@checked)='no'">
<xsl:text>sont exprimés par un mot interrogatif temporel et un indéfini qui ne se fusionnent pas en un seul mot, mais qui restent comme syntagme. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefIntPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefIntWord/@checked)='no' and normalize-space(//advp/temporalIndefIntOther/@checked)='yes'">
<xsl:text>sont exprimés par un mot interrogatif temporel et un indéfini qui ne se fusionnent pas en un seul mot, mais qui restent comme syntagme, et d’autres sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/temporalIndefIntOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefIntPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefIntWord/@checked)='yes' and normalize-space(//advp/temporalIndefIntOther/@checked)='yes'">
<xsl:text>sont exprimés quelquefois par un mot interrogatif temporel et un indéfini qui fusionnent en un seul mot, mais d’autres restent comme syntagme, et d’autres sont exprimés par ___</xsl:text>
<xsl:value-of select="//avdp/temporalIndefIntOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:text> Les indéfinis locatifs </xsl:text>
<xsl:if test="normalize-space(//advp/locativeIndefTypeIntNone/@checked)='yes'">
<xsl:text>ne sont pas exprimés par un interrogatif.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefIntOther/@checked)='yes' and normalize-space(//advp/locativeIndefIntPhrase/@checked)='no' and normalize-space(//advp/locativeIndefIntWord/@checked)='no'">
<xsl:text>sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/locativeIndefIntOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefIntPhrase/@checked)='no' and normalize-space(//advp/locativeIndefIntWord/@checked)='yes' and normalize-space(//advp/locativeIndefIntOther/@checked)='no'">
<xsl:text>sont exprimés par un mot interrogatif locatif et un indéfini fusionnés en un seul mot. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefIntPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefIntWord/@checked)='yes' and normalize-space(//advp/locativeIndefIntOther/@checked)='no'">
<xsl:text>sont exprimés quelquefois par un mot interrogatif locatif et un indéfini fusionnés en un seul mot, mais d’autres restent comme syntagme.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefIntPhrase/@checked)='no' and normalize-space(//advp/locativeIndefIntWord/@checked)='yes' and normalize-space(//advp/locativeIndefIntOther/@checked)='yes'">
<xsl:text>sont exprimés quelquefois par un mot interrogatif locatif et un indéfini fusionnés en un seul mot, mais d’autres sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/locativeIndefIntOther" />
<xsl:text>. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefIntPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefIntWord/@checked)='no' and normalize-space(//advp/locativeIndefIntOther/@checked)='no'">
<xsl:text>sont exprimés par un mot interrogatif locatif et un indéfini qui ne se fusionnent pas en un seul mot, mais qui restent comme syntagme. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefIntPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefIntWord/@checked)='no' and normalize-space(//advp/locativeIndefIntOther/@checked)='yes'">
<xsl:text>sont exprimés par un mot interrogatif locatif et un indéfini qui ne se fusionnent pas en un seul mot, mais qui restent comme syntagme, et d’autres sont exprimés par ___</xsl:text>
<xsl:value-of select="//advp/locativeIndefIntOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefIntPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefIntWord/@checked)='yes' and normalize-space(//advp/locativeIndefIntOther/@checked)='yes'">
<xsl:text>sont exprimés quelquefois par un mot interrogatif locatif et un indéfini qui se fusionnent en un seul mot, mais d’autres restent comme syntagme, et d’autres sont exprimés par ___</xsl:text>
<xsl:value-of select="//avdp/locativeIndefIntOther" />
<xsl:text>.</xsl:text>
</xsl:if>
</p>
          <xsl:if test="normalize-space(//advp/temporalIndefIntWord/@checked)='yes' or normalize-space(//advp/locativeIndefIntWord/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’adverbe indéfinis de ce type qui s’écrivent en un seul mot :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/temporalIndefIntWord/@checked)='yes' or normalize-space(//advp/locativeIndefIntWord/@checked)='yes'">
<example num="xAdvP.AdvPIndef.26">
<table border="1">
                <caption>
<xsl:text>Adverbes indéfinis basés sur un interrogatif</xsl:text>
</caption> 
                <tr>
                   <th>Type</th>
                   <th>Adverbe</th>
                   <th>Glose</th>
                </tr>				
                <xsl:if test="normalize-space(//advp/temporalIndefIntWord/@checked)='yes'">
<xsl:variable name="sExampleValue0.1">
<xsl:value-of select="translate(string(//advp/temporalIndefTypeIntWordExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.1" select="string-length(normalize-space($sExampleValue0.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.1 != 0 and $sExampleValue0.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefIntWord/@checked)='yes'">
<xsl:variable name="sExampleValue1.1">
<xsl:value-of select="translate(string(//advp/locativeIndefTypeIntWordExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength1.1" select="string-length(normalize-space($sExampleValue1.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength1.1 != 0 and $sExampleValue1.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength1.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
             </table>
</example>
</xsl:if>
          <xsl:if test="normalize-space(//advp/temporalIndefIntPhrase/@checked)='yes' or normalize-space(//advp/locativeIndefIntPhrase/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//advp/temporalIndefIntPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntOther/@checked)='no'">
                <xsl:text>Dans les adverbiaux temporeles qui ne fusionnent pas en un seul mot, l’interrogatif se place </xsl:text>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='no'">
<xsl:text>avant</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='no'">
<xsl:text>après</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='yes'">
<xsl:text>de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:text> l’indéfini. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefIntPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntOther/@checked)='no'">
                <xsl:text>Dans les adverbiaux locatifs qui ne fusionnent pas en un seul mot, l’interrogatif se place </xsl:text>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='no'">
<xsl:text>avant</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='no'">
<xsl:text>après</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='yes'">
<xsl:text>de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:text> l’indéfini. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefTypeIntOther/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='no'"> 
                <xsl:text>Dans les adverbiaux temporeles qui ne fusionnent pas en un seul mot, l’interrogatif se place ___</xsl:text>
<xsl:value-of select="//advp/temporalIndefTypeIntOther" />
                <xsl:text>. </xsl:text>
             </xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefTypeIntOther/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='no'"> 
                <xsl:text>Dans les adverbiaux locatifs qui ne fusionnent pas en un seul mot, l’interrogatif se place ___</xsl:text>
<xsl:value-of select="//advp/locativeIndefTypeIntOther" />
                <xsl:text>. </xsl:text>
             </xsl:if>
<xsl:if test="normalize-space(//advp/temporalIndefIntPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntOther/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='yes' or normalize-space(//advp/temporalIndefIntPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntOther/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='yes' or normalize-space(//advp/temporalIndefIntPhrase/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntOther/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='yes'">
                <xsl:text>Dans les adverbiaux temporeles qui ne fusionnent pas en un seul mot, l’interrogatif se place </xsl:text>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='no'">
<xsl:text>avant</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='no'">
<xsl:text>après</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='yes'">
<xsl:text>de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/temporalIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/temporalIndefTypeIntBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:text> l’indéfini, et ils peuvent aussi se placer ___</xsl:text>
<xsl:value-of select="//advp/temporalIndefTypeIntOther" />
<xsl:text>. </xsl:text>
             </xsl:if>
<xsl:if test="normalize-space(//advp/locativeIndefIntPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntOther/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='yes' or normalize-space(//advp/locativeIndefIntPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntOther/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='yes' or normalize-space(//advp/locativeIndefIntPhrase/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntOther/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='yes'">
                <xsl:text>Dans les adverbiaux locatifs qui ne fusionnent pas en un seul mot, l’interrogatif se place </xsl:text>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='no'">
<xsl:text>avant</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='no'">
<xsl:text>après</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='yes'">
<xsl:text>de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='no' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefTypeIntBefore/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntAfter/@checked)='yes' and normalize-space(//advp/locativeIndefTypeIntBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre de</xsl:text>
</xsl:if>
                <xsl:text> l’indéfini, et ils peuvent aussi se placer ___</xsl:text>
<xsl:value-of select="//advp/locativeIndefTypeIntOther" />
<xsl:text>. </xsl:text>
             </xsl:if>
<xsl:text>  Voici quelques exemples de syntagmes indéfinis :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/temporalIndefIntPhrase/@checked)='yes' or normalize-space(//advp/locativeIndefIntPhrase/@checked)='yes'">
<example num="xAdvP.AdvPIndef.30">
<table border="1">
                <caption>
<xsl:text>Syntagmes indéfinis basés sur un interrogatif</xsl:text>
</caption> 
                <tr>
                   <th>Type</th>
                   <th>Adverbe</th>
                   <th>Glose</th>
                </tr>				
                <xsl:if test="normalize-space(//advp/temporalIndefIntPhrase/@checked)='yes'">
<xsl:variable name="sExampleValue0.1">
<xsl:value-of select="translate(string(//advp/temporalIndefTypeIntPhraseExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.1" select="string-length(normalize-space($sExampleValue0.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.1 != 0 and $sExampleValue0.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefIntPhrase/@checked)='yes'">
<xsl:variable name="sExampleValue1.1">
<xsl:value-of select="translate(string(//advp/locativeIndefTypeIntPhraseExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength1.1" select="string-length(normalize-space($sExampleValue1.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength1.1 != 0 and $sExampleValue1.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength1.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
             </table>
</example>
</xsl:if>
          <xsl:if test="normalize-space(//advp/temporalIndefIntOther/@checked)='yes' or normalize-space(//advp/locativeIndefIntOther/@checked)='yes'">
<p>
<xsl:text>Voici des exemples quelques indéfinis formés de cette autre façon :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//advp/temporalIndefIntOther/@checked)='yes' or normalize-space(//advp/locativeIndefIntOther/@checked)='yes'">
<example num="xAdvP.AdvPIndef.34">
<table border="1">
                <caption>
<xsl:text>Indéfinis basés sur un interrogatif</xsl:text>
</caption> 
                <tr>
                   <th>Type</th>
                   <th>Adverbe</th>
                   <th>Glose</th>
                </tr>				
                <xsl:if test="normalize-space(//advp/temporalIndefIntOther/@checked)='yes'">
<xsl:variable name="sExampleValue0.1">
<xsl:value-of select="translate(string(//advp/temporalIndefTypeIntOtherExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0.1" select="string-length(normalize-space($sExampleValue0.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength0.1 != 0 and $sExampleValue0.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Temporel</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
                <xsl:if test="normalize-space(//advp/locativeIndefIntOther/@checked)='yes'">
<xsl:variable name="sExampleValue1.1">
<xsl:value-of select="translate(string(//advp/locativeIndefTypeIntOtherExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength1.1" select="string-length(normalize-space($sExampleValue1.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength1.1 != 0 and $sExampleValue1.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength1.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</xsl:with-param>
<xsl:with-param name="bHandleRowSpans" select="'Y'" />
<xsl:with-param name="iRowsToSpan" select="string-length($sCalculatedRows)" />
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td align="left">
<xsl:text>Locatif</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>SAISIR UN EXEMPLE ICI</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
             </table>
</example>
</xsl:if>
       </section2>
       
    </section1>
   
   
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
   
   
   
      
   
   
      
   
   
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
   
   


   

   
      
   
   
      
   
   
      
      
      
   
   
      
      
      
      
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
    
       
         
   
      
        
   
      
      
      
      
      
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
   
      
         
         
         
         
         
         
   
      
      
      
         
   
      
      
      
         
   
      
      
      
      
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
         
   
      
      
      
      
   
      
      
      
      
   
      
      
      
      
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
         
 
   
      
      
      
   
   
      
      
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
   
   
      
   
   
      
      
      
      
      
   
 
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
      
   
   
    
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
   
   
      
   
   
      
      
      
      
      
   
 
   
      
   
   
      
   
   
      
   
   
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
      
   
   
    
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
   
   
      
   
   
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
      
   
   
    
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
   
   
      
   
   
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
      
   
   
    
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
   
   
</xsl:template>
</xsl:stylesheet>
