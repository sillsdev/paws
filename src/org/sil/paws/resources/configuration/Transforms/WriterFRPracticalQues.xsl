<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="ques">
   <section1 id="sQues">
        <secTitle>Questions</secTitle>
        <p>
<xsl:text>Il y a deux types de questions : celles qui exigent une réponse </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>oui</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>non</langData>
<xsl:text>, et celles qui cherchent une informations. Cette section considère la proposition principale et les variétés de propositions subordonnées pour chaque type.</xsl:text>
</p>
        <section2 id="sQuesYN">
           <secTitle>Les questions oui/non</secTitle>
            <p contentType="ctComparativeIntro">
<xsl:text> En français, les propositions principales interrogatives de type oui/non se forment en antéposant le auxiliaire avant le sujet lorsqu’il est pronominal.  En français les questions oui/non se forment ou par l’inversion du verbe et du sujet ou par l’addition de </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>est-ce que/qu’</langData>
<xsl:text> au début de la phrase.  D’autres langues utilisent soit un marqueur pour les interrogatifs de type oui/non, soit une conjonction de subordination spéciale au lieu d’un auxiliaire placé en position initiale. C’est ainsi pour les questions subordonnées de type oui/non en français ; on ne modifie pas l’ordre des éléments, mais </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>si</langData>
<xsl:text> prend la position de la conjonction de subordination. Puisque les langues construisent parfois la question oui/non dans une proposition principale ou dans une proposition subordonnée de façon différente, chaque structure sera traitée séparément.</xsl:text>
</p>
           <p contentType="ctPracticalIntro">
<xsl:text> Les propositions principales interrogatives et les questions subordonnées de type oui/non se forment quelquefois de façon différente selon le mouvement de l’auxiliaire, et les marqueurs de questions ou conjonctions de subordination.</xsl:text>
</p>
           <section3 id="sQuesYNMain">
              <secTitle>Les propositions principales interrogatives de type oui/non</secTitle>
                <p contentType="ctComparativeIntro">
<xsl:text>Voici quelques exemples en français de propositions principales interrogatives de type oui/non. Ils montrent que les questions sont formées en antéposant le auxiliare avant le sujet lorsqu’il est pronominal : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Lit-il un livre ?</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Puis-je venir ?</langData>
<xsl:text>, ou en reprenant le sujet de 3e personne par un pronom lorsqu’il est nominal :</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jean lit-il un livre ?</langData>
<xsl:text>.  Il est également possible d’employer </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>est-ce que</langData>
<xsl:text> à l’initiale de la phrase, sans modifier l’ordre des termes</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Est-ce que vous allez aux magasins ?</langData>
<xsl:text>.  Cette dernière construction est fréquente dans le langage parlé. Dans la langue parlée, on emploie également l’intonation montante pour marquer l’interrogation oui/non, sans modifier l’ordre des termes ou ajouter un élément.</xsl:text>
</p>
              <p>
<xsl:text>Voici quelques exemples de propositions principales interrogatives de type oui/non en </xsl:text>
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
              <example num="xQues.QuesYN.QuesYNMain.8">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//q/example" />
<xsl:with-param name="sExNumber">xQues.QuesYN.QuesYNMain.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
              
                <p>
<xsl:text>Comme le montrent ces exemples, </xsl:text>
<xsl:choose>
                       <xsl:when test="//q/@mainYN='no'">il n’y a ni marqueur ni changement d’ordre, seulement une différence d’intonation ou de ton ou d’autre marqueur non-syntaxique.</xsl:when>
                       <xsl:when test="//q/@mainYN='noAux'">le mouvement d’un auxiliaire</xsl:when>
                       <xsl:when test="//q/@mainYN='yes'">il y a un ou plusieurs marqueurs interrogatifs ou conjonctions de subordination</xsl:when>
                    </xsl:choose>
<xsl:if test="normalize-space(//q/@mainYN)='noAux'">
                        <xsl:text> en </xsl:text>
                        <xsl:choose>
                           <xsl:when test="//q/@mainYNAuxPos='before'">position initiale</xsl:when>
                           <xsl:when test="//q/@mainYNAuxPos='after'">position finale</xsl:when>
                            <xsl:when test="//q/@mainYNAuxPos='unknown'">_______</xsl:when>
                        </xsl:choose>
                       <xsl:text> de la question sont obligatoires.</xsl:text>
                    </xsl:if>
<xsl:if test="normalize-space(//q/@mainYN)='yes'">
                        <xsl:text> sont </xsl:text>
                        <xsl:choose>
                           <xsl:when test="//q/@mainYNWord='yes'">écrits comme des mots indépendants.</xsl:when>
                           <xsl:when test="//q/@mainYNWord='some'">écrits soit comme des mots indépendants ou rattachés </xsl:when>
                           <xsl:when test="//q/@mainYNWord='no'">rattachés </xsl:when>
                        </xsl:choose>
                        <xsl:if test="normalize-space(//q/@mainYNWord)='no' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/@mainYN)='yes'">
                           <xsl:if test="normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/mainYNEnclitic/@checked)='no' and normalize-space(//q/mainYNPrefix/@checked)='no' and normalize-space(//q/mainYNSuffix/@checked)='no' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>au début du premier mot de la question oui/non, quel que soit ce mot, comme un proclitique de constituant.  </xsl:text>
</xsl:if>
                           <xsl:if test="normalize-space(//q/mainYNProclitic/@checked)='no' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/mainYNPrefix/@checked)='no' and normalize-space(//q/mainYNSuffix/@checked)='no' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>à la fin du dernier mot de la question oui/non, quel que soit ce mot, comme un enclitique de constituant.   </xsl:text>
</xsl:if>
                           <xsl:if test="normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/mainYNPrefix/@checked)='no' and normalize-space(//q/mainYNSuffix/@checked)='no' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>soit au début du premier mot, ou à la fin du dernier mot de la question oui/non, quel que soit ce mot, comme des clitiques de constituant.   </xsl:text>
</xsl:if>
                           <xsl:if test="normalize-space(//q/mainYNProclitic/@checked)='no' and normalize-space(//q/mainYNEnclitic/@checked)='no' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/mainYNSuffix/@checked)='no' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>au verbe dans la question oui/non comme préfixe.  </xsl:text>
</xsl:if>
                           <xsl:if test="normalize-space(//q/mainYNProclitic/@checked)='no' and normalize-space(//q/mainYNEnclitic/@checked)='no' and normalize-space(//q/mainYNPrefix/@checked)='no' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>au verbe dans la question oui/non comme suffixe.   </xsl:text>
</xsl:if>
                           <xsl:if test="normalize-space(//q/mainYNProclitic/@checked)='no' and normalize-space(//q/mainYNEnclitic/@checked)='no' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>au verbe dans la question oui/non, certains comme préfixe et d’autres comme suffixe.   </xsl:text>
</xsl:if>
                           <xsl:if test="normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/mainYNEnclitic/@checked)='no' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/mainYNSuffix/@checked)='no' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/mainYNEnclitic/@checked)='no' and normalize-space(//q/mainYNPrefix/@checked)='no' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/mainYNEnclitic/@checked)='no' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNProclitic/@checked)='no' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/mainYNSuffix/@checked)='no' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNProclitic/@checked)='no' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/mainYNPrefix/@checked)='no' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNProclitic/@checked)='no' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/mainYNEnclitic/@checked)='no' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/mainYNSuffix/@checked)='no' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/mainYNPrefix/@checked)='no' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>soit au début ou à la fin de la question oui/non comme un clitique de constituant, ou au verbe dans la question oui/non comme un affixe.  </xsl:text>
</xsl:if>
                           <xsl:if test="normalize-space(//q/mainYNProclitic/@checked)='no' and normalize-space(//q/mainYNEnclitic/@checked)='no' and normalize-space(//q/mainYNPrefix/@checked)='no' and normalize-space(//q/mainYNSuffix/@checked)='no' and normalize-space(//q/mainYNCliticOther/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//q/mainYNCliticOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
                           <xsl:if test="normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/mainYNCliticOther/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/mainYNCliticOther/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/mainYNCliticOther/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/mainYNCliticOther/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>  D’autres se rattachent aussi ___</xsl:text>
<xsl:value-of select="//q/mainYNCliticOther" />  <xsl:text>.</xsl:text>
</xsl:if>              
                         </xsl:if>  <xsl:text></xsl:text>
                    </xsl:if>
</p>   
              <xsl:if test="normalize-space(//q/@mainYNWord)='no' and normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='no' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<p>
<xsl:text>Voici les clitiques qui marquent les propositions principales interrogatives de type oui/non :</xsl:text>
</p>
</xsl:if>      
              <xsl:if test="normalize-space(//q/@mainYNWord)='no' and normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='no' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNProclitic/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNEnclitic/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<example num="xQues.QuesYN.QuesYNMain.14">
<table border="1">
                    <tr>
                       <th>Clitiques oui/non</th>
                       <th>Glose</th>
                    </tr>
                    <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/mainYNCliticExample),'.','')" />
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
              <xsl:if test="normalize-space(//q/@mainYNWord)='no' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='no' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<p>
<xsl:text>Voici les affixes qui marquent les propositions principales interrogatives de type oui/non :</xsl:text>
</p>
</xsl:if>      
              <xsl:if test="normalize-space(//q/@mainYNWord)='no' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='no' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNPrefix/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNSuffix/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<example num="xQues.QuesYN.QuesYNMain.18">
<table border="1">
                    <tr>
                       <th>Affixes oui/non</th>
                       <th>Glose</th>
                    </tr>
                    <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/mainYNAffixExample),'.','')" />
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
                    <xsl:if test="normalize-space(//q/@mainYNWord)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/@mainYN)='yes'">
<p>
<xsl:text> Le marqueur interrogatif ou les conjonctions de subordination se placent </xsl:text>
<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='no' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>avant</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='no' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>après</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='no' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/mainYNWordOther/@checked)='no' and normalize-space(//q/@mainYN)='yes'">
<xsl:text> le reste de la question oui/non.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='no' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//q/mainYNWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/mainYNWordBoth/@checked)='yes' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/@mainYN)='yes'">
<xsl:text> le reste de la question oui/non et peuvent aussi se placer ___</xsl:text> <xsl:value-of select="//q/mainYNWordOther" /> <xsl:text>. </xsl:text>
</xsl:if>
<xsl:text> Voici les marqueurs interrogatifs oui/non :</xsl:text>
</p>
</xsl:if>
              <xsl:if test="normalize-space(//q/@mainYNWord)='yes' and normalize-space(//q/@mainYN)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/@mainYN)='yes'">
<example num="xQues.QuesYN.QuesYNMain.22">
<table border="1">
                    <tr>
                       <th>Marqueurs de questions oui/non</th>
                       <th>Glose</th>
                    </tr>
                    <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/mainYNWordExample),'.','')" />
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
            </section3>
            <section3 id="sQuesYNEmb">
               <secTitle>Les questions oui/non dans les propositions subordonnées</secTitle>
                <p contentType="ctComparativeIntro">
<xsl:text>Voici des exemples en français de questions oui/non dans des propositions subordonnées, ils montrent la présence des marqueurs interrogatifs ou des conjonctions de subordination : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je me demande si elle viendra</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je saurai si elle part</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Suzannee se demande si le garçon aurait pu toucher la balle</langData>
<xsl:text>.</xsl:text>
</p>
               <p>
<xsl:text>Voici quelques exemples de questions oui/non dans des propositions subordonnées en </xsl:text>
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
               <example num="xQues.QuesYN.QuesYNEmb.8">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//q/embYNExample" />
<xsl:with-param name="sExNumber">xQues.QuesYN.QuesYNEmb.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
               <p>
<xsl:text>Comme le montrent les exemples, </xsl:text>
<xsl:choose>
                     <xsl:when test="//q/@embYN='no'"> il n’y a ni marqueur ni changement de l’ordre des mots, seulement une différence d’intonation ou de ton ou un marqueur non-syntaxique. </xsl:when>
                     <xsl:when test="//q/@embYN='noAux'">mouvement d’un auxiliaire</xsl:when>
                     <xsl:when test="//q/@embYN='yes'">il y a un ou plusieurs marqueurs interrogatifs ou conjonctions de subordination</xsl:when>
                  </xsl:choose>
<xsl:if test="normalize-space(//q/@embYN)='noAux'">
                     <xsl:text> obligatoirement </xsl:text>
                     <xsl:choose>
                        <xsl:when test="//q/@embYNAuxPos='before'">au début</xsl:when>
                        <xsl:when test="//q/@embYNAuxPos='after'">à la fin</xsl:when>
                        <xsl:when test="//q/@embYNAuxPos='unknown'">_______</xsl:when>
                     </xsl:choose>
                     <xsl:text> de la question.</xsl:text>
                  </xsl:if>
<xsl:if test="normalize-space(//q/@embYN)='yes'">
                     <xsl:text> qui </xsl:text>
                     <xsl:choose>
                        <xsl:when test="//q/@embYNWord='yes'">sont écrits comme mots indépendants.</xsl:when>
                        <xsl:when test="//q/@embYNWord='some'">soit écrits comme mots indépendants ou se rattachent </xsl:when>
                        <xsl:when test="//q/@embYNWord='no'">se rattachent </xsl:when>
                     </xsl:choose>
                 
                  <xsl:if test="normalize-space(//q/@embYNWord)='no' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='some' and normalize-space(//q/@embYN)='yes'">
                     <xsl:if test="normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/embYNEnclitic/@checked)='no' and normalize-space(//q/embYNPrefix/@checked)='no' and normalize-space(//q/embYNSuffix/@checked)='no' and normalize-space(//q/@embYN)='yes'">
<xsl:text>au début du premier mot de la question oui/non, quel que soit ce mot, comme proclitiques de constituant.  </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embYNProclitic/@checked)='no' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/embYNPrefix/@checked)='no' and normalize-space(//q/embYNSuffix/@checked)='no' and normalize-space(//q/@embYN)='yes'">
<xsl:text>à la fin du dernier mot de la question oui/non, quel que soit ce mot, comme enclitiques de constituant.    </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/embYNPrefix/@checked)='no' and normalize-space(//q/embYNSuffix/@checked)='no' and normalize-space(//q/@embYN)='yes'">
<xsl:text>ou bien au début du premier mot de la question oui/non ou à la fin du dernier mot de la question oui/non, quel que soit ce mot, comme clitiques de constituant.   </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embYNProclitic/@checked)='no' and normalize-space(//q/embYNEnclitic/@checked)='no' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/embYNSuffix/@checked)='no' and normalize-space(//q/@embYN)='yes'">
<xsl:text>au verbe dans la question oui/non comme préfixes.  </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embYNProclitic/@checked)='no' and normalize-space(//q/embYNEnclitic/@checked)='no' and normalize-space(//q/embYNPrefix/@checked)='no' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<xsl:text>au verbe dans la question oui/non comme suffixes.   </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embYNProclitic/@checked)='no' and normalize-space(//q/embYNEnclitic/@checked)='no' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<xsl:text>au verbe dans la question oui/non certains comme préfixes et d’autres comme suffixes.   </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/embYNEnclitic/@checked)='no' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/embYNSuffix/@checked)='no' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/embYNEnclitic/@checked)='no' and normalize-space(//q/embYNPrefix/@checked)='no' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/embYNEnclitic/@checked)='no' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNProclitic/@checked)='no' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/embYNSuffix/@checked)='no' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNProclitic/@checked)='no' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/embYNPrefix/@checked)='no' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNProclitic/@checked)='no' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/embYNEnclitic/@checked)='no' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/embYNSuffix/@checked)='no' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/embYNPrefix/@checked)='no' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<xsl:text>soit au début soit à la fin de la question oui/non comme clitiques de cnstituant, soit au verbe dans la question oui/non comme affixes.  </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embYNProclitic/@checked)='no' and normalize-space(//q/embYNEnclitic/@checked)='no' and normalize-space(//q/embYNPrefix/@checked)='no' and normalize-space(//q/embYNSuffix/@checked)='no' and normalize-space(//q/embYNCliticOther/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//q/embYNCliticOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/embYNCliticOther/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/embYNCliticOther/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/embYNCliticOther/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/embYNCliticOther/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<xsl:text>  Certains se rattachent aussi ___</xsl:text>
<xsl:value-of select="//q/embYNCliticOther" />  <xsl:text>.</xsl:text>
</xsl:if>              
                  </xsl:if>  <xsl:text></xsl:text>
                  </xsl:if>
</p>   
               <xsl:if test="normalize-space(//q/@embYNWord)='no' and normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='no' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='some' and normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='some' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<p>
<xsl:text>Voici les clitiques qui marquent les questions oui/non dans des propositions subordonnées :</xsl:text>
</p>
</xsl:if>      
               <xsl:if test="normalize-space(//q/@embYNWord)='no' and normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='no' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='some' and normalize-space(//q/embYNProclitic/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='some' and normalize-space(//q/embYNEnclitic/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<example num="xQues.QuesYN.QuesYNEmb.14">
<table border="1">
                     <tr>
                        <th>Clitiques oui/non</th>
                        <th>Glose</th>
                     </tr>
                     <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/embYNCliticExample),'.','')" />
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
               <xsl:if test="normalize-space(//q/@embYNWord)='no' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='no' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='some' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='some' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<p>
<xsl:text>Voici les affixes qui marquent les questions oui/non dans des propositions subordonnées :</xsl:text>
</p>
</xsl:if>      
               <xsl:if test="normalize-space(//q/@embYNWord)='no' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='no' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='some' and normalize-space(//q/embYNPrefix/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='some' and normalize-space(//q/embYNSuffix/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<example num="xQues.QuesYN.QuesYNEmb.18">
<table border="1">
                     <tr>
                        <th>Affixes oui/non</th>
                        <th>Glose</th>
                     </tr>
                     <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/embYNAffixExample),'.','')" />
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
               <xsl:if test="normalize-space(//q/@embYNWord)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='some' and normalize-space(//q/@embYN)='yes'">
<p>
<xsl:text> Le marqueur interrogatif ou les conjonctions de subordination se placent </xsl:text>
<xsl:if test="normalize-space(//q/embYNWordBefore/@checked)='yes' and normalize-space(//q/embYNWordAfter/@checked)='no' and normalize-space(//q/embYNWordBoth/@checked)='no' and normalize-space(//q/@embYN)='yes'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/embYNWordBefore/@checked)='no' and normalize-space(//q/embYNWordAfter/@checked)='yes' and normalize-space(//q/embYNWordBoth/@checked)='no' and normalize-space(//q/@embYN)='yes'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/embYNWordBefore/@checked)='no' and normalize-space(//q/embYNWordAfter/@checked)='no' and normalize-space(//q/embYNWordBoth/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/embYNWordBefore/@checked)='yes' and normalize-space(//q/embYNWordAfter/@checked)='yes' and normalize-space(//q/embYNWordBoth/@checked)='no' and normalize-space(//q/@embYN)='yes'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/embYNWordBefore/@checked)='yes' and normalize-space(//q/embYNWordAfter/@checked)='no' and normalize-space(//q/embYNWordBoth/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/embYNWordBefore/@checked)='no' and normalize-space(//q/embYNWordAfter/@checked)='yes' and normalize-space(//q/embYNWordBoth/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/embYNWordBefore/@checked)='yes' and normalize-space(//q/embYNWordAfter/@checked)='yes' and normalize-space(//q/embYNWordBoth/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/embYNWordOther/@checked)='no' and normalize-space(//q/@embYN)='yes'">
<xsl:text>du reste de la question oui/non.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/embYNWordBefore/@checked)='no' and normalize-space(//q/embYNWordAfter/@checked)='no' and normalize-space(//q/embYNWordBoth/@checked)='no' and normalize-space(//q/embYNWordOther/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//q/embYNWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//q/embYNWordBefore/@checked)='yes' and normalize-space(//q/embYNWordOther/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNWordAfter/@checked)='yes' and normalize-space(//q/embYNWordOther/@checked)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/embYNWordBoth/@checked)='yes' and normalize-space(//q/embYNWordOther/@checked)='yes' and normalize-space(//q/@embYN)='yes'">
<xsl:text>du reste de la question oui/non et peuvent aussi se placer ___</xsl:text> <xsl:value-of select="//q/embYNWordOther" /> <xsl:text>. </xsl:text>
</xsl:if>
<xsl:text> Voici ces marqueurs :</xsl:text>
</p>
</xsl:if>
               <xsl:if test="normalize-space(//q/@embYNWord)='yes' and normalize-space(//q/@embYN)='yes' or normalize-space(//q/@embYNWord)='some' and normalize-space(//q/@embYN)='yes'">
<example num="xQues.QuesYN.QuesYNEmb.22">
<table border="1">
                     <tr>
                        <th>Marqueurs interrogatifs oui/non</th>
                        <th>Glose</th>
                     </tr>
                     <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/embYNWordExample),'.','')" />
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
               
            </section3>
        </section2>
        <section2 id="sQuesContent">
           <secTitle>Questions d’information</secTitle>
            <p contentType="ctComparativeIntro">
<xsl:text>Les questions d’information diffèrent de questions oui/non, en ce qu’elles contiennent un mot ou syntagme interrogatif.  Dans certaines langues tous ces interrogatifs, ou quelques-uns, s’expriment comme des affixes.  Les mots interrogatifs ou les syntagmes ou affixes équivalents en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont présentés dans le tableau </xsl:text>
<exampleRef num="xWh" equal="no" letterOnly="no" />
<xsl:text>.</xsl:text>
</p>
           <p contentType="ctPracticalIntro">
<xsl:text>Les questions d’information diffèrent des questions oui/non, en ce qu’elles contiennent un mot ou syntagme interrogatif. Les mots ou les syntagmes ou les affixes interrogatifs en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont présentés dans le tableau </xsl:text>
<exampleRef num="xWh" equal="no" letterOnly="no" />
<xsl:text>.</xsl:text>
</p>
           <example num="xWh">
<table border="1">
                    <caption>
                       <xsl:text>Interrogatifs utilisés dans les questions d’information</xsl:text>
                    </caption>
                    <tr>
                       <th>Morphèmes</th>
                        <th>Glose</th>
                    </tr>
                    <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/who),'.','')" />
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
<xsl:text>qui</xsl:text>
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
<xsl:text>qui</xsl:text>
</gloss>
                        </td>
</tr>
</xsl:otherwise>
</xsl:choose>
                    <xsl:variable name="sExampleValue1.0">
<xsl:value-of select="translate(string(//q/what),'.','')" />
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
<xsl:text>que (qu’)</xsl:text>
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
<xsl:text>que (qu’)</xsl:text>
</gloss>
                        </td>
</tr>
</xsl:otherwise>
</xsl:choose>
                    <xsl:variable name="sExampleValue2.0">
<xsl:value-of select="translate(string(//q/why),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength2.0" select="string-length(normalize-space($sExampleValue2.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength2.0 != 0 and $sExampleValue2.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue2.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue2.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength2.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
                            <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>pourquoi</xsl:text>
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
<xsl:text>pourquoi</xsl:text>
</gloss>
                        </td>
</tr>
</xsl:otherwise>
</xsl:choose>
                    <xsl:variable name="sExampleValue3.0">
<xsl:value-of select="translate(string(//q/where),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength3.0" select="string-length(normalize-space($sExampleValue3.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength3.0 != 0 and $sExampleValue3.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue3.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue3.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength3.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
                           <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>où</xsl:text>
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
<xsl:text>où</xsl:text>
</gloss>
                        </td>
</tr>
</xsl:otherwise>
</xsl:choose>
                    <xsl:variable name="sExampleValue4.0">
<xsl:value-of select="translate(string(//q/when),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength4.0" select="string-length(normalize-space($sExampleValue4.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength4.0 != 0 and $sExampleValue4.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue4.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue4.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength4.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
                            <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>quand</xsl:text>
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
<xsl:text>quand</xsl:text>
</gloss>
                        </td>
</tr>
</xsl:otherwise>
</xsl:choose>
                    <xsl:variable name="sExampleValue5.0">
<xsl:value-of select="translate(string(//q/how),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength5.0" select="string-length(normalize-space($sExampleValue5.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength5.0 != 0 and $sExampleValue5.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue5.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue5.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength5.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
                            <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>comment</xsl:text>
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
<xsl:text>comment</xsl:text>
</gloss>
                        </td>
</tr>
</xsl:otherwise>
</xsl:choose>
                   <xsl:variable name="sExampleValue6.0">
<xsl:value-of select="translate(string(//q/howMany),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength6.0" select="string-length(normalize-space($sExampleValue6.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength6.0 != 0 and $sExampleValue6.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue6.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue6.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength6.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
                         <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>combien</xsl:text>
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
<xsl:text>combien</xsl:text>
</gloss>
                      </td>
</tr>
</xsl:otherwise>
</xsl:choose>
                   <xsl:variable name="sExampleValue7.0">
<xsl:value-of select="translate(string(//q/which),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength7.0" select="string-length(normalize-space($sExampleValue7.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength7.0 != 0 and $sExampleValue7.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue7.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue7.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength7.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
                            <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>quel</xsl:text>
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
<xsl:text>quel</xsl:text>
</gloss>
                        </td>
</tr>
</xsl:otherwise>
</xsl:choose>
                    <xsl:variable name="sExampleValue8.0">
<xsl:value-of select="translate(string(//q/whose),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength8.0" select="string-length(normalize-space($sExampleValue8.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength8.0 != 0 and $sExampleValue8.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue8.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue8.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength8.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
                           <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>à qui</xsl:text>
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
<xsl:text>à qui</xsl:text>
</gloss>
                        </td>
</tr>
</xsl:otherwise>
</xsl:choose>
                    <xsl:variable name="sExampleValue9.0">
<xsl:value-of select="translate(string(//q/other),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength9.0" select="string-length(normalize-space($sExampleValue9.0))" />
<xsl:choose>
<xsl:when test="$iExampleLength9.0 != 0 and $sExampleValue9.0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue9.0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue9.0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength9.0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
                            <gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>autres interrogatifs</xsl:text>
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
<xsl:text>autres interrogatifs</xsl:text>
</gloss>
                        </td>
</tr>
</xsl:otherwise>
</xsl:choose>
                </table>
</example>
            <p contentType="ctComparativeIntro">
<xsl:text>Selon l’ordre de base des mots de la langue, on peut former les questions d’information avec ou sans antéposition d’un syntagme interrogatif. Dans les langues à tête finale (SOV, OVS, et OSV), on évite généralement le déplacement du syntagme interrogatif dans les questions d’information, tandis que pour les langues à tête initiale (SVO, VOS, et VSO) le syntagme interrogatif est généralement déplacé en position initiale.</xsl:text>
</p>
           <p contentType="ctComparativeIntro">
<xsl:text>Pour les langues où les interrogatifs sont pas antéposés, la structure du syntagme est soit la même que pour une question oui/non : le marqueur ou l’auxiliaire interrogatif se met dans la position de la conjonction de subordination ; ou la même que celle d’une phrase normale. Dans les deux cas, le syntagme interrogatif se met dans la position normale de l’argument. Beaucoup de langues SOV permettent que le syntagme interrogatif soit déplacé immédiatement avant le verbe. 
</xsl:text>
</p>
            <p>
<xsl:text>Dans les propositions principales interrogatives tout comme dans les questions d’information subordonnées en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, le syntagme interrogatif </xsl:text>
<xsl:choose>
                   <xsl:when test="//q/@contFront='no'">n’est pas antéposé ; il reste dans sa position ; il peut rester dans sa position habituelle.</xsl:when>
                   <xsl:when test="//q/@contFront='after'">peut rester dans sa position ou être déplacé dans la position immédiatement avant le verbe.</xsl:when>
                   <xsl:when test="//q/@contFront='before'">est déplace dans la position initiale de la proposition.</xsl:when>
                    <xsl:when test="//q/@contFront='unknown'">_______.</xsl:when>
                </xsl:choose>
</p>
            <section3 id="sQuesContentMain">
                <secTitle>Les questions d’information propositions principales</secTitle>
                <p contentType="ctComparativeIntro">
<xsl:text>En français,  pour les questions d’information qui sont proposition principale, le syntagme interrogatif doit être antéposé. Lorsque la question ne porte pas sur le sujet, le verbe est en seconde position, suivi par le sujet. Il peut y avoir d’autres changements dans la structure, mais le syntagme interrogatif est toujours en première position. Voici quelques exemples en français de ces questions d’information propositions principales : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Quel garçon a mangé la banane ? </langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Qui a pu manger la banane ? </langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Qu’est-ce que le garçon a mangé ? </langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Quand est-ce qu’elle viendra ? </langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Où est le chef ?</langData>
<xsl:text> </xsl:text>
</p>
               <p>
<xsl:text>Voici quelques exemples de questions d’information propositions principales en </xsl:text>
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
               <example num="xQues.QuesContent.QuesContentMain.8">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//q/contentExample" />
<xsl:with-param name="sExNumber">xQues.QuesContent.QuesContentMain.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
               <p>
<xsl:text>Comme le montrent les exemples, </xsl:text>
<xsl:choose>
                       <xsl:when test="//q/@mainCont='no'">il n’y a ni marqueur ni antéposition de l’auxiliaire,</xsl:when>
                       <xsl:when test="//q/@mainCont='noAux'">de déplacement de l’auxiliaire</xsl:when>
                       <xsl:when test="//q/@mainCont='yes'">il y a au moins un marqueur interrogatif ou une conjonction de subordination dans les questions d’information propositions principales. </xsl:when>
                    </xsl:choose>
<xsl:text> </xsl:text>
<xsl:if test="normalize-space(//q/@mainCont)='no'">
                        <xsl:text> simplement </xsl:text>
                        <xsl:choose>
                           <xsl:when test="//q/@contFront='no'">une différence de</xsl:when>
                           <xsl:when test="//q/@contFront='after'">un déplacement facultatif d’un syntagme interrogatif et peut-être une différence dans</xsl:when>
                           <xsl:when test="//q/@contFront='before'">l’antéposition d’un syntagme interrogatif et peut-être une différence dans</xsl:when>
                           <xsl:when test="//q/@contFront='unknown'">_______ d’un syntagme interrogatif et peut-être une différence dans</xsl:when>
                        </xsl:choose>
                       <xsl:text> l’intonation ou le ton ou un marqueur non-syntaxique.</xsl:text>
                    </xsl:if>
<xsl:if test="normalize-space(//q/@mainCont)='noAux'">
                        <xsl:text></xsl:text>
                        <xsl:choose>
                           <xsl:when test="//q/@mainContAuxPos='before'">au début</xsl:when>
                           <xsl:when test="//q/@mainContAuxPos='after'">à la fin</xsl:when>
                            <xsl:when test="//q/@mainContAuxPos='unknown'">_______</xsl:when>
                        </xsl:choose>
                        <xsl:text> de la question est </xsl:text>
                        <xsl:choose>
                           <xsl:when test="//q/@mainContAuxRequired='no'">admis mais pas obligatoire</xsl:when>
                            <xsl:when test="//q/@mainContAuxRequired='yes'">obligatoire</xsl:when>
                           <xsl:when test="//q/@mainContAuxRequired='object'">obligatoirement antéposé, sauf quand l’interrogation porte sur le sujet</xsl:when>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="//q/@contFront='no'">.</xsl:when>
                            <xsl:when test="//q/@contFront='after'">.</xsl:when>
                           <xsl:when test="//q/@contFront='before'"> en plus de l’antéposition  d’un syntagme interrogatif.</xsl:when>
                           <xsl:when test="//q/@contFront='unknown'">.</xsl:when>
                        </xsl:choose>
                  </xsl:if>
<xsl:if test="normalize-space(//q/@mainCont)='yes'">
                    <xsl:if test="normalize-space(//q/@mainContWord)='some' and normalize-space(//q/@mainCont)='yes'">
<xsl:text> Certains des marqueurs interrogatifs ou des conjonctions de subordination sont écrits comme des mots indépendants mais d’autres se rattachent </xsl:text>
</xsl:if>
                    <xsl:if test="normalize-space(//q/@mainContWord)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text> Les marqueurs interrogatifs ou des conjonctions de subordination sont écrits comme des mots indépendants. </xsl:text>
</xsl:if>
                    <xsl:if test="normalize-space(//q/@mainContWord)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text> Les marqueurs interrogatifs ou des conjonctions de subordination se rattachent </xsl:text>
</xsl:if>
                      <xsl:if test="normalize-space(//q/@mainContWord)='no' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/@mainCont)='yes'">
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>au début du premier mot de la question, quel que soit ce mot, comme proclitique de constituant.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='yes' and normalize-space(//q/mainContBetweenEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>au début du premier mot de la question ou après le syntagme interrogatif antéposé au début du premier mot du reste de la question comme proclitiques de constituant.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>au début du premier mot de la question comme proclitique de constituant ou à la fin du dernier mot du syntagme interrogatif antéposé comme enclitiques de constituant, quels que soient ces mots, avant le reste de la question.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='yes' and normalize-space(//q/mainContBetweenEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>au début du premier mot de la question, quel que soit ce mot, ou après le syntagme interrogatif initial au début du mot qui commence le reste de la question comme proclitiques ou à la fin du dernier mot du syntagme interrogatif comme enclitiques, quels que soient ces mots, avant le reste de la question.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='yes' and normalize-space(//q/mainContBetweenEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>au début du premier mot de la question, quel que soit ce mot, ou après le syntagme interrogatif antéposé.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContBetweenProclitic/@checked)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>à la fin du mot qui termine la question, quel que soit ce mot, comme enclitiques de constituant.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContBetweenProclitic/@checked)='yes' and normalize-space(//q/mainContBetweenEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>soit à la fin du mot qui termine la question, quel que soit ce mot, comme enclitiques ou après le syntagme interrogatif initial au début du premier mot de la question comme proclitiques de constituant.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContBetweenProclitic/@checked)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>à la fin du dernier mot de la question ou à la fin du dernier mot du syntagme interrogatif antéposé, quels que soient ces mots, avant le reste de la question, comme enclitiques de constituant.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContBetweenProclitic/@checked)='yes' and normalize-space(//q/mainContBetweenEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>à la fin du dernier mot de la question ou à la fin du dernier mot du syntagme interrogatif antéposé, quels que soient ces mots, avant le reste de la question, comme enclitiques de constituant, ou après le syntagme interrogatif antéposé au début du premier mot du reste de la question comme proclitiques de constituant.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>à la fin du dernier mot du syntagme interrogatif antéposé comme enclitiques de constituant, avant le reste de la question.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='yes' and normalize-space(//q/mainContBetweenEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>après le syntagme interrogatif antéposé au début du premier mot du reste de la question, quel que soit ce mot, comme proclitiques de constituant, ou à la fin du dernier mot du syntagme interrogatif antéposé comme enclitiques de constituant, avant le reste de la question.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContBetweenProclitic/@checked)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>soit au début du premier mot de la question, quel que soit ce mot, comme proclitique de constituant, ou à la fin du mot qui termine la question, quel que soit ce mot, comme enclitiques de constituant.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContBetweenProclitic/@checked)='yes' and normalize-space(//q/mainContBetweenEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>soit au début du premier mot de la question, ou à la fin du dernier mot de la question, quels que soient ces mots, comme clitiques de constituant.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContBetweenProclitic/@checked)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>soit au début du premier mot de la question, ou bien à la fin du dernier mot de la question ou à la fin du dernier mot de la question à la fin du syntagme interrogatif antéposé, quels que soient ces mots, avant le reste de la question, comme clitiques de constituant.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContBetweenProclitic/@checked)='yes' and normalize-space(//q/mainContBetweenEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>soit au début du premier mot de la question ou à la fin du dernier mot de la question ou après le syntagme interrogatif antéposé au début du premier mot du reste de la question ou à la fin du dernier mot  de la question à la fin du dernier mot du syntagme interrogatif antéposé, avant le reste de la question, comme clitiques de constituant.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>au verbe dans la question comme préfixes.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>au verbe dans la question comme suffixes.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>au verbe de la question, certains comme préfixes, d’autres comme suffixes.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>soit au début ou à la fin de la question comme clitiques de constituant, ou au verbe de la question comme affixes.</xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='no' and normalize-space(//q/mainContEnclitic/@checked)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='no' and normalize-space(//q/mainContPrefix/@checked)='no' and normalize-space(//q/mainContSuffix/@checked)='no' and normalize-space(//q/mainContCliticOther/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//q/mainYNCliticOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
                         <xsl:if test="normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/mainContCliticOther/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/mainContCliticOther/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/mainContCliticOther/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/mainContCliticOther/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContBetweenProclitic/@checked)='yes' and normalize-space(//q/mainContCliticOther/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContBetweenEnclitic/@checked)='yes' and normalize-space(//q/mainContCliticOther/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>  Certains aussi se rattachent ___</xsl:text>
<xsl:value-of select="//q/mainYNCliticOther" />  <xsl:text>.</xsl:text>
</xsl:if>              
                      </xsl:if>
                 </xsl:if>
</p>
               <xsl:if test="normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<p>
<xsl:text>Voici les clitiques qui marquent les propositions principales interrogatives :</xsl:text>
</p>
</xsl:if>      
               <xsl:if test="normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContBetweenProclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContBetweenEnclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/mainContProclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/mainContEnclitic/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<example num="xQues.QuesContent.QuesContentMain.14">
<table border="1">
                     <tr>
                        <th>Clitiques qui marquent les interrogatifs</th>
                        <th>Glose</th>
                     </tr>
                     <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/mainContCliticExample),'.','')" />
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
               <xsl:if test="normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<p>
<xsl:text>Voici les affixes qui marquent les propositions principales interrogatives :</xsl:text>
</p>
</xsl:if>      
               <xsl:if test="normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='no' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/mainContPrefix/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/mainContSuffix/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<example num="xQues.QuesContent.QuesContentMain.18">
<table border="1">
                     <tr>
                        <th>Affixes qui marquent les interrogatifs</th>
                        <th>Glose</th>
                     </tr>
                     <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/mainContAffixExample),'.','')" />
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
               
                <xsl:if test="normalize-space(//q/@mainContWord)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/@mainCont)='yes'">
<p>
<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO'">
                      <xsl:text>  Les marqueurs interrogatifs ou les conjonctions de subordination </xsl:text>
<xsl:if test="normalize-space(//q/@mainContWord)='some' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>qui sont des mots indépendants </xsl:text>
</xsl:if>
                      <xsl:text>se mettent </xsl:text>
                   <xsl:if test="normalize-space(//q/mainContWordBefore/@checked)='yes' and normalize-space(//q/mainContWordAfter/@checked)='no' and normalize-space(//q/mainContWordBoth/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>avant le</xsl:text>
</xsl:if>
                      <xsl:if test="normalize-space(//q/mainContWordBefore/@checked)='no' and normalize-space(//q/mainContWordAfter/@checked)='yes' and normalize-space(//q/mainContWordBoth/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>après le</xsl:text>
</xsl:if>
                      <xsl:if test="normalize-space(//q/mainContWordBefore/@checked)='no' and normalize-space(//q/mainContWordAfter/@checked)='no' and normalize-space(//q/mainContWordBoth/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>de part et d’autre du </xsl:text>
</xsl:if>
                      <xsl:if test="normalize-space(//q/mainContWordBefore/@checked)='yes' and normalize-space(//q/mainContWordAfter/@checked)='yes' and normalize-space(//q/mainContWordBoth/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
                      <xsl:if test="normalize-space(//q/mainContWordBefore/@checked)='yes' and normalize-space(//q/mainContWordAfter/@checked)='no' and normalize-space(//q/mainContWordBoth/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>avant ou de part et d’autre du </xsl:text>
</xsl:if>
                      <xsl:if test="normalize-space(//q/mainContWordBefore/@checked)='no' and normalize-space(//q/mainContWordAfter/@checked)='yes' and normalize-space(//q/mainContWordBoth/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>après ou de part et d’autre du </xsl:text>
</xsl:if>
                      <xsl:if test="normalize-space(//q/mainContWordBefore/@checked)='yes' and normalize-space(//q/mainContWordAfter/@checked)='yes' and normalize-space(//q/mainContWordBoth/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du </xsl:text>
</xsl:if>
                   <xsl:if test="normalize-space(//q/mainContWordOther/@checked)='no' and normalize-space(//q/@mainCont)='yes'">
<xsl:text> reste de le question.  </xsl:text>
</xsl:if>
                   <xsl:if test="normalize-space(//q/mainContWordBefore/@checked)='no' and normalize-space(//q/mainContWordAfter/@checked)='no' and normalize-space(//q/mainContWordBoth/@checked)='no' and normalize-space(//q/mainContWordOther/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//q/mainContWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
                      <xsl:if test="normalize-space(//q/mainContWordBefore/@checked)='yes' and normalize-space(//q/mainContWordOther/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContWordAfter/@checked)='yes' and normalize-space(//q/mainContWordOther/@checked)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/mainContWordBoth/@checked)='yes' and normalize-space(//q/mainContWordOther/@checked)='yes' and normalize-space(//q/@mainCont)='yes'">
<xsl:text> reste de la question et peut aussi se trouver ___</xsl:text> <xsl:value-of select="//q/mainContWordOther" /> <xsl:text>. </xsl:text>
</xsl:if>
                  </xsl:if>
<xsl:if test="normalize-space(//typology/@wordOrder)='VSO'">
                     <xsl:text> Les marqueurs interrogatifs ou conjonctions de subordination </xsl:text>
<xsl:if test="normalize-space(//q/@mainContWord)='some' and normalize-space(//q/@mainCont)='yes'">
<xsl:text>qui sont des mots indépendants </xsl:text>
</xsl:if>
                     <xsl:text>se mettent </xsl:text>
                     <xsl:if test="normalize-space(//q/mainContVSOBeforeWh/@checked)='yes' and normalize-space(//q/mainContVSOAfterWh/@checked)='no' and normalize-space(//q/mainContVSOEnd/@checked)='no'">
<xsl:text>avant un syntagme interrogatif antéposé.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/mainContVSOBeforeWh/@checked)='no' and normalize-space(//q/mainContVSOAfterWh/@checked)='yes' and normalize-space(//q/mainContVSOEnd/@checked)='no'">
<xsl:text>immédiatement après un syntagme interrogatif antéposé.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/mainContVSOBeforeWh/@checked)='no' and normalize-space(//q/mainContVSOAfterWh/@checked)='no' and normalize-space(//q/mainContVSOEnd/@checked)='yes'">
<xsl:text>à la fin de la question.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/mainContVSOBeforeWh/@checked)='yes' and normalize-space(//q/mainContVSOAfterWh/@checked)='yes' and normalize-space(//q/mainContVSOEnd/@checked)='no'">
<xsl:text>soit avant un syntagme interrogatif antéposé ou bien immédiatement après.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/mainContVSOBeforeWh/@checked)='yes' and normalize-space(//q/mainContVSOAfterWh/@checked)='no' and normalize-space(//q/mainContVSOEnd/@checked)='yes'">
<xsl:text>soit avant un syntagme interrogatif antéposé ou à la fin de la question.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/mainContVSOBeforeWh/@checked)='no' and normalize-space(//q/mainContVSOAfterWh/@checked)='yes' and normalize-space(//q/mainContVSOEnd/@checked)='yes'">
<xsl:text>soit immédiatement après un syntagme interrogatif antéposé ou à la fin de la question.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/mainContVSOBeforeWh/@checked)='yes' and normalize-space(//q/mainContVSOAfterWh/@checked)='yes' and normalize-space(//q/mainContVSOEnd/@checked)='yes'">
<xsl:text>soit avant un syntagme interrogatif antéposé ou immédiatement après, ou à la fin de la question.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/mainContVSOBeforeWh/@checked)='no' and normalize-space(//q/mainContVSOAfterWh/@checked)='no' and normalize-space(//q/mainContVSOEnd/@checked)='no' and normalize-space(//q/mainContVSOOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//q/mainContVSOOther" />
<xsl:text>.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/mainContVSOBeforeWh/@checked)='yes' and normalize-space(//q/mainContVSOOther/@checked)='yes' or normalize-space(//q/mainContVSOAfterWh/@checked)='yes' and normalize-space(//q/mainContVSOOther/@checked)='yes' or normalize-space(//q/mainContVSOEnd/@checked)='yes' and normalize-space(//q/mainContVSOOther/@checked)='yes'">
<xsl:text>  Certains peuvent aussi se placer ___</xsl:text>
<xsl:value-of select="//q/mainContVSOOther" />
<xsl:text>.</xsl:text>
</xsl:if>
                  </xsl:if>
<xsl:text> Un marqueur interrogatif ou une conjonction de subordination sont </xsl:text>
<xsl:choose>
                           <xsl:when test="//q/@mainContRequired='yes'">obligatoires dans toute question d’information.</xsl:when>
                           <xsl:when test="//q/@mainContRequired='no'">facultatifs dans les questions d’information.</xsl:when>
                        </xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//q/@mainContRequired)='special'">
<xsl:text>omis quand ___</xsl:text>
<xsl:value-of select="//q/mainContSpecialConditions" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:text> Voici les marqueurs interrogatifs :</xsl:text>
</p>
</xsl:if>
            
               <xsl:if test="normalize-space(//q/@mainContWord)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/@mainCont)='yes'">
<example num="xQues.QuesContent.QuesContentMain.22">
<table border="1">
                     <tr>
                        <th>Les marqueurs interrogatifs</th>
                        <th>Glose</th>
                     </tr>
                     <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/mainContWordExample),'.','')" />
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
               
               
            </section3>
            <section3 id="sQuesContentEmb">
               <secTitle>Les propositions interrogatives d’information subordonnées</secTitle>
                <p contentType="ctComparativeIntro">
<xsl:text>En français, dans les propositions interrogatives subordonnées, un syntagme interrogatif doit se mettre au début de la proposition subordonnée.  Voici des exemples de questions d’information subordonées en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je sais qui a mangé la banane</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je me demande quand elle viendra</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je demanderai ce que le garçon a touché</langData>
<xsl:text>.</xsl:text>
</p>
               <p>
<xsl:text>Voici quelques exemples de propositions interrogatives d’information subordonées en </xsl:text>
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
               <example num="xQues.QuesContent.QuesContentEmb.8">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//q/embContentExample" />
<xsl:with-param name="sExNumber">xQues.QuesContent.QuesContentEmb.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
               <p>
<xsl:text>Comme le montrent ces exemples, </xsl:text>
<xsl:choose>
                     <xsl:when test="//q/@embCont='no'">il n’y a ni marqueur ni auxiliaire antéposé, </xsl:when>
                     <xsl:when test="//q/@embCont='noAux'">ni déplacement de l’auxiliaire</xsl:when>
                     <xsl:when test="//q/@embCont='yes'">il y a au moins un marqueur interrogatif ou une conjonction de subordination dans les propositions interrogatives d’information subordonées.  </xsl:when>
                  </xsl:choose>
<xsl:text> </xsl:text>
<xsl:if test="normalize-space(//q/@embCont)='no'">
                     <xsl:text> seulement </xsl:text>
                     <xsl:choose>
                        <xsl:when test="//q/@contFront='no'">une différence</xsl:when>
                        <xsl:when test="//q/@contFront='after'">le déplacement facultatif d’un syntagme interrogatif et peut-être une différence</xsl:when>
                        <xsl:when test="//q/@contFront='before'">un syntagme interrogatif antéposé et peut-être une différence</xsl:when>
                        <xsl:when test="//q/@contFront='unknown'">_______ d’un syntagme interrogatif et peut-être une différence</xsl:when>
                     </xsl:choose>
                     <xsl:text> d’intonation ou de ton ou d’un autre marqueur non-syntaxique.</xsl:text>
                  </xsl:if>
<xsl:if test="normalize-space(//q/@embCont)='noAux'">
                     <xsl:text></xsl:text>
                     <xsl:choose>
                        <xsl:when test="//q/@embContAuxPos='before'">au début</xsl:when>
                        <xsl:when test="//q/@embContAuxPos='after'">à la fin</xsl:when>
                        <xsl:when test="//q/@embContAuxPos='unknown'">_______</xsl:when>
                     </xsl:choose>
                     <xsl:text> de la question subordonnée est </xsl:text>
                     <xsl:choose>
                        <xsl:when test="//q/@embContAuxRequired='no'">admis mais pas obligatoire</xsl:when>
                        <xsl:when test="//q/@embContAuxRequired='yes'">obligatoire</xsl:when>
                        <xsl:when test="//q/@embContAuxRequired='object'">obligatoirement antéposé, sauf quand l’interrogation porte sur le sujet</xsl:when>
                     </xsl:choose>
                     <xsl:choose>
                        <xsl:when test="//q/@contFront='no'">.</xsl:when>
                        <xsl:when test="//q/@contFront='after'">.</xsl:when>
                        <xsl:when test="//q/@contFront='before'"> outre l’antéposition d’un syntagme interrogatif.</xsl:when>
                        <xsl:when test="//q/@contFront='unknown'">.</xsl:when>
                     </xsl:choose>
                  </xsl:if>
<xsl:if test="normalize-space(//q/@embCont)='yes'">
                     <xsl:if test="normalize-space(//q/@embContWord)='some' and normalize-space(//q/@embCont)='yes'">
<xsl:text> Certains des marqueurs interrogatifs ou conjonctions de subordination sont des mots indépendants mais d’autres se rattachent </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/@embContWord)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text> Les marqueurs interrogatifs ou conjonctions de subordination sont écrits comme des mots indépendants. </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/@embContWord)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text> Les marqueurs interrogatifs ou conjonctions de subordination se rattachent </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/@embContWord)='no' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='some' and normalize-space(//q/@embCont)='yes'">
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>au début du premier mot de la question subordonnée, quel que soit ce mot, comme proclitiques de constituant.  </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='yes' and normalize-space(//q/embContBetweenEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>au début du premier mot de la question subordonnée ou après le syntagme interrogatif antéposé au début du premier mot du reste de la question subordonnée, quels que soient ces mots, comme proclitiques de constituant.  </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>au début du premier mot de la question subordonnée, quel qu’il soit, comme proclitiques de constituant ou à la fin du dernier mot du syntagme interrogatif antéposé, quel que soit ce mot, comme enclitiques de constituant, avant le reste de la question subordonnée.    </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='yes' and normalize-space(//q/embContBetweenEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>au début du premier mot de la question subordonnée, quel que soit ce mot, comme proclitiques de constituant ou à la fin du dernier mot du syntagme interrogatif antéposé comme proclitiques de constituant ou à la fin du dernier mot du syntagme interrogatif antéposé comme enclitiques de constituant, avant le reste de la question subordonnée.    </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='yes' and normalize-space(//q/embContBetweenEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>après le syntagme interrogatif antéposé au début du premier mot du reste de la question subordonnée comme proclitiques de constituant.  </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContBetweenProclitic/@checked)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>à la fin du dernier mot de la question subordonnée comme enclitiques de constituant.    </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContBetweenProclitic/@checked)='yes' and normalize-space(//q/embContBetweenEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>à la fin du dernier mot de la question subordonnée ou après le syntagme interrogatif antéposé au début du mot qui commence le reste de la question subordonnée comme proclitiques de constituant.  </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContBetweenProclitic/@checked)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>a la fin du dernier mot de la question subordonnée ou à la fin du dernier mot du syntagme interrogatif antéposé avant le reste de la question subordonée, comme enclitiques de constituant.    </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContBetweenProclitic/@checked)='yes' and normalize-space(//q/embContBetweenEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>à la fin du dernier mot du syntagme interrogatif subordonnée ou à la fin du dernier mot du syntagme interrogatif antéposé, avant le reste de la question subordonnée comme enclitiques de constituant, ou après le syntagme interrogatif antéposé au début du mot qui commence le reste de la question subordonnée, comme proclitiques de constituant. </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>à la fin du dernier mot du syntagme interrogatif antéposé comme enclitiques de constituant, avant le reste de la question subordonnée.    </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='yes' and normalize-space(//q/embContBetweenEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>après le syntagme interrogatif antéposé au début du premier mot du reste de la question subordonnée comme proclitiques de constituant, ou à la fin du dernier mot du syntagme interrogatif antéposé comme enclitiques de constituant, quels que soient ces mots, avant le reste de la question subordonnée.    </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContBetweenProclitic/@checked)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>soit au début du premier mot de la question subordonnée ou à la fin du dermier mot de la question subordonnée, quels que soient ces mots, comme clitiques de constituant.   </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContBetweenProclitic/@checked)='yes' and normalize-space(//q/embContBetweenEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>soit au début du premier mot de la question subordonnée ou à la fin du dernier mot de la question subordonnée, quels que soient ces mots, comme clitiques de constituant, ou après le syntagme interrogatif antéposé au début du premier mot du reste de la question subordonnée, quel que soit ce mot, comme proclitiques de constituant.  </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContBetweenProclitic/@checked)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>soit au début du premier mot de la question subordonnée, quels que soient ces mots, comme clitiques de constituant, ou à la fin du dernier mot de la question subordonnée, quel que soit ce mot, à la fin du dernier mot du syntagme interrogatif antéposé, avant le reste de la question subordonnée comme enclitiques de constituant.    </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContBetweenProclitic/@checked)='yes' and normalize-space(//q/embContBetweenEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>soit au début du premier mot de la question subordonnée ou à la fin du dernier mot de la question subordonnée, quels que soient ces mots, comme clitiques de constituant, ou après le syntagme interrogatif antéposé au début du premier mot du reste de la question subordonée comme proclitiques de constituant, ou à la fin du dernier mot de la question subordonnée, quel que soit ce mot, à la fin du dernier mot du syntagme interrogatif antéposé, avant le reste de la question subordonnée, comme enclitiques de constituant.   </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>au verbe de la question subordonnée comme préfixe. </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text>au verbe dans la question subordonnée comme suffixe.   </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text>au verbe de la question subordonnée, certains comme préfixes, d’autres comme suffixes.   </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text>soit au début ou à la fin de la question subordonnée comme clitique de constituant, ou au verbe de la question subordonnée comme affixe.  </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='no' and normalize-space(//q/embContEnclitic/@checked)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='no' and normalize-space(//q/embContPrefix/@checked)='no' and normalize-space(//q/embContSuffix/@checked)='no' and normalize-space(//q/embContCliticOther/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//q/embYNCliticOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
                        <xsl:if test="normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/embContCliticOther/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/embContCliticOther/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/embContCliticOther/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/embContCliticOther/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContBetweenProclitic/@checked)='yes' and normalize-space(//q/embContCliticOther/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContBetweenEnclitic/@checked)='yes' and normalize-space(//q/embContCliticOther/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text>  Certains se rattachent aussi ___</xsl:text>
<xsl:value-of select="//q/embYNCliticOther" />  <xsl:text>.</xsl:text>
</xsl:if>              
                     </xsl:if>
                  </xsl:if>
</p>
               <xsl:if test="normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='some' and normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='some' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<p>
<xsl:text>Voici les clitiques qui marquent les propositions interrogatives subordonnées :</xsl:text>
</p>
</xsl:if>      
               <xsl:if test="normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContBetweenProclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContBetweenEnclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='some' and normalize-space(//q/embContProclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='some' and normalize-space(//q/embContEnclitic/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<example num="xQues.QuesContent.QuesContentEmb.14">
<table border="1">
                     <tr>
                        <th>Clitiques marqueurs interrogatifs</th>
                        <th>Glose</th>
                     </tr>
                     <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/embContCliticExample),'.','')" />
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
               <xsl:if test="normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='some' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='some' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<p>
<xsl:text>Voici les affixes qui marquent les propositions interrogatives subordonnées :</xsl:text>
</p>
</xsl:if>      
               <xsl:if test="normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='no' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='some' and normalize-space(//q/embContPrefix/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='some' and normalize-space(//q/embContSuffix/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<example num="xQues.QuesContent.QuesContentEmb.18">
<table border="1">
                     <tr>
                        <th>Affixes de marqueur interrogatif</th>
                        <th>Glose</th>
                     </tr>
                     <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/embContAffixExample),'.','')" />
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
               
               <xsl:if test="normalize-space(//q/@embContWord)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/@embContWord)='some' and normalize-space(//q/@embCont)='yes'">
<p>
<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO'">
                     <xsl:text>  Les marqueurs interrogatifs ou conjonctions de subordination </xsl:text>
<xsl:if test="normalize-space(//q/@embContWord)='some' and normalize-space(//q/@embCont)='yes'">
<xsl:text>qui sont des mots indépendants </xsl:text>
</xsl:if>
                     <xsl:text>se placent </xsl:text>
                     <xsl:if test="normalize-space(//q/embContWordBefore/@checked)='yes' and normalize-space(//q/embContWordAfter/@checked)='no' and normalize-space(//q/embContWordBoth/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>avant le</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContWordBefore/@checked)='no' and normalize-space(//q/embContWordAfter/@checked)='yes' and normalize-space(//q/embContWordBoth/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>après le</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContWordBefore/@checked)='no' and normalize-space(//q/embContWordAfter/@checked)='no' and normalize-space(//q/embContWordBoth/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContWordBefore/@checked)='yes' and normalize-space(//q/embContWordAfter/@checked)='yes' and normalize-space(//q/embContWordBoth/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContWordBefore/@checked)='yes' and normalize-space(//q/embContWordAfter/@checked)='no' and normalize-space(//q/embContWordBoth/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContWordBefore/@checked)='no' and normalize-space(//q/embContWordAfter/@checked)='yes' and normalize-space(//q/embContWordBoth/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContWordBefore/@checked)='yes' and normalize-space(//q/embContWordAfter/@checked)='yes' and normalize-space(//q/embContWordBoth/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContWordOther/@checked)='no' and normalize-space(//q/@embCont)='yes'">
<xsl:text> reste de la question subordonnée.  </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContWordBefore/@checked)='no' and normalize-space(//q/embContWordAfter/@checked)='no' and normalize-space(//q/embContWordBoth/@checked)='no' and normalize-space(//q/embContWordOther/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//q/embContWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContWordBefore/@checked)='yes' and normalize-space(//q/embContWordOther/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContWordAfter/@checked)='yes' and normalize-space(//q/embContWordOther/@checked)='yes' and normalize-space(//q/@embCont)='yes' or normalize-space(//q/embContWordBoth/@checked)='yes' and normalize-space(//q/embContWordOther/@checked)='yes' and normalize-space(//q/@embCont)='yes'">
<xsl:text> reste de la question subordonnée et peut aussi se mettre ___</xsl:text> <xsl:value-of select="//q/embContWordOther" /> <xsl:text>. </xsl:text>
</xsl:if>
                  </xsl:if>
<xsl:if test="normalize-space(//typology/@wordOrder)='VSO'">
                     <xsl:text>  Les marqueurs interrogatifs ou conjonctions de subordination </xsl:text>
<xsl:if test="normalize-space(//q/@embContWord)='some' and normalize-space(//q/@embCont)='yes'">
<xsl:text>qui sont des mots indépendants </xsl:text>
</xsl:if>
                     <xsl:text>se placent </xsl:text>
                     <xsl:if test="normalize-space(//q/embContVSOBeforeWh/@checked)='yes' and normalize-space(//q/embContVSOAfterWh/@checked)='no' and normalize-space(//q/embContVSOEnd/@checked)='no'">
<xsl:text>avant un syntagme interrogatif antéposé.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContVSOBeforeWh/@checked)='no' and normalize-space(//q/embContVSOAfterWh/@checked)='yes' and normalize-space(//q/embContVSOEnd/@checked)='no'">
<xsl:text>directement après un syntagme interrogatif antéposé.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContVSOBeforeWh/@checked)='no' and normalize-space(//q/embContVSOAfterWh/@checked)='no' and normalize-space(//q/embContVSOEnd/@checked)='yes'">
<xsl:text>à la fin de la question subordonnée.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContVSOBeforeWh/@checked)='yes' and normalize-space(//q/embContVSOAfterWh/@checked)='yes' and normalize-space(//q/embContVSOEnd/@checked)='no'">
<xsl:text>osoit avant un syntagme interrogatif antéposé ou directement après.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContVSOBeforeWh/@checked)='yes' and normalize-space(//q/embContVSOAfterWh/@checked)='no' and normalize-space(//q/embContVSOEnd/@checked)='yes'">
<xsl:text>soit avant un syntagme interrogatif antéposé ou à la fin de la question subordonnée.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContVSOBeforeWh/@checked)='no' and normalize-space(//q/embContVSOAfterWh/@checked)='yes' and normalize-space(//q/embContVSOEnd/@checked)='yes'">
<xsl:text>soit directement après un syntagme interrogatif antéposé ou à la fin de la question subordonnée.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContVSOBeforeWh/@checked)='yes' and normalize-space(//q/embContVSOAfterWh/@checked)='yes' and normalize-space(//q/embContVSOEnd/@checked)='yes'">
<xsl:text>soit avant un syntagme interrogatif antéposé ou directement après, ou à la fin de la question subordonnée.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContVSOBeforeWh/@checked)='no' and normalize-space(//q/embContVSOAfterWh/@checked)='no' and normalize-space(//q/embContVSOEnd/@checked)='no' and normalize-space(//q/embContVSOOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//q/embContVSOOther" />
<xsl:text>.</xsl:text>
</xsl:if>
                     <xsl:if test="normalize-space(//q/embContVSOBeforeWh/@checked)='yes' and normalize-space(//q/embContVSOOther/@checked)='yes' or normalize-space(//q/embContVSOAfterWh/@checked)='yes' and normalize-space(//q/embContVSOOther/@checked)='yes' or normalize-space(//q/embContVSOEnd/@checked)='yes' and normalize-space(//q/embContVSOOther/@checked)='yes'">
<xsl:text>  Certains peuvent aussi se placer ___</xsl:text>
<xsl:value-of select="//q/embContVSOOther" />
<xsl:text>.</xsl:text>
</xsl:if>
                  </xsl:if>
<xsl:text>  Un marqueur interrogatif ou une conjonction de subordination sont </xsl:text>
<xsl:choose>
                     <xsl:when test="//q/@embContRequired='yes'">obligatoires dans toute question d’information subordonnée.</xsl:when>
                     <xsl:when test="//q/@embContRequired='no'">facultatifs dans les questions question d’information subordonnées.</xsl:when>
                  </xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//q/@embContRequired)='special'">
<xsl:text>ne s’emploient pas quand ___</xsl:text>
<xsl:value-of select="//q/embContSpecialConditions" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:text> Voici les marqueurs interrogatifs :</xsl:text>
</p>
</xsl:if>
               
               <xsl:if test="normalize-space(//q/@mainContWord)='yes' and normalize-space(//q/@mainCont)='yes' or normalize-space(//q/@mainContWord)='some' and normalize-space(//q/@mainCont)='yes'">
<example num="xQues.QuesContent.QuesContentEmb.22">
<table border="1">
                     <tr>
                        <th>Marqueurs interrogatifs</th>
                        <th>Glose</th>
                     </tr>
                     <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//q/embContWordExample),'.','')" />
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
            </section3>
        </section2>
    </section1>
   
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
   
   
   
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
   
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
  
   
      
      
      
      
      
   
      
         
         
         
         
         
      
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
   
      
   
   
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
   
   
      
   
   
      
   

   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
  
   
      
      
      
      
      
   
      
         
         
         
         
         
      
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
   
      
   
   
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
   

</xsl:template>
</xsl:stylesheet>
