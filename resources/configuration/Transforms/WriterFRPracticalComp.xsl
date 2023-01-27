<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="comp">
    <section1 id="sComp">
       <secTitle>Propositions complétives</secTitle>
        <p>
<xsl:text>Les différents types de propositions subordonnées qui sont les compléments d’un verb principal ou d’un adjectif qui fonctionne comme le prédicat de la phrase seront présentés, après que les conjonctions de subordination et leur position dans les propositions déclaratives subordonnées ont été traités.</xsl:text>
</p>
       
          <p contentType="ctComparativeIntro">
<xsl:text>Le français a plusieurs conjonctions de subordination qui marquent les propositions déclaratives subordonnées : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>que</langData>
<xsl:text> pour les propositions finies, et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pour</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>de</langData>
<xsl:text> pour les propositions non finies. Dans d’autres langues, les conjonctions de subordination pour les propositions déclaratives subordonnées peuvent être explicites ou implicites, et dans certaines langues ce sont des clitiques qui sont écrits rattachés à un autre mot.</xsl:text>
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
<xsl:text> il </xsl:text>
<xsl:choose>
                <xsl:when test="//comp/@comp='no'">n’y a ni conjonction de subordination ni clitique ni affixe pour les propositions déclaratives subordonnées. Toutes les propositions subordonnées ont donc la même structure que des phrases normales.  <xsl:choose>
                   <xsl:when test="//ip/@auxNonfinite='yes'">Il y a toujours une distinction entre les propositions subordonnées finies et non-finies puisqu’il y a un auxilliaire non-fini. </xsl:when>
                   <xsl:when test="//ip/@auxNonfinite='no'">Il y a toujours une distinction entre les propositions subordonnées finies et non-finies puisqu’il y a un marqueur non-fini sur le verbe. </xsl:when>
                   <xsl:when test="//ip/@auxNonfinite='none'">Il n’y a pas non plus de distinction entre les propositions finies et non finies subordonnées puisqu’il n’y a pas de forme non finie dans la langue. </xsl:when>
                </xsl:choose>
</xsl:when>
                <xsl:when test="//comp/@comp='yes'">au moins une conjonction de subordination pour les propositions déclaratives subordonnées.  </xsl:when>
             </xsl:choose>
<xsl:if test="normalize-space(//comp/@comp)='yes'">
<xsl:text>Il </xsl:text>
             <xsl:choose>
                <xsl:when test="//comp/@compNonfinite='yes'">y a une conjonction de subordination distincte pour les propositions non-finies. </xsl:when>   
                <xsl:when test="//comp/@compNonfinite='no'">n’y a pas de conjonction de subordination distincte pour les propositions non-finies.  <xsl:choose>
                   <xsl:when test="//ip/@auxNonfinite='yes'">Il y a toujours une distinction entre les propositions subordonnées finies et non-finies puisqu’il y a un auxilliaire non-fini. </xsl:when>
                   <xsl:when test="//ip/@auxNonfinite='no'">Il y a toujours une distinction entre les propositions subordonnées finies et non-finies puisqu’il y a un marqueur non-fini sur le verbe. </xsl:when>
                   <xsl:when test="//ip/@auxNonfinite='none'">Il n’y a pas non plus de distinction entre les propositions finies et non finies subordonnées puisqu’il n’y a pas de forme non finie dans la langue. </xsl:when>
                </xsl:choose>
</xsl:when>
          </xsl:choose>
             <xsl:if test="normalize-space(//comp/@compWord)='some' and normalize-space(//comp/@comp)='yes'">
<xsl:text> Certaines</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//comp/@compWord)!='some' and normalize-space(//comp/@comp)='yes'">
<xsl:text> Les</xsl:text>
</xsl:if>
<xsl:text> conjonctions de subordination </xsl:text>
                <xsl:choose>
                   <xsl:when test="//comp/@compWord='yes'">sont écrites comme mot indépendant. </xsl:when>
                   <xsl:when test="//comp/@compWord='some'">sont écrites comme mot indépendant, mais quelques-unes sont rattachées </xsl:when>
                   <xsl:when test="//comp/@compWord='no'">sont rattachées </xsl:when>
                </xsl:choose>
                <xsl:text></xsl:text>
                <xsl:if test="normalize-space(//comp/@compWord)='no' and normalize-space(//comp/@comp)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/@comp)='yes'">
                   <xsl:if test="normalize-space(//comp/compProclitic/@checked)='yes' and normalize-space(//comp/compEnclitic/@checked)='no' and normalize-space(//comp/compPrefix/@checked)='no' and normalize-space(//comp/compSuffix/@checked)='no'">
<xsl:text>au début du premier mot de la proposition complétive, quel que soit ce mot, comme proclitique de constituant.  </xsl:text>
</xsl:if>
                   <xsl:if test="normalize-space(//comp/compProclitic/@checked)='no' and normalize-space(//comp/compEnclitic/@checked)='yes' and normalize-space(//comp/compPrefix/@checked)='no' and normalize-space(//comp/compSuffix/@checked)='no'">
<xsl:text>à la fin du dernier mot de la proposition complétive, quel que soit ce mot, comme enclitique de constituant.    </xsl:text>
</xsl:if>
                   <xsl:if test="normalize-space(//comp/compProclitic/@checked)='yes' and normalize-space(//comp/compEnclitic/@checked)='yes' and normalize-space(//comp/compPrefix/@checked)='no' and normalize-space(//comp/compSuffix/@checked)='no'">
<xsl:text>soit au début du premier mot de la proposition complétive ou à la fin du dernier mot de la proposition complétive, quel que soient ces mots, comme clitique de constituant.   </xsl:text>
</xsl:if>
                   <xsl:if test="normalize-space(//comp/compProclitic/@checked)='no' and normalize-space(//comp/compEnclitic/@checked)='no' and normalize-space(//comp/compPrefix/@checked)='yes' and normalize-space(//comp/compSuffix/@checked)='no'">
<xsl:text> sur le verbe dans la proposition complétive, comme préfixe.  </xsl:text>
</xsl:if>
                   <xsl:if test="normalize-space(//comp/compProclitic/@checked)='no' and normalize-space(//comp/compEnclitic/@checked)='no' and normalize-space(//comp/compPrefix/@checked)='no' and normalize-space(//comp/compSuffix/@checked)='yes'">
<xsl:text> sur le verbe dans la proposition complétive, comme suffixe.   </xsl:text>
</xsl:if>
                   <xsl:if test="normalize-space(//comp/compProclitic/@checked)='no' and normalize-space(//comp/compEnclitic/@checked)='no' and normalize-space(//comp/compPrefix/@checked)='yes' and normalize-space(//comp/compSuffix/@checked)='yes'">
<xsl:text>sur le verbe dans la proposition complétive,  certains comme préfixes et d’autres comme suffixes.   </xsl:text>
</xsl:if>
                   <xsl:if test="normalize-space(//comp/compProclitic/@checked)='yes' and normalize-space(//comp/compEnclitic/@checked)='no' and normalize-space(//comp/compPrefix/@checked)='yes' and normalize-space(//comp/compSuffix/@checked)='no' or normalize-space(//comp/compProclitic/@checked)='yes' and normalize-space(//comp/compEnclitic/@checked)='no' and normalize-space(//comp/compPrefix/@checked)='no' and normalize-space(//comp/compSuffix/@checked)='yes' or normalize-space(//comp/compProclitic/@checked)='yes' and normalize-space(//comp/compEnclitic/@checked)='no' and normalize-space(//comp/compPrefix/@checked)='yes' and normalize-space(//comp/compSuffix/@checked)='yes' or normalize-space(//comp/compProclitic/@checked)='no' and normalize-space(//comp/compEnclitic/@checked)='yes' and normalize-space(//comp/compPrefix/@checked)='yes' and normalize-space(//comp/compSuffix/@checked)='no' or normalize-space(//comp/compProclitic/@checked)='no' and normalize-space(//comp/compEnclitic/@checked)='yes' and normalize-space(//comp/compPrefix/@checked)='no' and normalize-space(//comp/compSuffix/@checked)='yes' or normalize-space(//comp/compProclitic/@checked)='no' and normalize-space(//comp/compEnclitic/@checked)='yes' and normalize-space(//comp/compPrefix/@checked)='yes' and normalize-space(//comp/compSuffix/@checked)='yes' or normalize-space(//comp/compProclitic/@checked)='yes' and normalize-space(//comp/compEnclitic/@checked)='no' and normalize-space(//comp/compPrefix/@checked)='yes' and normalize-space(//comp/compSuffix/@checked)='yes' or normalize-space(//comp/compProclitic/@checked)='yes' and normalize-space(//comp/compEnclitic/@checked)='yes' and normalize-space(//comp/compPrefix/@checked)='yes' and normalize-space(//comp/compSuffix/@checked)='no' or normalize-space(//comp/compProclitic/@checked)='yes' and normalize-space(//comp/compEnclitic/@checked)='yes' and normalize-space(//comp/compPrefix/@checked)='no' and normalize-space(//comp/compSuffix/@checked)='yes' or normalize-space(//comp/compProclitic/@checked)='yes' and normalize-space(//comp/compEnclitic/@checked)='yes' and normalize-space(//comp/compPrefix/@checked)='yes' and normalize-space(//comp/compSuffix/@checked)='yes'">
<xsl:text>soit au début au à la fin de la proposition complétive comme clitique de constituant, ou sur le verbe dans la proposition complétive comme affixe.  </xsl:text>
</xsl:if>
                   <xsl:if test="normalize-space(//comp/compProclitic/@checked)='no' and normalize-space(//comp/compEnclitic/@checked)='no' and normalize-space(//comp/compPrefix/@checked)='no' and normalize-space(//comp/compSuffix/@checked)='no' and normalize-space(//comp/compAttachesOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//comp/attachesOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
                   <xsl:if test="normalize-space(//comp/compProclitic/@checked)='yes' and normalize-space(//comp/compAttachesOther/@checked)='yes' or normalize-space(//comp/compEnclitic/@checked)='yes' and normalize-space(//comp/compAttachesOther/@checked)='yes' or normalize-space(//comp/compPrefix/@checked)='yes' and normalize-space(//comp/compAttachesOther/@checked)='yes' or normalize-space(//comp/compSuffix/@checked)='yes' and normalize-space(//comp/compAttachesOther/@checked)='yes'">
<xsl:text>  Certains aussi se rattachent ___</xsl:text>
<xsl:value-of select="//comp/attachesOther" />  <xsl:text>.</xsl:text>
</xsl:if>              
                </xsl:if>  </xsl:if>
</p>   
       
       <xsl:if test="normalize-space(//comp/@compWord)='no' and normalize-space(//comp/compProclitic/@checked)='yes' or normalize-space(//comp/@compWord)='no' and normalize-space(//comp/compEnclitic/@checked)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/compProclitic/@checked)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/compEnclitic/@checked)='yes'">
<p>
<xsl:text>Voici les clitiques complétifs :</xsl:text>
</p>
</xsl:if>   
       <xsl:if test="normalize-space(//comp/@compWord)='no' and normalize-space(//comp/compProclitic/@checked)='yes' or normalize-space(//comp/@compWord)='no' and normalize-space(//comp/compEnclitic/@checked)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/compProclitic/@checked)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/compEnclitic/@checked)='yes'">
<example num="xComp.12">
<table border="1">
             <tr>
                <th>Clitiqies complétifs</th>
                <th>Glose</th>
             </tr>
             <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//comp/compCliticExample),'.','')" />
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
       <xsl:if test="normalize-space(//comp/@compWord)='no' and normalize-space(//comp/compPrefix/@checked)='yes' or normalize-space(//comp/@compWord)='no' and normalize-space(//comp/compSuffix/@checked)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/compPrefix/@checked)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/compSuffix/@checked)='yes'">
<p>
<xsl:text>Voici les affixes complétifs :</xsl:text>
</p>
</xsl:if>   
       <xsl:if test="normalize-space(//comp/@compWord)='no' and normalize-space(//comp/compPrefix/@checked)='yes' or normalize-space(//comp/@compWord)='no' and normalize-space(//comp/compSuffix/@checked)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/compPrefix/@checked)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/compSuffix/@checked)='yes'">
<example num="xComp.16">
<table border="1">
             <tr>
                <th>Affixes complétifs</th>
                <th>Glose</th>
             </tr>
             <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//comp/compAffixExample),'.','')" />
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
       <xsl:if test="normalize-space(//comp/@compWord)='no' and normalize-space(//comp/compAttachesOther/@checked)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/compAttachesOther/@checked)='yes'">
<p>
<xsl:text>Voici les autres conjonctions de subordination qui se rattachent comme cela est admis en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont:</xsl:text>
</p>
</xsl:if>   
       <xsl:if test="normalize-space(//comp/@compWord)='no' and normalize-space(//comp/compAttachesOther/@checked)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/compAttachesOther/@checked)='yes'">
<example num="xComp.20">
<table border="1">
             <tr>
                <th>Autres conjonctions de subordination qui se rattachent</th>
                <th>Glose</th>
             </tr>
             <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//comp/compAttachesOtherExample),'.','')" />
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
       
       <xsl:if test="normalize-space(//comp/@compWord)='yes' and normalize-space(//comp/@comp)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/@comp)='yes'">
<p>
<xsl:text> Les conjonctions de subordination qui sont des mots indépendants se trouvent </xsl:text>
<xsl:if test="normalize-space(//comp/compBefore/@checked)='yes' and normalize-space(//comp/compAfter/@checked)='no' and normalize-space(//comp/compBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//comp/compBefore/@checked)='no' and normalize-space(//comp/compAfter/@checked)='yes' and normalize-space(//comp/compBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//comp/compBefore/@checked)='no' and normalize-space(//comp/compAfter/@checked)='no' and normalize-space(//comp/compBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//comp/compBefore/@checked)='yes' and normalize-space(//comp/compAfter/@checked)='yes' and normalize-space(//comp/compBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//comp/compBefore/@checked)='yes' and normalize-space(//comp/compAfter/@checked)='no' and normalize-space(//comp/compBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//comp/compBefore/@checked)='no' and normalize-space(//comp/compAfter/@checked)='yes' and normalize-space(//comp/compBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//comp/compBefore/@checked)='yes' and normalize-space(//comp/compAfter/@checked)='yes' and normalize-space(//comp/compBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//comp/compOther/@checked)='no'">
<xsl:text> reste de la proposition complétive. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//comp/compBefore/@checked)='no' and normalize-space(//comp/compAfter/@checked)='no' and normalize-space(//comp/compBoth/@checked)='no' and normalize-space(//comp/compOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//comp/compOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//comp/compBefore/@checked)='yes' and normalize-space(//comp/compOther/@checked)='yes' or normalize-space(//comp/compAfter/@checked)='yes' and normalize-space(//comp/compOther/@checked)='yes' or normalize-space(//comp/compBoth/@checked)='yes' and normalize-space(//comp/compOther/@checked)='yes'">
<xsl:text> reste de la proposition complétive et peuvent aussi se trouver ___</xsl:text> <xsl:value-of select="//comp/compOther" /> <xsl:text>. </xsl:text>
</xsl:if>
<xsl:text> Voici les conjonctions de subordination :</xsl:text>
</p>
</xsl:if>          
       <xsl:if test="normalize-space(//comp/@compWord)='yes' and normalize-space(//comp/@comp)='yes' or normalize-space(//comp/@compWord)='some' and normalize-space(//comp/@comp)='yes'">
<example num="xComp.24">
<table border="1">
             <tr>
                <th>Conjonctions de subordination</th>
                <th>Glose</th>
             </tr>
             <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//comp/compExample),'.','')" />
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
<xsl:text>Voir la section </xsl:text>
<sectionRef sec="sQues" />
<xsl:text> pour une discussion semblable sur les conjonctions de subordination pour des questions et la section </xsl:text>
<sectionRef sec="sRelCl" />
<xsl:text> pour les propositions relatives.</xsl:text>
</p>
       <p>
<xsl:text>Chacune des sous-sections suivantes présente un type particulier de complément pour un verbe ou tout autre prédicat. Voir la section </xsl:text>
<sectionRef sec="sAdvCl" />
<xsl:text> pour des exemples de propositions adverbiales. Certains adverbes peuvent aussi prendre des compléments de proposition semblables à ceux-ci, mais les propositions adverbiales ne sont pas des compléments du verbe principal.  </xsl:text>
<object type="tComment">Vous devrez peut-être supprimer certaines parties du texte et combiner des exemples si votre langue ne fait pas les mêmes distinctions.</object>
</p>
       <xsl:if test="normalize-space(//comp/@comp)='yes' and normalize-space(//comp/@compNonfinite)='yes' or normalize-space(//comp/@comp)='yes' and normalize-space(//comp/@compNonfinite)='no' and normalize-space(//ip/@auxNonfinite)!='none'">
<section2 id="sCompTypeFiniteAndNonfiniteCP">
          <secTitle>Propositions complétives finis et non-finis</secTitle>
                <p contentType="ctComparativeIntro">
<xsl:text>Les verbes qui prennent seulement une proposition complétive finie, avec ou sans conjonction de subordination, comprennent les exemples suivants en anglais et en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I believe (that) Jill is my friend</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Je crois que Jeanne est mon amie »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jill insists (that) she is my friend</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Jeanne insiste qu’elle est mon amie »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I know (that) he likes me</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Je sais qu’il m’aime »</xsl:text>
</gloss>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>Certains verbes ont seulement une proposition complétive finie avec ou sans conjonction de subordination. Voici quelques exemples de ce type en </xsl:text>
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
                <example num="xComp.CompTypeFiniteAndNonfiniteCP.8">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/finiteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteCP.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
                <p contentType="ctComparativeIntro">
<xsl:text>Des verbes qui prennent soit un complément fini, avec ou sans conjonction de subordination, soit un complément non-fini sans conjonction de subordination comprennent les exemples suivants en anglais et en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I expect that Joe will come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Je m’attends à ce que Jacques va venir à la fête »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I expect Joe to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Je m’attends à Jacques à venir à la fête »</xsl:text>
</gloss>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>Certains verbes peuvent avoir soit un complément fini, avec ou sans conjonction de subordination soit un complément non-fini sans conjonction de subordination. Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteAndNonfiniteCP.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/finiteOrNonfiniteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteCP.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
                <p contentType="ctComparativeIntro">
<xsl:text>Certains verbes qui ne prennent qu’un complément non-fini sans un conjonction de subordination admettent soit un sujet différent que celui de la proposition principale ou un sujet omis lorsque le sujet est identique à celui de la proposition principale. Voici quelques exemples en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je veux venir à la fête</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je veux que Jacques vienne à la fête</langData>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>conjonction de subordination et admettent soit un sujet différent que celui de la proposition principale soit un sujet omis lorsque le sujet se réfère à celui de la proposition principale. Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteAndNonfiniteCP.20">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteCP.20</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
                <p contentType="ctComparativeIntro">
<xsl:text>Des verbes qui ne prennent qu’un  complément non-fini sans conjonction de subordination, mais qui exigent que le sujet se réfère au sujet de la proposition principale comprennent les exemples suivants en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jacques a essayé de venir à la fête</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>J’ai essayé de penser à d’autres exemples</langData>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>Certains verbes ont seulement un complément non-fini sans conjonction de subordination mais exigent que le sujet se réfère au sujet de la proposition principale et qu’il soit omis. Voici quelques exemples de ce type en </xsl:text>
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
                <example num="xComp.CompTypeFiniteAndNonfiniteCP.26">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteProDropExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteCP.26</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
                <p contentType="ctComparativeIntro">
<xsl:text>Des verbes qui ne prennent seulement qu’un complément non-fini, mais pour lesquels la conjonction de subordination en anglais </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>for</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « pour »</xsl:text>
</gloss>
<xsl:text> est présente quand le sujet subordoneé ne se réfère pas au sujet de la proposition principale comprennent les exemples suivants en anglais : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Joe would hate for Sue to be at the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Jacques n’aimerait pas que Suzanne soit à la fête)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Joe hates to dance</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Jacques déteste danser)</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I would like to be appreciated</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je voudrais être apprécié)</xsl:text>
</gloss>
<xsl:text>.  En français, la propositions complément doit être introduite par ‘que’ et le verbe sera conjugué lorsque les sujets sont différents, alors que le verbe sera à une forme non finie si les sujets sont co-référents dans les deux propositions.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>Certains verbes n’ont qu’un complément non-fini, mais la conjonction de subordination est présent lorsque le sujet enchâssé ne se réfère pas au sujet de la proposition principale. Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteAndNonfiniteCP.32">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteCPOrProDropExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteCP.32</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
                <p contentType="ctComparativeIntro">
<xsl:text>Des verbes qui prennent un object direct tout comme une proposition complétive soit finie ou non-finie comprennent les exemples suivants en anglais : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I will persuade Joe that he should come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je vais persuader Jacques qu’il devrait venir à la fête)</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I will persuade Joe to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je vais persuader Jacques de venir à la fête)</xsl:text>
</gloss>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>D’autres verbes ont un objet direct de même qu’une proposition complétive finie et non-finie.  Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteAndNonfiniteCP.38">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/DPCPExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteCP.38</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
            </section2>
</xsl:if>
           
       <xsl:if test="normalize-space(//comp/@comp)='yes' and normalize-space(//comp/@compNonfinite)='no' and normalize-space(//ip/@auxNonfinite)='none'">
<section2 id="sCompTypeFiniteCP">
          <secTitle>Propositions complétives</secTitle>
          <p contentType="ctComparativeIntro">
<xsl:text>Les verbes qui prennent une proposition complétive, avec ou sans conjonction de subordination incluent les exemples suivants en anglais (les constructions sont différentes du français) : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I believe (that) Jill is my friend</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je crois que Jeanne est mon amie)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jill insists (that) she is my friend</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Jeanne insiste qu’elle est mon amie)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I know (that) he likes me</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je sais qu’il m’aime)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I expect that Joe will come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je m’attends à ce que Jacques va venir à la fête)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I expect Joe to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je m’attends à Jacques à venir à la fête)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I want to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je veux aller à la fête)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I want Joe to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je veux que Jacques vienne à la fête)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Joe tried to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Jacques a essayé de venir à la fête)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Joe would hate for Sue to be at the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Jacques ne voudrait pas que Suzanne soit à la fête)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Joe hates to dance</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Jacques déteste danser)</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I would like to be appreciated</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (J’aimerais être apprécié)</xsl:text>
</gloss>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>Certains verbes ont seulement une proposition complétive avec ou sans conjonction de subordination. Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteCP.8">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/finiteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteCP.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <example num="xComp.CompTypeFiniteCP.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/finiteOrNonfiniteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteCP.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <example num="xComp.CompTypeFiniteCP.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteCP.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <example num="xComp.CompTypeFiniteCP.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteProDropExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteCP.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <example num="xComp.CompTypeFiniteCP.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteCPOrProDropExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteCP.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <p contentType="ctComparativeIntro">
<xsl:text>Des verbes qui prennent un objet direct tout comme une proposition complétive incluent les exemples suivants en anglais : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I will persuade Joe that he should come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je persuaderai Jacques qu’il devrait venir à la fête)</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I will persuade Joe to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je vais persuader Jacques de venir à la fête)</xsl:text>
</gloss>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>D’autres verbes ont un objet direct tout comme une proposition complétive finie ou non-finie.  Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteCP.22">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/DPCPExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteCP.22</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
       </section2>
</xsl:if>
       
       <xsl:if test="normalize-space(//comp/@comp)='no' and normalize-space(//ip/@auxNonfinite)!='none'">
<section2 id="sCompTypeFiniteAndNonfiniteIP">
          <secTitle>Compléments phrastiques finis et non-finis</secTitle>
          <p contentType="ctComparativeIntro">
<xsl:text>Des verbes qui ne prennent qu’un complément phrastique fini incluent les exemples suivants en anglais : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I believe Jill is my friend</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je crois que Jeanne est mon amie)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jill insists she is my friend</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Jeanne insiste qu’elle est mon amie)</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I know he likes me</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je sais qu’il m’aime)</xsl:text>
</gloss>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>Certains verbes n’ont qu’un complément phrastique fini. Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteAndNonfiniteIP.8">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/finiteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteIP.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <p contentType="ctComparativeIntro">
<xsl:text>Des verbes qui prennent soit un complément phrastique fini ou non-fini incluent les exemples suivants en angais : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I expect Joe will come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je m’attends à ce que Jacques va venir à la fête)</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I expect Joe to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Je m’attends à Jacques vienne à la fête)</xsl:text>
</gloss>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>Certains verbes peuvent avoir un complément phrastique fini ou non-fini.  Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteAndNonfiniteIP.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/finiteOrNonfiniteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteIP.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <p contentType="ctComparativeIntro">
<xsl:text>Certains verbes qui ne prennent seulement qu’un complément phrastique non-fini admettent soit un sujet différent que la proposition principale soit un sujet omis lorsqu'il se réfère au sujet de la proposition principale. Des exemples en français comprennent : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je veux aller à la fête</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je veux que Jacques vienne à la fête</langData>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>Certains verbes ont seulement un complément phrastique non-fini et admettent soit un sujet différent que la proposition principale soit un sujet omis lorsqu’il se réfère au sujet de la proposition principale.  Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteAndNonfiniteIP.20">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteIP.20</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <p contentType="ctComparativeIntro">
<xsl:text>Des verbes qui prennent seulement un complément phrastique non-fini mais exigent que le sujet se réfère au sujet de la proposition principale et omis comprennent les exemples suivants en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jacques a essayé de venir à la fête</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jacques déteste danser</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>J’aimerais être apprécié</langData>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>D’autres verbes ont seulement un complément phrastique non-fini mais exigent que le sujet se réfère au sujet de la proposition principale et omis.  Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteAndNonfiniteIP.26">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteProDropExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteIP.26</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <example num="xComp.CompTypeFiniteAndNonfiniteIP.28">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteCPOrProDropExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteIP.28</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <p contentType="ctComparativeIntro">
<xsl:text>Des verbes qui prennent un objet direct aussi bien qu’un complément phrastique fini ou non-fini incluent les exemples suivants en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je vais persuader Jacques qu’il devrait venir à la fête</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je vais persuader Jacques de venir à la fête</langData>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>D’autres verbes ont un objet direct de même qu’un complément phrastique fini ou non-fini.  Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteAndNonfiniteIP.34">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/DPCPExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteAndNonfiniteIP.34</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
       </section2>
</xsl:if>
       
       <xsl:if test="normalize-space(//comp/@comp)='no' and normalize-space(//ip/@auxNonfinite)='none'">
<section2 id="sCompTypeFiniteIP">
          <secTitle>Compléments phrastiques</secTitle>
          <p contentType="ctComparativeIntro">
<xsl:text>Certains verbes qui prennent un complément phrastique incluent les exemples suivants en anglais et français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I believe Jill is my friend</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Je crois que Jeanne est mon amie »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jill insists she is my friend</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Jeanne insiste qu’elle est mon amie »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I know he likes me</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Je sais qu’il m’aime »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I expect Joe will come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Je m’attends à ce que Jacques va venir à la fête »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I expect Joe to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Je m’attends à Jacques à venir à la fête »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I want to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Je veux aller à la fête »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I want Joe to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Je veux que Jacques vienne à la fête »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Joe tried to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Jacques a essayé de venir à la fête »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Joe hates to dance</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Jacques déteste danser »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I would like to be appreciated</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « J’aimerais être apprécié »</xsl:text>
</gloss>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>Certains verbes ont seulement un complément phrastique. Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteIP.8">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/finiteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteIP.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <example num="xComp.CompTypeFiniteIP.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/finiteOrNonfiniteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteIP.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <example num="xComp.CompTypeFiniteIP.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteIP.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <example num="xComp.CompTypeFiniteIP.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteProDropExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteIP.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <example num="xComp.CompTypeFiniteIP.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/nonfiniteCPOrProDropExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteIP.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <p contentType="ctComparativeIntro">
<xsl:text>Des verbes qui prennent un objet direct de même qu’un complément phrastique incluent les exemples suivants en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je vais persuader Jacques qu’il devrait venir à la fête</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je vais persuader Jacques de venir à la fête</langData>
<xsl:text>.  Voici quelques exemples de ce type en </xsl:text>
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
          <p contentType="ctPracticalIntro">
<xsl:text>D’autres verbes ont un objet direct de même qu’une proposition complétive finie ou non-finie.  Voici quelques exemples de ce type en </xsl:text>
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
          <example num="xComp.CompTypeFiniteIP.22">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/DPCPExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeFiniteIP.22</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
       </section2>
</xsl:if>
       
       <section2 id="sCompRaising">
          <secTitle>Constructions « de montée »</secTitle>
          <p contentType="ctComparativeIntro">
<xsl:text>Les verbes « de montée » semblent inclure tous les verbes de perception et verbes copulatifs. Ces verbes ont soit un complément non-fini ou un complément adjectival qui lui-même a soit un complément fini avec un conjonction de subordination  ou un complément non-fini. Le verbe principal n’a pas son propre sujet, alors la position du sujet est remplie par le sujet du complément non-fini comme dans en anglais : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John seemed to like the tortillas</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Jean semblait aimer les tortillas)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Joe is likely to come to the party</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Jacques est probable de venir à la fête)</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The weather is certain to change soon</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Le temps est certain à changer bientôt)</xsl:text>
</gloss>
<xsl:text>.  Lorsque la proposition complétive est finie, le sujet ne peut pas être « monté », ainsi un pronom sans caractéristique </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>it</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « il »</xsl:text>
</gloss>
<xsl:text> remplit la position du sujet de la proposition principale en anglais et français comme dans : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>It seems likely that Joe will come</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Il semble probable que Jacques viendra »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>It is certain that the weather will change soon</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Il est certain que le temps va changer bientôt »</xsl:text>
</gloss>
<xsl:text>.  Certaines langues ont simplement le verbe sans un sujet, suivi d’une proposition complétive, alors aucune « montée » ne se passe : les deux propositions partagent simplement le même sujet. </xsl:text>
</p>
          <p contentType="ctPracticalIntro">
<xsl:text>Les verbes « de montée » semblent inclure tous les verbes de perception et verbes copulatifs. Le verbe principal n’a pas son propre sujet, ainsi la position du sujet est remplie par le sujet du complément non-fini ou par un pronom sans caractéristique. Certaines langues ont simplement le verbe principal sans sujet, suivi d’une proposition complétive, alors aucune « montée » ne se passe : les deux propositions partagent simplement le même sujet. </xsl:text>
</p>
              <p>
<xsl:text>Voici quelques exemples de ce type en </xsl:text>
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
              <example num="xComp.CompRaising.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/raisingExample" />
<xsl:with-param name="sExNumber">xComp.CompRaising.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>              
           </section2>
           
           <section2 id="sCompCausative">
              <secTitle>Compléments causatifs</secTitle>
              <p contentType="ctComparativeIntro">
<xsl:text>Les causatif syntactiques sont formés de deux propositions et ont un objet qui agit également comme le sujet de la proposition complétive. Cette proposition complétive est toujours non-finie mais n’a pas besoin du marqueur non-fini avec certains verbes en anglais comme dans : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>My mother made me clean my room</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Ma mère m’a obligé à nettoyer ma chambre)</xsl:text>
</gloss>
<xsl:text>, alors que cela est exigé par d’autres comme dans : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The other girl forced us to leave the group</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (L’autre fille nous a forcé de quitter le groupe)</xsl:text>
</gloss>
<xsl:text>.  (Les constructions sont différentes en français.)</xsl:text>
</p>
              
              <p contentType="ctPracticalIntro">
<xsl:text>Les causatifs syntactiques sont formés de deux propositions et ont un objet qui agit également comme le sujet de la proposition complétive. </xsl:text>
</p>
              <xsl:if test="normalize-space(//ip/causativeMake/@checked)='no'">
<p>
<xsl:text>Il n’y a pas de causatifs syntactiques en </xsl:text>
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
                 <xsl:if test="normalize-space(//ip/causativeMake/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de ce type en </xsl:text>
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
              <example num="xComp.CompCausative.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/causeExample" />
<xsl:with-param name="sExNumber">xComp.CompCausative.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>     
              <xsl:if test="normalize-space(//ip/causativeAffix/@checked)='yes'">
<p>
<xsl:text>Voir section </xsl:text>
<sectionRef sec="sIPCausatives" />
<xsl:text> pour des exemples de causatifs dans des propositions uniques, dans lesquelles le verbe est marqué par un affixe qui introduit un argument supplémentaire.</xsl:text>
</p>
</xsl:if>
           </section2>
      
           <section2 id="sCompSpeech">
              <secTitle>Citations direct et indirect comme compléments</secTitle>
              
              <p contentType="ctComparativeIntro">
<xsl:text>Les verbes de parole peuvent avoir des compléments qui sont des discours direct ou indirect. Les citations directes peuvent être à peu près n’importe quelle phrase ou interjection ou salutation comme :  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Suzannee a dit : « je viendrai chez toi demain »</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jacques a dit : « Au revoir ! »</langData>
</p>
              <p contentType="ctComparativeIntro">
<xsl:text>Les citations indirectes comme compléments sont plus restreintes. En français et anglais, certains verbes de parole prennent un complément phrastique finie avec ou sans conjonction de subordination, et une syntagme prépositionnelle facultatif pour exprimer l’auditeur comme dans :  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Suzanne (m’a dit) qu’elle viendrait ici demain</langData>
<xsl:text>.  D'autres demandent que l’auditeur soit exprimé comme un objet avec un complément phrastique fini comme dans : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Suzanne m’a dit qu’elle viendrait ici demain</langData>
<xsl:text>, ou un complément phrastique non-fini dans lequel le sujet doit se référer au sujet de la proposition principale et omis comme dans : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Suzanne m’a dit de venir ici demain</langData>
<xsl:text>.</xsl:text>
</p>
              <p contentType="ctPracticalIntro">
<xsl:text>Les verbes de parole peuvent avoir des compléments qui sont des discours direct ou indirect. Les citations directes peuvent être à peu près n’importe quelle phrase ou interjection ou salutation, mais les citations indirectes sont plus restreintes et dépendent du verbe principal.</xsl:text>
</p>
              <p>
<xsl:text>Voici quelques exemples de compléments de verbes de parole en </xsl:text>
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
              <example num="xComp.CompSpeech.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/quotationExample" />
<xsl:with-param name="sExNumber">xComp.CompSpeech.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>     
           </section2>
           
            <xsl:if test="normalize-space(//comp/@compTypeOther)='yes'">
<section2 id="sCompTypeOther">
               <secTitle>Autres restrictions pour des propositions complétives</secTitle>
                <p contentType="ctComparativeIntro">
<xsl:text>Certaines langues ont aussi des verbes qui ont d’autres restrictions sur les propositions subordonnées, comme par exemple que le verbe dépendant doit être au subjonctif ou à l’aspect perfectif. </xsl:text>
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
<xsl:text>  il y a aussi la restriction suivantes avec certains verbes :  __</xsl:text>
<xsl:value-of select="//comp/otherRestrictions" />
<xsl:text>.  Voici quelques exemples :</xsl:text>
</p>
                <example num="xComp.CompTypeOther.8">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//comp/otherExample" />
<xsl:with-param name="sExNumber">xComp.CompTypeOther.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
        
        </section2>
</xsl:if>

    </section1>
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
        
    
    
        
        
        
    
    
        
        
        
    
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
      
      
   
   
      
   
   
      
   
</xsl:template>
</xsl:stylesheet>
