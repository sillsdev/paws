<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="neg">
    <section1 id="sNeg">
       <secTitle>Constructions négatives</secTitle>
        <p>
<xsl:text>Les éléments négatifs verbaux, les adverbes négatifs, les pronoms indéfinis négatifs, et la négation des syntagmes nominaux seront présentés en premier lieu, ensuite le type du système de négation qui caracterise </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sera précisé.</xsl:text>
</p>
        <section2 id="sNegVerbal">
           <secTitle>Négation de l’auxiliaire et du verbe</secTitle>
              
              <p contentType="ctComparativeIntro">
<xsl:text>Dans certaines langues, la négation du verbe se fait au moyen d’un élément auxiliaire ; alors que dans d’autres, elle se fait simplement au moyen d’un affixe verbal. L’anglais possède l’auxiliaire </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (ne)</xsl:text>
</gloss>
<xsl:text> - mot indépendent qui suit toujours un autre auxiliaire - et la forme contractée </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>-n’t</langData>
<xsl:text> qui se rattache comme suffixe à l’auxiliaire. Quelques exemples de phrases négatives en anglais sont : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The boy did not eat the banana</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Le garçon n’a pas mangé la banane »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The boy didn’t eat the banana</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Le garçon n’a pas mangé la banane »</xsl:text>
</gloss>
<xsl:text>.  En français par contre, la negation se fait au moyen de deux auxiliaires </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>ne</langData>
<xsl:text> - mot indépendent qui précède le verbe, et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pas</langData>
<xsl:text> qui le suit. Quelques exemples de phrases négatives en français sont : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le garçon n’a pas trouvé sa montre</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je ne le vois pas</langData>
<xsl:text>.</xsl:text>
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
<xsl:text>,</xsl:text>
<xsl:choose>
                    <xsl:when test="//neg/@negVerbal='yes'"> la négation du verbe  s’exprime des façons suivantes. </xsl:when>				
                    <xsl:when test="//neg/@negVerbal='no'"> il n’y a aucun moyen d’exprimer la négation, ni sur l’auxiliaire ni sur le verbe.</xsl:when>			
                 </xsl:choose>
</p>
           <xsl:if test="normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<p>
<xsl:text>Certains auxiliaires négatifs sont écrits comme des mots indépendents.  L’auxiliaire négatif </xsl:text>
<xsl:choose>
                 <xsl:when test="//neg/@negAuxRequiresAux='no'">peut être le seul auxiliaire du syntagme.</xsl:when>
                 <xsl:when test="//neg/@negAuxRequiresAux='yes'">n’est pas nécessairement le seul auxiliaire dans le syntagme ; il faut la présence d’un auxiliaire positif.</xsl:when>
           </xsl:choose>
<xsl:text></xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<example num="xNeg.NegVerbal.10">
<table border="1">
              <tr>
                 <th>Auxiliaires négatifs</th>
                 <th>Glose</th>
              </tr>
              <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negAuxExample),'.','')" />
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
           
           
              <xsl:if test="normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<p>
<xsl:text>Il y a </xsl:text>
<xsl:if test="normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text>un affixe négatif qui s’attache à un auxiliaire positif pour le mettre au négatif. Parmi les exemples des affixes d’auxiliaire négatif qui s’attachent à un auxiliaire positif on peut citer :</xsl:text>
</p>
</xsl:if>
                 <xsl:if test="normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<example num="xNeg.NegVerbal.14">
<table border="1">
                       <tr>
                          <th>Auxiliaires négatifs</th>
                          <th>Glose</th>
                       </tr>
                       <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negAuxAffixExample),'.','')" />
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
          
           <xsl:if test="normalize-space(//neg/negVAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<p>
<xsl:text>Il y a </xsl:text>
<xsl:if test="normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes' or normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text>un affixe négatif qui se rattache au verbe pour le mettre au négatif. Voici quelques exemples d’affixes verbaux rattachés à un verbe :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negVAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<example num="xNeg.NegVerbal.18">
<table border="1">
                 <tr>
                    <th>Verbes à marqueur négatif</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negVerbExample),'.','')" />
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
           <xsl:if test="normalize-space(//neg/negVerbalOther/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<p>
<xsl:text>Il y a </xsl:text>
<xsl:if test="normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes' or normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes' or normalize-space(//neg/negVAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<xsl:text>aussi  </xsl:text>
</xsl:if>
<xsl:text>___</xsl:text>
<xsl:value-of select="//neg/negVerbalOther" />
<xsl:text>.  Voici quelques exemples d’éléments verbaux négatifs :</xsl:text>
</p>
</xsl:if>  
           <xsl:if test="normalize-space(//neg/negVerbalOther/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<example num="xNeg.NegVerbal.22">
<table border="1">
                 <tr>
                    <th>Éléments verbaux négatifs</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negVerbalOtherExample),'.','')" />
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
           
           <xsl:if test="normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<p>
<xsl:text>Voici quelques auxiliaires négatifs qu’on utilise dans une phrase complète (sans arguments négatifs) :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<example num="xNeg.NegVerbal.26">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/auxExample" />
<xsl:with-param name="sExNumber">xNeg.NegVerbal.26</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<p>
<xsl:text>Voici quelques exemples d‘affixes auxiliaires négatifs rattachés à un auxiliaire positif utilisés dans une phrase complète (sans arguments négatifs) :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<example num="xNeg.NegVerbal.30">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/auxAffixExample" />
<xsl:with-param name="sExNumber">xNeg.NegVerbal.30</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negVAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<p>
<xsl:text>Voici quelques exemples de phrases complètes qui comprennent des verbes négatifs :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negVAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<example num="xNeg.NegVerbal.34">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/verbAffixExample" />
<xsl:with-param name="sExNumber">xNeg.NegVerbal.34</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
           
           <xsl:if test="normalize-space(//neg/negVerbalOther/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<p>
<xsl:text>Voici quelques exemples de phrases complètes qui comprennent les autres éléments verbaux négatifs admis en </xsl:text>
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
           <xsl:if test="normalize-space(//neg/negVerbalOther/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<example num="xNeg.NegVerbal.38">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/negVerbalOtherSentExample" />
<xsl:with-param name="sExNumber">xNeg.NegVerbal.38</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/negVAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes' or normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/negVAffix/@checked)='yes' and normalize-space(//neg/@negVerbal)='yes'">
<p>
<xsl:text> Comme montrent ces exemples, </xsl:text>
<xsl:choose>
                 <xsl:when test="//neg/@auxVerbRequired='yes'">un auxiliaire négatif n’est pas admis sans un verbe au négatif.</xsl:when>
                 <xsl:when test="//neg/@auxVerbRequired='no'">il n’est pas nécessaire que le verbe soit négatif lorsqu’il y a un auxiliaire négatif.</xsl:when>
              </xsl:choose>
</p>
</xsl:if>
           
    
        </section2>
        <section2 id="sNegAdverb">
           <secTitle>Les adverbes négatifs</secTitle>
          
           <p>
<xsl:text>L’adverbe temporel négatif </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>jamais</langData>
<xsl:text> s’exprime ainsi en </xsl:text>
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
           
           <xsl:if test="normalize-space(//neg/negTemporalTypeWord/@checked)='yes'">
<p>
<xsl:text>Il y a au moins un mot ou syntagme indépendent qui est sans relation ave les adverbes temporels positifs. Voici ces adverbes ou syntagmes temporels négatifs :</xsl:text>
</p>
</xsl:if>   
           <xsl:if test="normalize-space(//neg/negTemporalTypeWord/@checked)='yes'">
<example num="xNeg.NegAdverb.8">
<table border="1">
                 <tr>
                    <th>Adverbes ou syntagmes temporels négatifs</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negTemporalExample),'.','')" />
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
           
           <xsl:if test="normalize-space(//neg/negTemporalTypeAdverb/@checked)='yes'">
<p>
<xsl:text>Il y a </xsl:text>
<xsl:if test="normalize-space(//neg/negTemporalTypeWord/@checked)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text> un affixe négatif qui peut être rattaché à un syntagme temporel positif pour former un mot adverbial temporel négatif. Voici l’affixe négatif :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negTemporalTypeAdverb/@checked)='yes'">
<example num="xNeg.NegAdverb.12">
<table border="1">
                 <tr>
                    <th>Affixe négatif</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negTemporalAdverbAffixExample),'.','')" />
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
           <xsl:if test="normalize-space(//neg/negTemporalTypeAdverb/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’adverbes temporels négatifs formés par l’ajout d’un affixe négatif aux adverbes temporels positifs : </xsl:text>
</p>
</xsl:if>   
           <xsl:if test="normalize-space(//neg/negTemporalTypeAdverb/@checked)='yes'">
<example num="xNeg.NegAdverb.16">
<table border="1">
                 <tr>
                    <th>Adverbes temporels négatifs</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negTemporalAdverbExample),'.','')" />
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
                    
           <xsl:if test="normalize-space(//neg/negTemporalTypeAdverbWord/@checked)='yes'">
<p>
<xsl:text>Il y a </xsl:text>
<xsl:if test="normalize-space(//neg/negTemporalTypeWord/@checked)='yes' or normalize-space(//neg/negTemporalTypeAdverb/@checked)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text>un mot indépendent négatif qui se met </xsl:text>
<xsl:if test="normalize-space(//neg/negTemporalAdverbWordBefore/@checked)='yes' and normalize-space(//neg/negTemporalAdverbWordAfter/@checked)='no' and normalize-space(//neg/negTemporalAdverbWordBoth/@checked)='no'">
<xsl:text>avant un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negTemporalAdverbWordBefore/@checked)='no' and normalize-space(//neg/negTemporalAdverbWordAfter/@checked)='yes' and normalize-space(//neg/negTemporalAdverbWordBoth/@checked)='no'">
<xsl:text>après un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negTemporalAdverbWordBefore/@checked)='no' and normalize-space(//neg/negTemporalAdverbWordAfter/@checked)='no' and normalize-space(//neg/negTemporalAdverbWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre d’un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negTemporalAdverbWordBefore/@checked)='yes' and normalize-space(//neg/negTemporalAdverbWordAfter/@checked)='yes' and normalize-space(//neg/negTemporalAdverbWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre de d’un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negTemporalAdverbWordBefore/@checked)='yes' and normalize-space(//neg/negTemporalAdverbWordAfter/@checked)='no' and normalize-space(//neg/negTemporalAdverbWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre d’un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negTemporalAdverbWordBefore/@checked)='no' and normalize-space(//neg/negTemporalAdverbWordAfter/@checked)='yes' and normalize-space(//neg/negTemporalAdverbWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre d’un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negTemporalAdverbWordBefore/@checked)='yes' and normalize-space(//neg/negTemporalAdverbWordAfter/@checked)='yes' and normalize-space(//neg/negTemporalAdverbWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre d’un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negTemporalAdverbWordOther/@checked)='no'">
<xsl:text> adverbe temporel positif pour former un syntagme adverbial temporel de négation.   </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negTemporalAdverbWordBefore/@checked)='no' and normalize-space(//neg/negTemporalAdverbWordAfter/@checked)='no' and normalize-space(//neg/negTemporalAdverbWordBoth/@checked)='no' and normalize-space(//neg/negTemporalAdverbWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//neg/negTemporalTypeAdverbWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negTemporalAdverbWordBefore/@checked)='yes' and normalize-space(//neg/negTemporalAdverbWordOther/@checked)='yes' or normalize-space(//neg/negTemporalAdverbWordAfter/@checked)='yes' and normalize-space(//neg/negTemporalAdverbWordOther/@checked)='yes' or normalize-space(//neg/negTemporalAdverbWordBoth/@checked)='yes' and normalize-space(//neg/negTemporalAdverbWordOther/@checked)='yes'">
<xsl:text> un adverbe temporel positif pour former un syntagme adverbial temporel négatif et peut aussi se placer ___</xsl:text> <xsl:value-of select="//neg/negTemporalTypeAdverbWordOther" /> <xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text> Voici le mot négatif qu’on rencontre avec les adverbes temporels positifs : </xsl:text>
</p>
</xsl:if>
              <xsl:if test="normalize-space(//neg/negTemporalTypeAdverbWord/@checked)='yes'">
<example num="xNeg.NegAdverb.20">
<table border="1">
                    <tr>
                       <th>Mot négatif</th>
                       <th>Glose</th>
                    </tr>
                    <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negTemporalAdverbWordExample),'.','')" />
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
           <xsl:if test="normalize-space(//neg/negTemporalTypeAdverbWord/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes adverbiaux temporels négatifs formés par le mot négatif et les adverbes temporels positifs :</xsl:text>
</p>
</xsl:if>   
              <xsl:if test="normalize-space(//neg/negTemporalTypeAdverbWord/@checked)='yes'">
<example num="xNeg.NegAdverb.24">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/negTemporalAdverbWordsExample" />
<xsl:with-param name="sExNumber">xNeg.NegAdverb.24</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>     
           
           <xsl:if test="normalize-space(//neg/negTemporalTypeAffix/@checked)='yes'">
<p>
<xsl:text>Il y a </xsl:text>
<xsl:if test="normalize-space(//neg/negTemporalTypeWord/@checked)='yes' or normalize-space(//neg/negTemporalTypeAdverb/@checked)='yes' or normalize-space(//neg/negTemporalTypeAdverbWord/@checked)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text>au moins un affixe verbal qui exprime le sens de l’adverbe temporel négatif. Voici les affixes adverbiaux temporels négatifs qui peuvent se rattacher aux verbes : </xsl:text>
</p>
</xsl:if>                     
           <xsl:if test="normalize-space(//neg/negTemporalTypeAffix/@checked)='yes'">
<example num="xNeg.NegAdverb.28">
<table border="1">
                 <tr>
                    <th>Affixes adverbiaux temporels négatifs</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negTemporalAffixExample),'.','')" />
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
           
           <xsl:if test="normalize-space(//neg/negTemporalTypeAffix/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’affixes adverbiaux temporels négatifs rattachés aux verbes :</xsl:text>
</p>
</xsl:if>                     
           <xsl:if test="normalize-space(//neg/negTemporalTypeAffix/@checked)='yes'">
<example num="xNeg.NegAdverb.32">
<table border="1">
                 <tr>
                    <th>Verbes aux affixes adverbiaux temporels négatifs</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negTemporalAffixVerbExample),'.','')" />
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
               
           <xsl:if test="normalize-space(//neg/negTemporalTypeVerb/@checked)='yes'">
<p>
<xsl:text>Il y a </xsl:text>
<xsl:if test="normalize-space(//neg/negTemporalTypeWord/@checked)='yes' or normalize-space(//neg/negTemporalTypeAdverb/@checked)='yes' or normalize-space(//neg/negTemporalTypeAdverbWord/@checked)='yes' or normalize-space(//neg/negTemporalTypeAffix/@checked)='yes'">
<xsl:text>aussi  </xsl:text>
</xsl:if>
<xsl:text>un affixe verbal négatif, et un verbe au négatif peut exister avec des adverbes temporels positifs pour donner un sens temporel négatif. Voici quelques exemples d’adverbes temporels positifs accompagnés d’un verbe négatif :</xsl:text>
</p>
</xsl:if>   
           <xsl:if test="normalize-space(//neg/negTemporalTypeVerb/@checked)='yes'">
<example num="xNeg.NegAdverb.36">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/negTemporalVerbExample" />
<xsl:with-param name="sExNumber">xNeg.NegAdverb.36</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negTemporalTypeOther/@checked)='yes'">
<p>
<xsl:text>Le temporel négatif peut </xsl:text>
<xsl:if test="normalize-space(//neg/negTemporalTypeWord/@checked)='yes' or normalize-space(//neg/negTemporalTypeAdverb/@checked)='yes' or normalize-space(//neg/negTemporalTypeAdverbWord/@checked)='yes' or normalize-space(//neg/negTemporalTypeAffix/@checked)='yes' or normalize-space(//neg/negTemporalTypeVerb/@checked)='yes'">
<xsl:text>aussi  </xsl:text>
</xsl:if>
<xsl:text>être exprimé par ___</xsl:text>
<xsl:value-of select="//neg/negTemporalTypeOther" />
<xsl:text> comme pas exemple :</xsl:text>
</p>
</xsl:if>   
           <xsl:if test="normalize-space(//neg/negTemporalTypeOther/@checked)='yes'">
<example num="xNeg.NegAdverb.40">
<table border="1">
                 <tr>
                    <th>Temporel négatif</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negTemporalOtherExample),'.','')" />
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
<xsl:text>Voici quelques phrases complètes qui contiennent un temporel négatif :</xsl:text>
</p>
            <example num="xNeg.NegAdverb.44">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/advTemporalExample" />
<xsl:with-param name="sExNumber">xNeg.NegAdverb.44</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          
              
           <p>
<xsl:text>L’adverbe locatif négatif </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>nulle part</langData>
<xsl:text> s’exprime des façons suivantes en </xsl:text>
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
           
           <xsl:if test="normalize-space(//neg/negLocativeTypeWord/@checked)='yes'">
<p>
<xsl:text>Il y a au moins un mot ou syntagme indépendent qui est sans relation avec les adverbes locatifs positifs. Voici ces adverbes ou syntagmes locatifs négatifs :</xsl:text>
</p>
</xsl:if>   
           <xsl:if test="normalize-space(//neg/negLocativeTypeWord/@checked)='yes'">
<example num="xNeg.NegAdverb.50">
<table border="1">
                 <tr>
                    <th>Adverbes ou syntagmes locatifs négatifs</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negLocativeExample),'.','')" />
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
           
           <xsl:if test="normalize-space(//neg/negLocativeTypeAdverb/@checked)='yes'">
<p>
<xsl:text>Il y a </xsl:text>
<xsl:if test="normalize-space(//neg/negLocativeTypeWord/@checked)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text>un affixe négatif qui peut se rattacher à un adverbe locatif positif pour former un mot adverbial locatif négatif. Voici l’affixe négatif :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negLocativeTypeAdverb/@checked)='yes'">
<example num="xNeg.NegAdverb.54">
<table border="1">
                 <tr>
                    <th>Affixe négatif</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negLocativeAdverbAffixExample),'.','')" />
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
           <xsl:if test="normalize-space(//neg/negLocativeTypeAdverb/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’adverbes locatifs négatifs qu’on forme en rattachant l’affixe négatif aux adverbes locatifs positifs :</xsl:text>
</p>
</xsl:if>   
           <xsl:if test="normalize-space(//neg/negLocativeTypeAdverb/@checked)='yes'">
<example num="xNeg.NegAdverb.58">
<table border="1">
                 <tr>
                    <th>Adverbes locatifs négatifs</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negLocativeAdverbExample),'.','')" />
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
           
           <xsl:if test="normalize-space(//neg/negLocativeTypeAdverbWord/@checked)='yes'">
<p>
<xsl:text>Il y a </xsl:text>
<xsl:if test="normalize-space(//neg/negLocativeTypeWord/@checked)='yes' or normalize-space(//neg/negLocativeTypeAdverb/@checked)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text>un mot indépendent négatif qui se met </xsl:text>
<xsl:if test="normalize-space(//neg/negLocativeAdverbWordBefore/@checked)='yes' and normalize-space(//neg/negLocativeAdverbWordAfter/@checked)='no' and normalize-space(//neg/negLocativeAdverbWordBoth/@checked)='no'">
<xsl:text>avant un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negLocativeAdverbWordBefore/@checked)='no' and normalize-space(//neg/negLocativeAdverbWordAfter/@checked)='yes' and normalize-space(//neg/negLocativeAdverbWordBoth/@checked)='no'">
<xsl:text>après un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negLocativeAdverbWordBefore/@checked)='no' and normalize-space(//neg/negLocativeAdverbWordAfter/@checked)='no' and normalize-space(//neg/negLocativeAdverbWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre d’un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negLocativeAdverbWordBefore/@checked)='yes' and normalize-space(//neg/negLocativeAdverbWordAfter/@checked)='yes' and normalize-space(//neg/negLocativeAdverbWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre d’un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negLocativeAdverbWordBefore/@checked)='yes' and normalize-space(//neg/negLocativeAdverbWordAfter/@checked)='no' and normalize-space(//neg/negLocativeAdverbWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre d’un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negLocativeAdverbWordBefore/@checked)='no' and normalize-space(//neg/negLocativeAdverbWordAfter/@checked)='yes' and normalize-space(//neg/negLocativeAdverbWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre d’un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negLocativeAdverbWordBefore/@checked)='yes' and normalize-space(//neg/negLocativeAdverbWordAfter/@checked)='yes' and normalize-space(//neg/negLocativeAdverbWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre d’un ou de part et d’autre d’un</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negLocativeAdverbWordOther/@checked)='no'">
<xsl:text> adverbe locatif positif pour former un syntagme adverbial locatif négatif.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negLocativeAdverbWordBefore/@checked)='no' and normalize-space(//neg/negLocativeAdverbWordAfter/@checked)='no' and normalize-space(//neg/negLocativeAdverbWordBoth/@checked)='no' and normalize-space(//neg/negLocativeAdverbWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//neg/negLocativeTypeAdverbWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/negLocativeAdverbWordBefore/@checked)='yes' and normalize-space(//neg/negLocativeAdverbWordOther/@checked)='yes' or normalize-space(//neg/negLocativeAdverbWordAfter/@checked)='yes' and normalize-space(//neg/negLocativeAdverbWordOther/@checked)='yes' or normalize-space(//neg/negLocativeAdverbWordBoth/@checked)='yes' and normalize-space(//neg/negLocativeAdverbWordOther/@checked)='yes'">
<xsl:text> un adverbe locatif positif pour former un syntagme adverbial locatif négatif et puet aussi se mettre ___</xsl:text> <xsl:value-of select="//neg/negLocativeTypeAdverbWordOther" /> <xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text> Voici le mot négatif qu’on emploie avec les adverbes locatifs positifs :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negLocativeTypeAdverbWord/@checked)='yes'">
<example num="xNeg.NegAdverb.62">
<table border="1">
                 <tr>
                    <th>Mot négatif</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negLocativeAdverbWordExample),'.','')" />
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
           <xsl:if test="normalize-space(//neg/negLocativeTypeAdverbWord/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes adverbiaux locatifs négatifs qu’on forme avec le mot négatif et les adverbes locatifs positifs :</xsl:text>
</p>
</xsl:if>   
           <xsl:if test="normalize-space(//neg/negLocativeTypeAdverbWord/@checked)='yes'">
<example num="xNeg.NegAdverb.66">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/negLocativeAdverbWordsExample" />
<xsl:with-param name="sExNumber">xNeg.NegAdverb.66</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>     
           
           <xsl:if test="normalize-space(//neg/negLocativeTypeAffix/@checked)='yes'">
<p>
<xsl:text>Il y a </xsl:text>
<xsl:if test="normalize-space(//neg/negLocativeTypeWord/@checked)='yes' or normalize-space(//neg/negLocativeTypeAdverb/@checked)='yes' or normalize-space(//neg/negLocativeTypeAdverbWord/@checked)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text>au moins un affixe verbal qui exprime le sens de l’adverbe locatif négatif. Voici ces affixes adverbiaux locatifs négatifs qui peuvent se rattacher aux verbes :</xsl:text>
</p>
</xsl:if>                     
           <xsl:if test="normalize-space(//neg/negLocativeTypeAffix/@checked)='yes'">
<example num="xNeg.NegAdverb.70">
<table border="1">
                 <tr>
                    <th>Affixes adverbiaux locatifs négatifs</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negLocativeAffixExample),'.','')" />
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
           
           <xsl:if test="normalize-space(//neg/negLocativeTypeAffix/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples d’affixes adverbiaux locatifs négatifs qui se rattachent aux verbes :</xsl:text>
</p>
</xsl:if>                     
           <xsl:if test="normalize-space(//neg/negLocativeTypeAffix/@checked)='yes'">
<example num="xNeg.NegAdverb.74">
<table border="1">
                 <tr>
                    <th>Verbes aux affixes adverbiaux locatifs au négatif</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negLocativeAffixVerbExample),'.','')" />
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
           
           <xsl:if test="normalize-space(//neg/negLocativeTypeVerb/@checked)='yes'">
<p>
<xsl:text>Il y a </xsl:text>
<xsl:if test="normalize-space(//neg/negLocativeTypeWord/@checked)='yes' or normalize-space(//neg/negLocativeTypeAdverb/@checked)='yes' or normalize-space(//neg/negLocativeTypeAdverbWord/@checked)='yes' or normalize-space(//neg/negLocativeTypeAffix/@checked)='yes'">
<xsl:text>aussi  </xsl:text>
</xsl:if>
<xsl:text>un affixe verbal négatif, et un verbe négatif peut apparaître avec les adverbes locatifs positifs pour donner un sens négatif au locatif. Voici quelques exemples d’adverbes locatifs positifs avec un verbe négatif :</xsl:text>
</p>
</xsl:if>   
           <xsl:if test="normalize-space(//neg/negLocativeTypeVerb/@checked)='yes'">
<example num="xNeg.NegAdverb.78">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/negLocativeVerbExample" />
<xsl:with-param name="sExNumber">xNeg.NegAdverb.78</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
           <xsl:if test="normalize-space(//neg/negLocativeTypeOther/@checked)='yes'">
<p>
<xsl:text>Le locatif négatif peut s’exprimer </xsl:text>
<xsl:if test="normalize-space(//neg/negLocativeTypeWord/@checked)='yes' or normalize-space(//neg/negLocativeTypeAdverb/@checked)='yes' or normalize-space(//neg/negLocativeTypeAdverbWord/@checked)='yes' or normalize-space(//neg/negLocativeTypeAffix/@checked)='yes' or normalize-space(//neg/negLocativeTypeVerb/@checked)='yes'">
<xsl:text>aussi  </xsl:text>
</xsl:if>
<xsl:text>par ___</xsl:text>
<xsl:value-of select="//neg/negLocativeTypeOther" />
<xsl:text> comme cela est illustré ici :</xsl:text>
</p>
</xsl:if>   
           <xsl:if test="normalize-space(//neg/negLocativeTypeOther/@checked)='yes'">
<example num="xNeg.NegAdverb.82">
<table border="1">
                 <tr>
                    <th>Locatif négatif</th>
                    <th>Glose</th>
                 </tr>
                 <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//neg/negLocativeOtherExample),'.','')" />
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
<xsl:text>Voici quelques phrases complètes qui contiennent un locatif négatif : </xsl:text>
</p>
           <example num="xNeg.NegAdverb.86">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/advLocativeExample" />
<xsl:with-param name="sExNumber">xNeg.NegAdverb.86</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
           
           <xsl:if test="normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negTemporalTypeAdverb/@checked)='yes' or normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negTemporalTypeAdverbWord/@checked)='yes' or normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negTemporalTypeWord/@checked)='yes' or normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negLocativeTypeAdverb/@checked)='yes' or normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negLocativeTypeAdverbWord/@checked)='yes' or normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negLocativeTypeWord/@checked)='yes'">
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
<xsl:choose>
                   <xsl:when test="//neg/@advVerbRequired='yes'"> un adverbe négatif écrit comme un mot indépendent n’est pas admis sans que le verbe ou l’auxiliaire ne soit également négatif.</xsl:when>
                   <xsl:when test="//neg/@advVerbRequired='no'"> un verbe négatif ou un auxiliaire négatif n’est pas obligatoire lorsqu’il y a un adverbe négatif écrit comme un mot indépendent.</xsl:when>
                </xsl:choose>
</p>
</xsl:if>
        </section2>
 
 <section2 id="sNegPron">
    <secTitle>Pronoms indéfinis négatifs</secTitle>
    <p contentType="ctComparativeIntro">
<xsl:text> Il y a aussi des versions négatives des pronoms indéfinis, tels que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>personne</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>rien</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>aucun</langData>
<xsl:text>.  Quelquefois ces indéfinis négatifs ne se fusionnent pas en un seul mot, comme</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>nulle part</langData>
<xsl:text>.</xsl:text>
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
<xsl:if test="normalize-space(//neg/@negIndef)!='some'">
<xsl:text>, les </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/@negIndef)='some'">
<xsl:text>, certains </xsl:text>
</xsl:if>
<xsl:text>pronoms indéfinis négatifs </xsl:text>
<xsl:choose>
       <xsl:when test="//neg/@negIndef='yes'">sont tous des pronoms en un seul mot. </xsl:when>
       <xsl:when test="//neg/@negIndef='no'">sont tous des syntagmes nominaux au lieu de pronoms en un seul mot. </xsl:when>
       <xsl:when test="//neg/@negIndef='some'">sont des pronoms en un seul mot, mais d’autres sont des syntagmes nominaux. </xsl:when>
    </xsl:choose>
<xsl:text> Voici ces formes indéfinies :</xsl:text>
</p>
    
    <example num="xNeg.NegPron.8">
<table border="1">
          <caption>
<xsl:text>Formes négatives indéfinies</xsl:text>
</caption>
          <tr>
             <th>Type</th>
             <th>Morphèmes</th>
             <th>Glose</th>
          </tr>				
          <xsl:if test="normalize-space(//neg/@negIndef)='yes' or normalize-space(//neg/@negIndef)='some'">
<xsl:variable name="sExampleValue0.1">
<xsl:value-of select="translate(string(//neg/negIndefExample),'.','')" />
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
<xsl:text>Pronoms</xsl:text>
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
<xsl:text>Pronoms</xsl:text>
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
          <xsl:if test="normalize-space(//neg/@negIndef)='no' or normalize-space(//neg/@negIndef)='some'">
<xsl:variable name="sExampleValue1.1">
<xsl:value-of select="translate(string(//neg/negIndefNPExample),'.','')" />
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
<xsl:text>Syntagmes</xsl:text>
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
<xsl:text>Syntagmes</xsl:text>
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
    <p>
<xsl:text>Voici quelques </xsl:text>
<xsl:if test="normalize-space(//neg/@negIndef)='yes'">
<xsl:text>pronoms indéfinis négatifs </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/@negIndef)='no'">
<xsl:text>syntagmes nominaux négatifs</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/@negIndef)='some'">
<xsl:text>pronoms et/ou syntagmes nominaux négatifs</xsl:text>
</xsl:if>
<xsl:text>utilisés comme sujet d’une phrase :</xsl:text>
</p>
    <example num="xNeg.NegPron.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/negIndefSubjExample" />
<xsl:with-param name="sExNumber">xNeg.NegPron.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
    
    <xsl:if test="normalize-space(//neg/@negVerbal)='yes'">
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
<xsl:choose>
          <xsl:when test="//neg/@subjVerbRequired='yes'"> un sujet négatif n’est pas admis sans que le verbe ou l’auxiliaire soit négatif, lui aussi.</xsl:when>
          <xsl:when test="//neg/@subjVerbRequired='no'"> le verbe ou l’auxiliaire n’est pas obligatoirement négatif lorsque le sujet est négatif.</xsl:when>
       </xsl:choose>
</p>
</xsl:if>
    
 </section2>
       
       <section2 id="sNegNominal">
          <secTitle>Négation des syntagmes nominaux</secTitle>
            <p contentType="ctComparativeIntro">
<xsl:text> Les mots de négation </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pas</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>non</langData>
<xsl:text> peut nier un syntagme nominal.   Notez que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pas</langData>
<xsl:text> peut se mettre soit à la place des quantifieurs ou des autres mots de degré à large portée ou avant eux, comme dans les exemples en français: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pas les enfants</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>non tous les cinq enfants</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>non seulement les cinq enfants de Suzanne</langData>
<xsl:text>.  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Pas</langData>
<xsl:text> se met en tête de la phrase nominale, comme dans l’exemple </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pas de petits enfants</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pas de grands garçons</langData>
<xsl:text>. La négation d’un syntagme nominal se trouve normalement en tête ou en fin de syntagme, de sorte qu’il a la plus large portée de tous les modificateurs nominaux du syntagme</xsl:text>
</p>
          <p contentType="ctPracticalIntro">
<xsl:text> Les mots de négation </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pas</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>non</langData>
<xsl:text>peut nier un syntagme nominal. La négation d’un syntagme nominal se place normalement en tête ou en fin de syntagme, de sorte qu’il a la plus large portée de tous les modificateurs nominaux du syntagme</xsl:text>
</p>
          <xsl:if test="normalize-space(//neg/@npDegreeNeg)='none'">
<p>
<xsl:text>Il n’y a pas, semble-t-il, de moyen de nier un syntagme nominal en </xsl:text>
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

          <xsl:if test="normalize-space(//neg/@npDegreeNeg)!='none'">
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
<xsl:if test="normalize-space(//neg/@npDegreeNeg)!='some'">
<xsl:text>des </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/@npDegreeNeg)='some'">
<xsl:text>certains </xsl:text>
</xsl:if>
<xsl:text>éléments qui peuvent nier un syntagme nominal </xsl:text>
<xsl:choose>
   <xsl:when test="//neg/@npDegreeNeg='yes'">sont tous des mots indépendents. </xsl:when>
   <xsl:when test="//neg/@npDegreeNeg='some'">sont des mots indépendents, mais d’autres se rattachent </xsl:when>
   <xsl:when test="//neg/@npDegreeNeg='no'">se rattachent </xsl:when>
</xsl:choose>
<xsl:if test="normalize-space(//neg/@npDegreeNeg)='no' or normalize-space(//neg/@npDegreeNeg)='some'">
      <xsl:if test="normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='no' and normalize-space(//neg/npDegreeNegPrefix/@checked)='no' and normalize-space(//neg/npDegreeNegSuffix/@checked)='no'">
<xsl:text>au début du premier mot, quel qu’il soit, du syntagme nominal en tant que proclitiques syntagmatiques.  </xsl:text>
</xsl:if>
      <xsl:if test="normalize-space(//neg/npDegreeNegProclitic/@checked)='no' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegPrefix/@checked)='no' and normalize-space(//neg/npDegreeNegSuffix/@checked)='no'">
<xsl:text>à la fin du dernier mot, quel qu’il soit, du syntagme nominal en tant qu’enclitiques syntagmatiques.    </xsl:text>
</xsl:if>
      <xsl:if test="normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegPrefix/@checked)='no' and normalize-space(//neg/npDegreeNegSuffix/@checked)='no'">
<xsl:text>soit au début du premier mot du syntagme nominal ou à la fin du dernier mot du syntagme nominal, quels que soient ces mots, en tant que clitiques syntagmatiques.   </xsl:text>
</xsl:if>
      <xsl:if test="normalize-space(//neg/npDegreeNegProclitic/@checked)='no' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='no' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' and normalize-space(//neg/npDegreeNegSuffix/@checked)='no'">
<xsl:text>au nom noyau du syntagme nominal en tant que préfixes.  </xsl:text>
</xsl:if>
      <xsl:if test="normalize-space(//neg/npDegreeNegProclitic/@checked)='no' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='no' and normalize-space(//neg/npDegreeNegPrefix/@checked)='no' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes'">
<xsl:text>au nom noyau du syntagme nominal en tant que suffixes.   </xsl:text>
</xsl:if>
      <xsl:if test="normalize-space(//neg/npDegreeNegProclitic/@checked)='no' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='no' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes'">
<xsl:text>au nom noyau du syntagme nominal, quelques-uns comme préfixes, d’autres comment suffixes.   </xsl:text>
</xsl:if>
      <xsl:if test="normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='no' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' and normalize-space(//neg/npDegreeNegSuffix/@checked)='no' or normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='no' and normalize-space(//neg/npDegreeNegPrefix/@checked)='no' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes' or normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='no' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes' or normalize-space(//neg/npDegreeNegProclitic/@checked)='no' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' and normalize-space(//neg/npDegreeNegSuffix/@checked)='no' or normalize-space(//neg/npDegreeNegProclitic/@checked)='no' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegPrefix/@checked)='no' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes' or normalize-space(//neg/npDegreeNegProclitic/@checked)='no' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes' or normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='no' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes' or normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' and normalize-space(//neg/npDegreeNegSuffix/@checked)='no' or normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegPrefix/@checked)='no' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes' or normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes'">
<xsl:text>soit au début ou à la fin du syntagme nominal comme clitiques syntagmatiques, soit au nom noyau dans le syntagme nominal comme affixe.  </xsl:text>
</xsl:if>
      <xsl:if test="normalize-space(//neg/npDegreeNegProclitic/@checked)='no' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='no' and normalize-space(//neg/npDegreeNegPrefix/@checked)='no' and normalize-space(//neg/npDegreeNegSuffix/@checked)='no' and normalize-space(//neg/npDegreeNegCliticOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//neg/npDegreeNegOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
      <xsl:if test="normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegCliticOther/@checked)='yes' or normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes' and normalize-space(//neg/npDegreeNegCliticOther/@checked)='yes' or normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' and normalize-space(//neg/npDegreeNegCliticOther/@checked)='yes' or normalize-space(//neg/npDegreeNegSuffix/@checked)='yes' and normalize-space(//neg/npDegreeNegCliticOther/@checked)='yes'">
<xsl:text>  D’autres se rattachent ___</xsl:text>
<xsl:value-of select="//neg/npDegreeNegOther" />  <xsl:text>.</xsl:text>
</xsl:if>              
   </xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>   

          <xsl:if test="normalize-space(//neg/@npDegreeNeg)='no' and normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='no' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='some' and normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='some' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes nominaux négatifs auxquels les clitiques négatifs sont rattachés :</xsl:text>
</p>
</xsl:if>   
          <xsl:if test="normalize-space(//neg/@npDegreeNeg)='no' and normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='no' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='some' and normalize-space(//neg/npDegreeNegProclitic/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='some' and normalize-space(//neg/npDegreeNegEnclitic/@checked)='yes'">
<example num="xNeg.NegNominal.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/negCliticExample" />
<xsl:with-param name="sExNumber">xNeg.NegNominal.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>     
          <xsl:if test="normalize-space(//neg/@npDegreeNeg)='no' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='no' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='some' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='some' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes nominaux négatifs auxquels les clitiques négatifs sont rattachés :</xsl:text>
</p>
</xsl:if>   
          <xsl:if test="normalize-space(//neg/@npDegreeNeg)='no' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='no' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='some' and normalize-space(//neg/npDegreeNegPrefix/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='some' and normalize-space(//neg/npDegreeNegSuffix/@checked)='yes'">
<example num="xNeg.NegNominal.18">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/negAffixExample" />
<xsl:with-param name="sExNumber">xNeg.NegNominal.18</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>     
          <xsl:if test="normalize-space(//neg/@npDegreeNeg)='no' and normalize-space(//neg/npDegreeNegOther/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='some' and normalize-space(//neg/npDegreeNegOther/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes nominaux négatifs auxquels les éléments négatifs admis en </xsl:text>
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
          <xsl:if test="normalize-space(//neg/@npDegreeNeg)='no' and normalize-space(//neg/npDegreeNegOther/@checked)='yes' or normalize-space(//neg/@npDegreeNeg)='some' and normalize-space(//neg/npDegreeNegOther/@checked)='yes'">
<example num="xNeg.NegNominal.22">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/negOtherExample" />
<xsl:with-param name="sExNumber">xNeg.NegNominal.22</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>     
          
          <xsl:if test="normalize-space(//neg/@npDegreeNeg)='yes' or normalize-space(//neg/@npDegreeNeg)='some'">
<p>
<xsl:text>Les mots indépendents négatifs qui se placent </xsl:text>
<xsl:if test="normalize-space(//neg/npDegreeNegWordBefore/@checked)='yes' and normalize-space(//neg/npDegreeNegWordAfter/@checked)='no' and normalize-space(//neg/npDegreeNegWordBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/npDegreeNegWordBefore/@checked)='no' and normalize-space(//neg/npDegreeNegWordAfter/@checked)='yes' and normalize-space(//neg/npDegreeNegWordBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/npDegreeNegWordBefore/@checked)='no' and normalize-space(//neg/npDegreeNegWordAfter/@checked)='no' and normalize-space(//neg/npDegreeNegWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/npDegreeNegWordBefore/@checked)='yes' and normalize-space(//neg/npDegreeNegWordAfter/@checked)='yes' and normalize-space(//neg/npDegreeNegWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/npDegreeNegWordBefore/@checked)='yes' and normalize-space(//neg/npDegreeNegWordAfter/@checked)='no' and normalize-space(//neg/npDegreeNegWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/npDegreeNegWordBefore/@checked)='no' and normalize-space(//neg/npDegreeNegWordAfter/@checked)='yes' and normalize-space(//neg/npDegreeNegWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/npDegreeNegWordBefore/@checked)='yes' and normalize-space(//neg/npDegreeNegWordAfter/@checked)='yes' and normalize-space(//neg/npDegreeNegWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre du ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/npDegreeNegWordOther/@checked)='no'">
<xsl:text> reste du syntagme nominal. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/npDegreeNegWordBefore/@checked)='no' and normalize-space(//neg/npDegreeNegWordAfter/@checked)='no' and normalize-space(//neg/npDegreeNegWordBoth/@checked)='no' and normalize-space(//neg/npDegreeNegWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//neg/npDegreeNegWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//neg/npDegreeNegWordBefore/@checked)='yes' and normalize-space(//neg/npDegreeNegWordOther/@checked)='yes' or normalize-space(//neg/npDegreeNegWordAfter/@checked)='yes' and normalize-space(//neg/npDegreeNegWordOther/@checked)='yes' or normalize-space(//neg/npDegreeNegWordBoth/@checked)='yes' and normalize-space(//neg/npDegreeNegWordOther/@checked)='yes'">
<xsl:text> reste du syntagme nominal et peuvent aussi se placer ___</xsl:text> <xsl:value-of select="//neg/npDegreeNegWordOther" /> <xsl:text>. </xsl:text>
</xsl:if>
<xsl:text> Voici quelques exemples de syntagmes nominaux négatifs sans quantifieurs positifs à large portée ni éléments de degré : </xsl:text>
</p>
</xsl:if>          
                 <xsl:if test="normalize-space(//neg/@npDegreeNeg)='yes' or normalize-space(//neg/@npDegreeNeg)='some'">
<example num="xNeg.NegNominal.26">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/negExample" />
<xsl:with-param name="sExNumber">xNeg.NegNominal.26</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
                   
               <xsl:if test="normalize-space(//neg/@npDegreeNeg)!='none' and normalize-space(//neg/@npDegreeNegCooccur)='no'">
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
<xsl:text>, les éléments négatifs ne peuvent pas apparaître avec les quantifieurs positifs à large portée, ni avec les éléments de degré, dans le même syntagme nominal.</xsl:text>
</p>
</xsl:if>
               <xsl:if test="normalize-space(//neg/@npDegreeNeg)!='none' and normalize-space(//neg/@npDegreeNegCooccur)='yes'">
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
<xsl:text>, les éléments négatifs peuvent coexister avec les quantifieurs positifs à large portée, ou bien avec les éléments de degré, dans le même syntagme nominal, de la façon suivante :</xsl:text>
</p>
</xsl:if>
               <xsl:if test="normalize-space(//neg/@npDegreeNeg)!='none' and normalize-space(//neg/@npDegreeNegCooccur)='yes'">
<example num="xNeg.NegNominal.32">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/negCooccurExample" />
<xsl:with-param name="sExNumber">xNeg.NegNominal.32</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
                <xsl:if test="normalize-space(//neg/@npDegreeNeg)!='none'">
<p>
<xsl:text>Les syntagmes nominaux négatifs qui suivent peuvent fonctionnes comme sujets dans les phrases complètes ; en voici quelques exemples : </xsl:text>
</p>
</xsl:if>
                <xsl:if test="normalize-space(//neg/@npDegreeNeg)!='none'">
<example num="xNeg.NegNominal.36">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/npDegreeSubjExample" />
<xsl:with-param name="sExNumber">xNeg.NegNominal.36</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
               
                <xsl:if test="normalize-space(//neg/@npDegreeNeg)!='none' and normalize-space(//neg/@negVerbal)='yes'">
<p>
<xsl:text>Les exemples ci-dessus montrent qu’</xsl:text>
<xsl:choose>
                       <xsl:when test="//neg/@subjVerbRequired='yes'">un subjet négatif n’est pas admis s’il n’est pas accompagné par un verbe négatif ou un auxiliaire négatif. </xsl:when>
                       <xsl:when test="//neg/@subjVerbRequired='no'">un verbe au négatif ou un auxiliaire négatif n’est pas obligatoire lorsque le sujet est négatif.</xsl:when>
                    </xsl:choose>
</p>
</xsl:if>
        
        </section2>
       <section2 id="sNegType">
          <secTitle>Type de système de négation</secTitle>
          <p contentType="ctComparativeIntro">
<xsl:text>En ce qui concerne la négation les langues se classent en deux catégories majeures: les langues qui changent de polarité contre les langues à concordance négative, dont les exemples sont l’anglais standard par contraste avec l’anglais parlé par les Africains ou les Sud-Américains. </xsl:text>
</p>
          <p contentType="ctComparativeIntro">
<xsl:text>Les langues qui changent de polarité admettent normalement un seul élément négatif dans la phrase pour exprimer la négation ( sur le plan technique n’importe quel nombre impair peut exprimer la polarité négative) parce que la présence de deux éléments négatifs (voire de n’importe quel nombre pair) change la polarité négative en polarité positive. 
                Par exemple en anglais (le français fonctionne différemment, les traductions données essaient de rendre le sens de l’anglais), </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John saw nothing</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Jean n’a rien vu »</xsl:text>
</gloss>
<xsl:text> est négatif, mais </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John didn’t see nothing</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « Jean n’a pas rien vu »</xsl:text>
</gloss>
<xsl:text> est positif parce qu’il veut dire le même que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John saw something</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Jean a vu quelque chose »</xsl:text>
</gloss>
<xsl:text>.  La version à auxiliaire négatif s’exprime ainsi: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John didn’t see anything</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Jean n’a rien vu »</xsl:text>
</gloss>
<xsl:text>, ce qui met l’élément de polarité négative dans la position de l’objet. Ces éléments de polarité négative peuvent se présenter comme sujets en certains contextes dans lesquels une deuxième négation est omise, ainsi: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Anyone may come</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « N’importe qui peut venir »</xsl:text>
</gloss>
<xsl:text>). Néanmoins, ils ne peuvent apparaître dans la position de l’objet que dans le cas où un élément précédant est négatif. Par exemple, on peut dire: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Nobody saw anyone</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Personne n’a rien vu »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Nowhere will they find anyone</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Nulle part ils ne trouveront personne »</xsl:text>
</gloss>
<xsl:text>.  Toutefois, l’auxiliaire négatif doit être employé lorsque  le sujet n’est pas négatif et qu’il n’y a pas d’adverbe négatif antéposé , comme dans les exemples suivants: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>We did not see anyone</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Nous n’avons vu personne »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>They will not find anyone anywhere</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Ils ne trouveront personne nulle part »</xsl:text>
</gloss>
<xsl:text>.</xsl:text>
</p>
            <p contentType="ctComparativeIntro">
<xsl:text>Quant aux langues à concordance négative n’importe quel nombre d’éléments négatifs expriment la polarité négative; ainsi dans une version à concordance négative d’anglais (tel que l’anglais parlé par les Noirs) </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John didn’t see nothing</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « Jean n’a pas rien vu »</xsl:text>
</gloss>
<xsl:text> est la façon correcte d’exprimer une phrase négative à objet négatif. Dans ces langues, un élément négatif se met habituellement dans la position du sujet ou est antéposé sans la présence d’un autre élément négatif; mais un objet négatif se met seulement après un autre élément négatif. Certaines langues à concordance négative ont une restriction plus stricte, que chaque mot (ou syntagme) négatif s’accompagne d’une négation verbale; d’autres langues encore exigent que le mot ou syntagme négatif soit antéposé, de la même façon que certains interrogatifs ou syntagmes d’interrogation sont antéposés dans les questions d’information.</xsl:text>
</p>
          <p contentType="ctPracticalIntro">
<xsl:text>Quant à la négation, les deux classifications majeures sont les langues qui changent de polarité et les langues à concordance négative. Les langues qui changent de polarité admettent généralement un seul élément négatif dans une phrase dans laquelles des éléments spéciaux de polarité négative se trouvent à la place d’un deuxième élément négatif. Par contre, dans les langues à concordance négative, n’importe quel nombre d’éléments exprime la polarité négative, puisque les éléments négatifs rendent la polarité négative.   </xsl:text>
</p>
          <p>
<xsl:text>Le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> est une langue </xsl:text>
<xsl:choose>
                <xsl:when test="//neg/@type='changing'">qui change de polarité</xsl:when>
                <xsl:when test="//neg/@type='concord'">à concordance négative</xsl:when>
             </xsl:choose>
<xsl:text>, puisque </xsl:text>
<xsl:choose>
                <xsl:when test="//neg/@type='changing'">la polarité change entre positive et négative avec occurence d‘un élément de négation. </xsl:when>
                <xsl:when test="//neg/@type='concord'">n’importe quel nombre d’éléments négatifs rendent la polarité négative. </xsl:when>
             </xsl:choose>
<xsl:text></xsl:text>
</p>
          <xsl:if test="normalize-space(//neg/@type)='changing'">
<p>
<xsl:text>Le </xsl:text>
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
                <xsl:when test="//neg/@polarityItems='yes'"> possède des </xsl:when>
                <xsl:when test="//neg/@polarityItems='no'"> ne possède pas d’</xsl:when>
             </xsl:choose>
<xsl:text>éléments de polarité négative.  </xsl:text>
<xsl:choose>
                <xsl:when test="//neg/@polarityItems='yes'">Les pronoms, déterminants et adverbes suivants se placent dans la position de l’objet ou dans la position normale de l’adverbe à la place de l’élément négatif équivalent lorsqu’un autre élément négatif n’est présent dans la phrase.</xsl:when>
                <xsl:when test="//neg/@polarityItems='no'">Les pronoms, déterminants et adverbes (tous négatifs) se placent dans la position de l’objet ou dans la position adverbiale normale, même quand il y a un autre élément négatif dans la phrase.</xsl:when>
             </xsl:choose>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//neg/@polarityItems)='yes' and normalize-space(//neg/@type)='changing'">
<example num="xNeg.NegType.16">
<table border="1">
                <tr>
                   <th>Type</th>
                   <th>Eléments de polarité négative</th>
                   <th>Glose</th>
                </tr>
                <xsl:variable name="sExampleValue0.1">
<xsl:value-of select="translate(string(//neg/npiPronounExample),'.','')" />
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
<td align="left" rowspan="1">
                      <xsl:text>Pronoms</xsl:text>
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
<td align="left" rowspan="1">
                      <xsl:text>Pronoms</xsl:text>
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
                <xsl:variable name="sExampleValue1.1">
<xsl:value-of select="translate(string(//neg/npiDeterminerExample),'.','')" />
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
<td align="left" rowspan="1">
                      <xsl:text>Determinants</xsl:text>
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
<td align="left" rowspan="1">
                      <xsl:text>Determinants</xsl:text>
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
                <xsl:variable name="sExampleValue2.1">
<xsl:value-of select="translate(string(//neg/npiTemporalExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength2.1" select="string-length(normalize-space($sExampleValue2.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength2.1 != 0 and $sExampleValue2.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue2.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue2.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength2.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left" rowspan="">
                      <xsl:text>Adverbes temporels</xsl:text>
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
<td align="left" rowspan="">
                      <xsl:text>Adverbes temporels</xsl:text>
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
                <xsl:variable name="sExampleValue3.1">
<xsl:value-of select="translate(string(//neg/npiLocativeExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength3.1" select="string-length(normalize-space($sExampleValue3.1))" />
<xsl:choose>
<xsl:when test="$iExampleLength3.1 != 0 and $sExampleValue3.1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue3.1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue3.1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength3.1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left" rowspan="">
                      <xsl:text>Adverbes locatifs</xsl:text>
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
<td align="left" rowspan="">
                      <xsl:text>Adverbes locatifs</xsl:text>
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
             </table>
</example>
</xsl:if>
          
          <p>
<xsl:text>Voici quelques exemples ayant un sujet positif et un </xsl:text>
<xsl:if test="normalize-space(//neg/@polarityItems)='yes' and normalize-space(//neg/@type)='changing'">
                <xsl:text>élément de polarité négatif dans le </xsl:text>
             </xsl:if>
<xsl:text>syntagme nominal de l’objet</xsl:text>
<xsl:if test="normalize-space(//neg/@type)='changing' and normalize-space(//neg/@polarityItems)='no'">
<xsl:text> négatif</xsl:text>
</xsl:if>
<xsl:text> : </xsl:text>
</p>
          <example num="xNeg.NegType.20">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/objectExample" />
<xsl:with-param name="sExNumber">xNeg.NegType.20</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <p>
<xsl:text>Voici quelques exemples ayant un sujet positif et un </xsl:text>
<xsl:if test="normalize-space(//neg/@polarityItems)='yes' and normalize-space(//neg/@type)='changing'">
                <xsl:text>élément de polarité négatif dans le </xsl:text>
             </xsl:if>
<xsl:text>syntagme nominal de l’objet indirect</xsl:text>
<xsl:if test="normalize-space(//neg/@type)='changing' and normalize-space(//neg/@polarityItems)='no'">
<xsl:text> négatif</xsl:text>
</xsl:if>
<xsl:text> : </xsl:text>
</p>
         
          <example num="xNeg.NegType.24">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/indirectObjectExample" />
<xsl:with-param name="sExNumber">xNeg.NegType.24</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          <xsl:if test="normalize-space(//neg/@polarityItems)='yes' and normalize-space(//neg/@type)='changing'">
<p>
<xsl:text>Ces exemples montrent qu’un élément de polarité négatif </xsl:text>
<xsl:if test="normalize-space(//neg/@objVerbRequired)!='no'">
                <xsl:text>ne peut pas</xsl:text>
             </xsl:if>
<xsl:if test="normalize-space(//neg/@objVerbRequired)='no'">
                <xsl:text>peut</xsl:text>
             </xsl:if>
<xsl:text> exister dans la position de l’objet ou de l’objet indirect </xsl:text>
<xsl:choose>
                <xsl:when test="//neg/@objVerbRequired='yes'">sauf si le verbe ou l’auxiliaire est négatif.</xsl:when>
                <xsl:when test="//neg/@objVerbRequired='other'">sauf si le verbe ou l’auxiliaire ou un autre élément est négatif.</xsl:when>
                <xsl:when test="//neg/@objVerbRequired='no'">sans restriction d’autres éléments négatifs dans la phrase.</xsl:when>
             </xsl:choose>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//neg/@type)='changing' and normalize-space(//neg/@polarityItems)='no'">
<p>
<xsl:text>Ces exemples montrent qu’un syntagme nominal négatif </xsl:text>
<xsl:if test="normalize-space(//neg/@objVerbRequired)!='no'">
                <xsl:text>ne peut pas</xsl:text>
             </xsl:if>
<xsl:if test="normalize-space(//neg/@objVerbRequired)='no'">
                <xsl:text>peut</xsl:text>
             </xsl:if>
<xsl:text> apparaître dans la position de l’objet ou de l’objet indirect </xsl:text>
<xsl:choose>
                <xsl:when test="//neg/@objVerbRequired='yes'">sauf si le verbe ou l’auxiliaire est négatif.</xsl:when>
                <xsl:when test="//neg/@objVerbRequired='other'">sauf si le verbe ou l’auxiliaire ou un autre élément est négatif.</xsl:when>
                <xsl:when test="//neg/@objVerbRequired='no'">sans restriction quant aux autres éléments négatifs dans la phrase.</xsl:when>
             </xsl:choose>
</p>
</xsl:if>
          
          <xsl:if test="normalize-space(//neg/@type)='concord'">
<p>
<xsl:text>Ces exemples montrent qu’un syntagme nominal négatif </xsl:text>
<xsl:if test="normalize-space(//neg/@objVerbRequired)!='no'">
                <xsl:text>ne peut pas</xsl:text>
             </xsl:if>
<xsl:if test="normalize-space(//neg/@objVerbRequired)='no'">
                <xsl:text>peut</xsl:text>
             </xsl:if>
<xsl:text> apparaître dans la position de l’objet ou de l’objet indirect </xsl:text>
<xsl:choose>
                <xsl:when test="//neg/@objVerbRequired='yes'">sauf si le verbe ou l’auxiliaire est négatif.</xsl:when>
                <xsl:when test="//neg/@objVerbRequired='other'">sauf si le verbe ou l’auxiliaire ou un autre élément est négatif.</xsl:when>
                <xsl:when test="//neg/@objVerbRequired='no'">sans restriction quant aux autres éléments négatifs dans la phrase.</xsl:when>
             </xsl:choose>
<xsl:choose>
                <xsl:when test="//neg/@negFront='yes'">  Un objet négatif doit être placé en tête de la phrase, tout comme les syntagmes interrogatifs. </xsl:when>
                <xsl:when test="//neg/@negFront='optional'">  Un objet négatif peut se mettre en position initiale, ou il peut garder sa position habituelle. </xsl:when>
                <xsl:when test="//neg/@negFront='beforeVerb'">  Un élément négatif peut être placé dans la position immédiatement avant le verbe, ou il peut garder sa position habituelle. </xsl:when>
                <xsl:when test="//neg/@negFront='no'">  Un objet negative apparaît simplement dans sa position habituelle, sans aucun mouvement. </xsl:when>
             </xsl:choose>
</p>
</xsl:if>
          
          
          <xsl:if test="normalize-space(//neg/@type)='changing' and normalize-space(//neg/@negTwoAllowed)='yes'">
<p>
<xsl:text>Enfin, voici quelques exemples dans lesquels on trouve un sujet négatif ainsi qu’un </xsl:text>
<xsl:if test="normalize-space(//neg/@polarityItems)='yes' and normalize-space(//neg/@type)='changing'">
                <xsl:text>élément de polarité négative dans le </xsl:text>
             </xsl:if>
<xsl:text>syntagme nominal objet</xsl:text>
<xsl:if test="normalize-space(//neg/@type)='changing' and normalize-space(//neg/@polarityItems)='no'">
<xsl:text> négatif</xsl:text>
</xsl:if>
<xsl:text> : </xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//neg/@type)='changing' and normalize-space(//neg/@negTwoAllowed)='oneOnly'">
<p>
<xsl:text>Des exemples où figurent un sujet négatif et un </xsl:text>
<xsl:if test="normalize-space(//neg/@polarityItems)='yes' and normalize-space(//neg/@type)='changing'">
                <xsl:text>élément de polarité négatif dans le </xsl:text>
             </xsl:if>
<xsl:text>syntagme nominal de l’objet </xsl:text>
<xsl:if test="normalize-space(//neg/@type)='changing' and normalize-space(//neg/@polarityItems)='no'">
<xsl:text>négatif </xsl:text>
</xsl:if>
<xsl:text> ne sont pas admis en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  Voici quelques exemples qui montrent comment ces sens sont exprimés en utilisant un indéfini ou en coupant la phrase en deux :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//neg/@type)='concord' and normalize-space(//neg/@negFrontTwo)!='oneOnly'">
<p>
<xsl:text>Enfin, voici quelques exemples où se trouvent à la fois un sujet négatif et un syntagme nominal objet négatif :</xsl:text>
</p>
</xsl:if>
          <xsl:if test="normalize-space(//neg/@type)='concord' and normalize-space(//neg/@negFrontTwo)='oneOnly' or normalize-space(//neg/@type)='concord' and normalize-space(//neg/@negTwoAllowed)='oneOnly' and normalize-space(//neg/@negFront)='no'">
<p>
<xsl:text>Des exemples où figurent un sujet négatif et un syntagme nominal négatif comme objet ne sont pas admis en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>. Voici quelques exemples qui montrent comment ces sens sont exprmiés en utilisant un indéfini ou en coupant la phrase en deux :</xsl:text>
</p>
</xsl:if>
          <example num="xNeg.NegType.40">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//neg/subjectObjectExample" />
<xsl:with-param name="sExNumber">xNeg.NegType.40</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
          
             
          <xsl:if test="normalize-space(//neg/@type)='concord'">
<p>
<xsl:if test="normalize-space(//neg/@type)='concord' and normalize-space(//neg/@negFront)!='no' and normalize-space(//neg/@negFrontTwo)!='oneOnly'">
                <xsl:text> Si le sujet et l’objet sont tous deux négatifs, </xsl:text>
                   <xsl:choose>
                      <xsl:when test="//neg/@negFrontTwo='yes'">les deux éléments négatifs doivent être en tête de phrase.</xsl:when>
                      <xsl:when test="//neg/@negFrontTwo='optional'">les deux éléments peuvent être en tête, ou l’objet négatif peut rester dans sa position habituelle.</xsl:when>
                      <xsl:when test="//neg/@negFrontTwo='beforeVerb'">les deux éléments peuvent se placer immédiatement avant le verbe, ou l’objet négatif peut rester dans sa position habituelle.</xsl:when>
                      <xsl:when test="//neg/@negFrontTwo='no'">seul le sujet négatif est antéposé, l’objet négatif paraît simplement dans sa position habituelle dans la phrase.</xsl:when>
                   </xsl:choose>
                </xsl:if>
</p>
</xsl:if>
          
       </section2>
       
    </section1>
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
   
      
         
         
         
         
         
         
         
         
         
         
         
      
   
      
      
      
      
      
      
      
      
      
      
      
   
   

   

   
      
   
   
      
   
   
      
   
   
      
   
   
      
   
   
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
   
      
   
   
      
   
   
      
   
   
      
   
   
      
   
   
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   


    
        
    
   
      
      
      
   
   
        
        
        


    
    
    
   
   

   
      
      
      
   
   
      
      
      
   
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
   
   
    
        
    
   
      
   
   
      
   
   
      
   
   
      
   
   
      
      
      
   
   
   
      
   
   
      
   
   
      
      
      
   
   
      
      
      
   
   
      
   
   
      
   
   
      
      
      
   
      
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
      
      
      
         
         
         
         
         
      
      
         
         
         
         
         
      
      
         
         
         
         
         
      
      
         
         
         
         
         
      
      
         
         
         
         
         
      
      
         
         
         
         
         
      
      
         
         
         
         
         
      
      
         
      
      
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
         
         
         
         
      
      
      
      
      
      
      
      
   
   
      
      
      
   

   
   
        
   
   
      
   
   
      
   
  
     
   
   
      
    
   
      
    
   
      
    
   
      
      
      
    
   
      
      
      
    
   
   
</xsl:template>
</xsl:stylesheet>
