<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="relcl">
   <section1 id="sRelCl">
      <secTitle>Propositions relatives </secTitle>
      <p contentType="ctComparativeIntro">
<xsl:text>Les propositions relatives qualifient normalement un nom noyau et elles ont l’une des quatre structures suivantes : une proposition complétive avec une conjonction de subordination signifiant </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>qui/que</langData>
<xsl:text>, comme dans 
         </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>l’homme qui est venu en retard à la réunion</langData>
<xsl:text> ; ou une question d’information avec </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>qui/que</langData>
<xsl:text> antéposé, comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>l’homme qui est venu en retard à la réunion</langData>
<xsl:text> ; ou, (pour quelques langues autres que le français) une proposition complétive mais ayant un marqueur relatif spécial dans la position de la conjonction de subordination, ou, peut-être avec deux marqueurs qui se trouvent de part et d’autre de la proposition relative ; ou (pour quelques langues autres que le français) une phrase normale avec un marqueur relatif attaché au verbe.</xsl:text>
</p>
      <p contentType="ctPracticalIntro">
<xsl:text>Les propositions relatives qualifient normalement un nom noyau et elles ont l’une de quatre structures suivantes : une proposition complétive avec uns conjonction de subordination ; ou une question d’information avec </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>qui/que</langData>
<xsl:text> antéposé ; ou une proposition complétive mais ayant un marqueur relatif spécial dans la position du conjonction de subordination ; ou une phrase normale avec un marqueur relatif attaché au verbe.</xsl:text>
</p>
      <xsl:if test="normalize-space(//relcl/@exist)='no'">
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
<xsl:text> il n’y a aucun type de proposition relative.</xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@exist)='yes'">
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
<xsl:text>, les propositions relatives se trouvent </xsl:text>
<xsl:choose>
               <xsl:when test="//relcl/@clausePos='before'">avant le</xsl:when>
               <xsl:when test="//relcl/@clausePos='after'">après le</xsl:when>
               <xsl:when test="//relcl/@clausePos='either'">de part et d’autre du</xsl:when>
               <xsl:when test="//relcl/@clausePos='unknown'"> _______ </xsl:when>
            </xsl:choose>
<xsl:text> nom noyau comme montré dans les exemples suivants l’illustrent :</xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@exist)='yes'">
<example num="xRelCl.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//relcl/example" />
<xsl:with-param name="sExNumber">xRelCl.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
      
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//comp/@comp)!='no' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes'"> <xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='no' and normalize-space(//relcl/relTypeIP/@checked)='no' and normalize-space(//relcl/relTypeOther/@checked)='no'">
<xsl:text>Les </xsl:text>
</xsl:if>
              <xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Certaines des </xsl:text>
</xsl:if>
<xsl:text>propositions relatives en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
              <xsl:text> sont comme une proposition complétive qui utilise la conjonction de subordination verbale habituelle.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPRel/@checked)='yes'">
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='no' and normalize-space(//relcl/relTypeIP/@checked)='no' and normalize-space(//relcl/relTypeOther/@checked)='no'">
<xsl:text>Les </xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='yes'">
<xsl:text>D’autres </xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Certaines </xsl:text>
</xsl:if>
<xsl:text>propositions relatives en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
            <xsl:text> sont comme une proposition complétive avec des marqueurs relatifs spéciaux.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPWh/@checked)='yes'">
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='no' and normalize-space(//relcl/relTypeIP/@checked)='no' and normalize-space(//relcl/relTypeOther/@checked)='no'">
<xsl:text>Les </xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes'">
<xsl:text>D’autres </xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Certaines </xsl:text>
</xsl:if>
<xsl:text>propositions relatives en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
            <xsl:text> sont comme une question d’information avec un mot interrogatif antéposé.  </xsl:text>
<xsl:choose>
               <xsl:when test="//relcl/@whAndComp='no'">Il n’y a que le mot interrogatif antéposé qui se trouve dans ce type de proposition relative, il n’y a pas de marqueur relatif.</xsl:when>  
               <xsl:when test="//relcl/@whAndComp='yes'">Un marqueur relatif et le mot interrogatif antéposé sont tous deux exigés dans ce type de proposition relative. </xsl:when>
               <xsl:when test="//relcl/@whAndComp='optional'">Un marqueur relatif peut se trouver facultativement avec le mot interrogatif antéposé dans ce type de proposition relative. </xsl:when>
            </xsl:choose>
</xsl:if>
<xsl:if test="normalize-space(//relcl/@relWord)='some'">
<xsl:text>Certaines des </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/@relWord)!='some'">
<xsl:text>Les </xsl:text>
</xsl:if>
<xsl:text>marqueurs relatifs ou conjonctions de subordination </xsl:text>
<xsl:choose>
            <xsl:when test="//relcl/@relWord='yes'">sont écrits comme mots indépendants.  </xsl:when>
            <xsl:when test="//relcl/@relWord='some'">sont écrits comme mots indépendants mais certains se rattachent </xsl:when>
            <xsl:when test="//relcl/@relWord='no'">se ratttachent </xsl:when>
         </xsl:choose>
<xsl:choose>
            <xsl:when test="//relcl/@relCliticPos='before'">au début du premier mot dans la partie phrastique de la proposition relative comme proclitique de constituant. Voici ces clitiques :</xsl:when>
            <xsl:when test="//relcl/@relCliticPos='after'">à la fin du dernier mot dans la partie phrastique de la proposition relative comme enclitique de constituant. Voici ces clitiques :</xsl:when>
            <xsl:when test="//relcl/@relCliticPos='both'">des deux côtés pour entourer la partie phrastique de la proposition relative comme clitique de constituant. Voici ces clitiques :</xsl:when>
            <xsl:when test="//relcl/@relCliticPos='unknown'">à ________ dans la partie phrastique de la proposition relative comme clitique de constituant. Voici ces clitiques :</xsl:when>
         </xsl:choose>
</p>
</xsl:if>     
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//comp/@comp)!='no' and normalize-space(//relcl/@relWord)!='yes' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/@relWord)!='yes' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/@whAndComp)!='no' and normalize-space(//relcl/@relWord)!='yes'">
<example num="xRelCl.16">
<table border="1">
            <tr>
               <th>Clitiques marqueur relatif </th>
               <th>Glose</th>
            </tr>
            <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//relcl/relCliticExample),'.','')" />
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
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//comp/@comp)!='no' and normalize-space(//relcl/@relWord)!='no' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/@relWord)!='no' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/@whAndComp)!='no' and normalize-space(//relcl/@relWord)!='no'">
<p>
<xsl:text>Les mots marqueurs relatifs sont placé </xsl:text>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='yes' and normalize-space(//relcl/relWordAfter/@checked)='no' and normalize-space(//relcl/relWordBoth/@checked)='no'">
<xsl:text>avant</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='no' and normalize-space(//relcl/relWordAfter/@checked)='yes' and normalize-space(//relcl/relWordBoth/@checked)='no'">
<xsl:text>après</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='no' and normalize-space(//relcl/relWordAfter/@checked)='no' and normalize-space(//relcl/relWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='yes' and normalize-space(//relcl/relWordAfter/@checked)='yes' and normalize-space(//relcl/relWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='yes' and normalize-space(//relcl/relWordAfter/@checked)='no' and normalize-space(//relcl/relWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='no' and normalize-space(//relcl/relWordAfter/@checked)='yes' and normalize-space(//relcl/relWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='yes' and normalize-space(//relcl/relWordAfter/@checked)='yes' and normalize-space(//relcl/relWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre de</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordOther/@checked)='no'">
<xsl:text> la partie phrastique de la proposition relative.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='no' and normalize-space(//relcl/relWordAfter/@checked)='no' and normalize-space(//relcl/relWordBoth/@checked)='no' and normalize-space(//relcl/relWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//relcl/relWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='yes' and normalize-space(//relcl/relWordOther/@checked)='yes' or normalize-space(//relcl/relWordAfter/@checked)='yes' and normalize-space(//relcl/relWordOther/@checked)='yes' or normalize-space(//relcl/relWordBoth/@checked)='yes' and normalize-space(//relcl/relWordOther/@checked)='yes'">
<xsl:text> la partie phrastique de la proposition relative et peuvent aussi se trouver ___</xsl:text>
<xsl:value-of select="//relcl/relWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Voici les mots marqueurs relatifs : </xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//comp/@comp)!='no' and normalize-space(//relcl/@relWord)!='no' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/@relWord)!='no' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/@whAndComp)!='no' and normalize-space(//relcl/@relWord)!='no'">
<example num="xRelCl.20">
<table border="1">
               <tr>
                  <th>Mots marqueurs relatifs </th>
                  <th>Glose</th>
               </tr>
               <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//relcl/relWordExample),'.','')" />
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
         
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='no' and normalize-space(//relcl/relTypeOther/@checked)='no'">
<xsl:text>Les </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes'">
<xsl:text>D’autres </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Certaines des </xsl:text>
</xsl:if>
<xsl:text>propositions relatives en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont comme une phrase normale avec un marqueur relatif spécial rattaché au verbe.  Voici l’affixe relatif :</xsl:text>
</p>
</xsl:if>
         <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes'">
<example num="xRelCl.24">
<table border="1">
               <tr>
                  <th>Affixe relatif</th>
                  <th>Glose</th>
               </tr>
               <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//relcl/relAffixExample),'.','')" />
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
         
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='no' and normalize-space(//relcl/relTypeIP/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='no'">
<xsl:text>Les </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeIPRel/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes'">
<xsl:text>D’autres </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='no' and normalize-space(//relcl/relTypeIP/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Certaines des </xsl:text>
</xsl:if>
<xsl:text>propositions relatives en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont comme une phrase normale qui modifie le nom noyau sans marquage spécial.  </xsl:text>
</p>
</xsl:if>
      
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='no' and normalize-space(//relcl/relTypeIP/@checked)='no' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Les propositions relatives en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
            <xsl:text> sont formées en ___</xsl:text>
<xsl:value-of select="//relcl/relTypeOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes' or normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes' or normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes' or normalize-space(//relcl/relTypeIPRel/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes' or normalize-space(//relcl/relTypeIP/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Il y a aussi des propositions relatives qui sont formées en ___</xsl:text>
<xsl:value-of select="//relcl/relTypeOther" />
<xsl:text>.</xsl:text>
</xsl:if>
</p>
</xsl:if>    
      
      <xsl:if test="normalize-space(//relcl/@exist)='yes'">
<p>
<xsl:text>Voici quelques exemples de phrases complètes comprenant les propositions relatives ci-dessus :</xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@exist)='yes'">
<example num="xRelCl.32">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//relcl/sentExample" />
<xsl:with-param name="sExNumber">xRelCl.32</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@exist)='yes'">
<p contentType="ctComparativeIntro">
<xsl:text>Il y a des langues dans lesquelles une des structures mentionnées ci-dessus peut se trouver comme syntagme nominale sans nom noyau à modifier, ce qui s’appelle d’habitude les propositions relatives « sans tête ». Par exemple, la phrase, en anglais, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Julie brought [the food that we ate today]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « Jeanne a apporté [la nourriture que nous avons mangée aujourd’hui] »</xsl:text>
</gloss>
<xsl:text> a une pleine proposition relative complète dans la position de l’objet, alors que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Julie brought [what we ate today]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « Jeanne a apporté [ce que nous avons mangé aujourd’hui] »</xsl:text>
</gloss>
<xsl:text> a comme complément d’objet une proposition relative « sans tête ».</xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@exist)='yes'">
<p contentType="ctPracticalIntro">
<xsl:text>Dans les propositions relatives « sans tête », une proposition relative se trouve seule comme syntagme nominal, sans un nom noyau qu’elle modifie.</xsl:text>
</p>
</xsl:if>
      
      <xsl:if test="normalize-space(//relcl/@exist)='yes'">
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
<xsl:text> </xsl:text>
<xsl:choose>
            <xsl:when test="//relcl/@headless='no'"> un nom noyau est obligatoirement présent dans toutes les propositions relatives ; aucune proposition relative sans tête n’est donc pas admise.</xsl:when>
            <xsl:when test="//relcl/@headless='yes'"> il est admis que le nom noyau manque dans les propositions relatives ; les propositions relatives sans tête sont donc admises.</xsl:when>
         </xsl:choose>
<xsl:text> </xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@headless)='yes' and normalize-space(//relcl/@exist)='yes'">
<p>
<xsl:text>Voici quelques exemples de propositions relatives sans tête dans des phrases completes :</xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@headless)='yes' and normalize-space(//relcl/@exist)='yes'">
<example num="xRelCl.42">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//relcl/headlessExample" />
<xsl:with-param name="sExNumber">xRelCl.42</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
   </section1>
   
   
   
    
        
    
    
        
    
   
      
   
   
      
   
   
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
   
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
   
      
      
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
   
   
   
   
      
      
      
      
   
      
      
      
         
   
         
         
         
         
         
         
         
         
         
         
         
       
      
         
         
         
         
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
   
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
    
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
     
   
      
      
      
      
      
      
      
      
      
      
      
    
   
      
         
         
         
         
         
         
         
         
         
         
         
       
      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
      
   
        
        
        
    
</xsl:template>
</xsl:stylesheet>
