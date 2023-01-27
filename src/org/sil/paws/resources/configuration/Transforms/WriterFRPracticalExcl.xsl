<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="excl">
  <section1 id="sExcl">
     <secTitle>Salutations, Interjections et Exclamations</secTitle>
	<p>
<xsl:text>Cette section considère les différents types d’expressions fréquentes, mais qui ne sont pas des phrases complètes. Les salutations, les interjections et les exclamations seront traitées tour à tour.</xsl:text>
</p>
<section2 id="sExclGreet">
	<secTitle>Salutations</secTitle>
   <p contentType="ctComparativeIntro">
<xsl:text>Les salutations sont typiquement formées d'un mot particulier ou d'une locution particulière, qui sont soit seuls soit suivis d'un nom ou d'un syntagme nominal qui décrit la personne ou l'animal salués. Certaines sont des phrases complètes ou des questions complètes, comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Comment vas-tu?</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Comment allez-vous?</langData>
<xsl:text> qui ne doivent pas être traitées séparément. </xsl:text>
</p>
   <p contentType="ctComparativeIntro">
<xsl:text>Certains exemples de salutations en français sont :
   </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Salut!</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Bonjour!</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Au revoir</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Bonjour, Monsieur</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Bonne nuit, doux enfant</langData>
<xsl:text>.</xsl:text>
</p>
   <p contentType="ctPracticalIntro">
<xsl:text>Les salutations consistent typiquement d’un mot particulier ou d’une locution particulière, qui est soit seul(e) soit suivie(e) d’un nom ou d’un syntagme nominal qui décrit la personne ou l’animal salué(e).</xsl:text>
</p>
   <p>
<xsl:text>Voici quelques exemples de salutations en </xsl:text>
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
			<example num="xExcl.ExclGreet.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//excl/greetExample" />
<xsl:with-param name="sExNumber">xExcl.ExclGreet.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</section2>
<section2 id="sExclIntj">
	<secTitle>Interjections</secTitle>
   <p contentType="ctComparativeIntro">
<xsl:text>Les interjections sont typiquement formées de mots ou locutions particuliers qui sont utilisés seuls, généralement suivis d’un point d’exclamation. Bien que beaucoup de mots utilisés dans les interjections ne le soient pas ailleurs, les adjectifs ordinaires sont également utilisés de cette façon. Voici quelques exemples d'interjections en français :
   </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Aïe!</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Super!</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Dégueu !</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Oh là là!</langData>
</p>
   <p contentType="ctPracticalIntro">
<xsl:text>interjections sont typiquement formées de mots ou locutions particuliers qui sont utilisés seuls, généralement suivis d'un point d'exclamation. Bien que beaucoup de mots utilisés dans des interjections ne le soient pas ailleurs, les adjectifs ordinaires sont également utilisés de cette façon.</xsl:text>
</p>
      
   <p>
<xsl:text>Voici quelques exemples d’interjection en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> comprennent :</xsl:text>
</p>
			<example num="xExcl.ExclIntj.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//excl/intjExample" />
<xsl:with-param name="sExNumber">xExcl.ExclIntj.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
   <p>
<xsl:text>Les réponses </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Oui</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Non</langData>
<xsl:text> à des questions sont similaires à des interjections.  Voici les mots suivants sont utilisés pour exprimer ces réponses en </xsl:text>
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
<example num="xExcl.ExclIntj.14">
<table border="1">
					<tr>
					   <th>Morphèmes</th>
						<th>Glose</th>
					   <th>Signification</th>
					</tr>
					<xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//excl/yesExample),'.','')" />
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
<td align="left" rowspan="1">
						   <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>oui</xsl:text>
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
<td align="left" rowspan="1">
						   <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>oui</xsl:text>
</gloss>
						</td>
</tr>
</xsl:otherwise>
</xsl:choose>
					<xsl:variable name="sExampleValue1.0">
<xsl:value-of select="translate(string(//excl/noExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength1.0" select="string-length(normalize-space($sExampleValue1.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength1.0 != 0 and $sExampleValue1.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength1.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR GLOSE</xsl:text>
</gloss>
</td>
<td align="left" rowspan="1">
						   <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>non</xsl:text>
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
<td align="left" rowspan="1">
						   <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>non</xsl:text>
</gloss>
						</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</table>
</example>
</section2>
<section2 id="sExclExcl">
   <secTitle>Exclamations</secTitle>
   <p contentType="ctComparativeIntro">
<xsl:text>Les exclamations sont typiquement formées en un mot particulier comme </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>comment</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>combien</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>que</langData>
<xsl:text> en français. suivies d’un syntagme adjectival et généralement terminées d’un point d’exclamation. Voici quelques exemples en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Comme tu es grand!</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Que c’est chic!</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Combien c’est merveilleux que votre famille puisse venir!</langData>
</p>
   <p contentType="ctPracticalIntro">
<xsl:text>Les exclamations sont typiquement formées en un mot particulier suivies d’un syntagme adjectival et généralement terminées d’un point d’exclamation.</xsl:text>
</p>  
  
   <xsl:if test="normalize-space(//excl/@exclM)='no'">
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
<xsl:text> il n’y a pas de mot spécial pour marquer les exclamations de ce type, elles ne sont donc pas différentes des interjections formées d’adjectifs de la section précédente.</xsl:text>
</p>
</xsl:if>
   <xsl:if test="normalize-space(//excl/@exclM)='yes'">
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
<xsl:text> il y a un ou plusieurs mots spéciaux qui signalent une exclamation, ces mots apparaîssent </xsl:text>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='yes' and normalize-space(//excl/exclMAfter/@checked)='no' and normalize-space(//excl/exclMBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='no' and normalize-space(//excl/exclMAfter/@checked)='yes' and normalize-space(//excl/exclMBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='no' and normalize-space(//excl/exclMAfter/@checked)='no' and normalize-space(//excl/exclMBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='yes' and normalize-space(//excl/exclMAfter/@checked)='yes' and normalize-space(//excl/exclMBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='yes' and normalize-space(//excl/exclMAfter/@checked)='no' and normalize-space(//excl/exclMBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='no' and normalize-space(//excl/exclMAfter/@checked)='yes' and normalize-space(//excl/exclMBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='yes' and normalize-space(//excl/exclMAfter/@checked)='yes' and normalize-space(//excl/exclMBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMOther/@checked)='no'">
<xsl:text> syntagme adjectival.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='no' and normalize-space(//excl/exclMAfter/@checked)='no' and normalize-space(//excl/exclMBoth/@checked)='no' and normalize-space(//qp/NPDegreePosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//excl/exclMOther" />
<xsl:text>.    </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='yes' and normalize-space(//excl/exclMOther/@checked)='yes' or normalize-space(//excl/exclMAfter/@checked)='yes' and normalize-space(//excl/exclMOther/@checked)='yes' or normalize-space(//excl/exclMBoth/@checked)='yes' and normalize-space(//excl/exclMOther/@checked)='yes'">
<xsl:text> syntagme adjectival et peut appaître aussi ___</xsl:text>
<xsl:value-of select="//excl/exclMOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Voici les marqueurs d’exclamation :</xsl:text>
</p>
</xsl:if>
<xsl:if test="normalize-space(//excl/@exclM)='yes'">
<example num="xExcl.ExclExcl.12">
<table border="1">
<tr>
   <th>Marqueurs d’exclamation</th>
	<th>Glose</th>
</tr>
	<xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//excl/exclMExample),'.','')" />
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
<xsl:text>Voici quelques exemples d’exclamations en </xsl:text>
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
   <example num="xExcl.ExclExcl.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//excl/exclExample" />
<xsl:with-param name="sExNumber">xExcl.ExclExcl.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</section2>
  </section1>

	


	

   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
</xsl:template>
</xsl:stylesheet>
