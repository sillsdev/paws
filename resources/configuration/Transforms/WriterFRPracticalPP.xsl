<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="pp">
    <section1 id="sPP">
        <secTitle>
            <xsl:choose>
               <xsl:when test="//pp/@pPos='before'">Syntagmes prépositionnels</xsl:when>
               <xsl:when test="//pp/@pPos='after'">Syntagmes postpositionnels </xsl:when>
               <xsl:when test="//pp/@pPos='both'">Syntagmes adpositionnels</xsl:when>
               <xsl:when test="//pp/@pPos='unknown'">Syntagmes adpositionnels</xsl:when>
            </xsl:choose>
            </secTitle>
       <p contentType="ctComparativeIntro">
<xsl:text>Cette section traite de la structure des syntagmes adpositionnels qui expriment généralement le lieu, l’accompagnement, le but, l’instrument, le destinataire ou l’agent pour les langues qui n’ont pas de marque de cas sur les noms ou les syntagmes nominaux.  Normalement les langues avec des marques de cas ont toujours des syntagmes adpositionnels locatif et temporel.</xsl:text>
</p>
       <p contentType="ctComparativeIntro">
<xsl:text>Les prépositions précèdent leurs compléments, tandis que les postpositions les suivent.  Le français a des prépositions comme par exemple dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pour Jean</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>devant la porte</langData>
<xsl:text>.  Les prépositions ou postpositions peuvent être des mots indépendants ou des clitiques qui se rattachent à la frontière du complément ou à sa tête.</xsl:text>
</p>
       <xsl:if test="normalize-space(//np/@caseN)='no'">
<p contentType="ctPracticalIntro">
<xsl:text>Les syntagmes adpositionnels peuvent exprimer le lieu et le temps de même que les relations grammaticales de l’accompagnement, du but, de l’instrument, du destinatiare, du possesseur ou de l’agent, puisque le cas n'est pas marqué sur le nom ou le syntagme nominal en </xsl:text>
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
       <xsl:if test="normalize-space(//np/@caseN)='yes'">
<p contentType="ctPracticalIntro">
<xsl:text>Normalement, les syntagmes adpositionnels expriment seulement le lieu et le temps puisque le cas est marqué sur le nom ou sur le syntagme nominal en </xsl:text>
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
       <p>
<xsl:text>Voici quelques exemples de syntagmes locatifs </xsl:text>
<xsl:choose>
             <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
          <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
          <xsl:when test="//pp/@pPos='both'">adpositionnels</xsl:when>
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
<xsl:text>:</xsl:text>
</p>
       <example num="xPP.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/ppExample" />
<xsl:with-param name="sExNumber">xPP.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
       <p>
<xsl:text>Comme les exemples le montrent, le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>  a des </xsl:text>
<xsl:choose>
               <xsl:when test="//pp/@pPos='before'">prépositions seulement.  </xsl:when>
                <xsl:when test="//pp/@pPos='after'">postpositions seulement.  </xsl:when>
               <xsl:when test="//pp/@pPos='both'">prépositions et des postpositions.  </xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">_____-positions seulement.  </xsl:when>
            </xsl:choose>
<xsl:text></xsl:text>
<xsl:choose>
               <xsl:when test="//pp/@pType='word'">Ce sont tous des mots indépendants.</xsl:when>
               <xsl:when test="//pp/@pType='clitic'">Ce sont tous des clitiques rattachés à un autre mot. </xsl:when>
               <xsl:when test="//pp/@pType='both'">Certains sont écrits comme des mots indépendants mais certains sont des clitiques rattachés à un autre mot.  </xsl:when>
            </xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pType)!='word'">
               <xsl:text>Les clitiques se rattachent </xsl:text>
                <xsl:choose>
                   <xsl:when test="//pp/@attaches='edge'">à la frontière</xsl:when>
                   <xsl:when test="//pp/@attaches='head'">à la tête</xsl:when>
                </xsl:choose>
               <xsl:text> du complément.  </xsl:text>
            </xsl:if>
<xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//pp/@ppClassifier)='yes' and normalize-space(//pp/@pType)!='clitic'">
<xsl:choose>
   <xsl:when test="//pp/@pPos='before'">Les prépositions</xsl:when>
           <xsl:when test="//pp/@pPos='after'">Les postpositions</xsl:when>
   <xsl:when test="//pp/@pPos='both'">Les prépositions et postpositions</xsl:when>
              <xsl:when test="//pp/@pPos='unknown'">Les adpositions</xsl:when>
</xsl:choose>
   <xsl:text> sont marquées par des classificateurs en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> puisqu’elles s’intègrent dans le système d’accord.  Seules les racines sont montrées dans les tableaux mais les syntagmes illustrent les formes complètes marquées avec des classificateurs.</xsl:text> </xsl:if>
</p>
       <xsl:if test="normalize-space(//pp/@pPos)='before'">
<p>
<xsl:text>Voici quelques exemples de prépositions </xsl:text>
<xsl:if test="normalize-space(//pp/@bodyPart)='yes'">
<xsl:text>habituelles </xsl:text>
</xsl:if>
<xsl:text>utilisées dans des syntagmes locatifs :</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//pp/@pPos)='before'">
<example num="xPP.20">
<table border="1">
              <tr>
                 <th>Prépositions</th>
                 <th>Glose</th>
              </tr>				
              <tr>
<xsl:for-each select="//pp/locativePrepExample/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/locativePrepExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/locativePrepExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='after'">
<p>
<xsl:text>Voici quelques exemples de postpositions </xsl:text>
<xsl:if test="normalize-space(//pp/@bodyPart)='yes'">
<xsl:text>habituelles </xsl:text>
</xsl:if>
<xsl:text>utilisées dans des syntagmes locatifs :</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='after'">
<example num="xPP.24">
<table border="1">
             <tr>
                <th>Postpositions</th>
                <th>Glose</th>
             </tr>				
             <tr>
<xsl:for-each select="//pp/locativePostExample/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/locativePostExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/locativePostExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='both' or normalize-space(//pp/@pPos)='unknown'">
<p>
<xsl:text>Voici quelques exemples de prépositions et postpositions </xsl:text>
<xsl:if test="normalize-space(//pp/@bodyPart)='yes'">
<xsl:text>habituelles </xsl:text>
</xsl:if>
<xsl:text>utilisées dans des syntagmes locatifs :</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='both' or normalize-space(//pp/@pPos)='unknown'">
<example num="xPP.28">
<table border="1">
             <tr>
                <th>Type</th>
                <th>Morphèmes</th>
                <th>Glose</th>
             </tr>				
             <tr>
<td>
<xsl:text>Prépositions</xsl:text>
</td>
<xsl:for-each select="//pp/locativePrepExample/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//pp/locativePrepExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/locativePrepExample/form[position() &gt; 1]">
<tr>
<td> </td>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
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
<td>
<xsl:text>Postpositions</xsl:text>
</td>
<xsl:for-each select="//pp/locativePostExample/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//pp/locativePostExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/locativePostExample/form[position() &gt; 1]">
<tr>
<td> </td>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
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
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='before' or normalize-space(//pp/@pPos)='both'">
<p>
<xsl:text>Voici quelquees exemples de syntagmes prépositionnels locatifs :</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='before' or normalize-space(//pp/@pPos)='both'">
<example num="xPP.32">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/locativePrepPPExample" />
<xsl:with-param name="sExNumber">xPP.32</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='after' or normalize-space(//pp/@pPos)='both'">
<p>
<xsl:text>Voici quelques exemples de syntagmes postpositionnels locatifs :</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='after' or normalize-space(//pp/@pPos)='both'">
<example num="xPP.36">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/locativePostPPExample" />
<xsl:with-param name="sExNumber">xPP.36</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@bodyPart)='yes'">
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
<xsl:text> utilise principalement des mots des parties du corps pour exprimer le lieu dans les syntagmes </xsl:text>
<xsl:choose>
          <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
          <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
          <xsl:when test="//pp/@pPos='both'">prépositionnels et postpositionnels</xsl:when>
          <xsl:when test="//pp/@pPos='unknown'">adpositionels</xsl:when>
</xsl:choose>
<xsl:text>.  Voici quelques exemples des </xsl:text>
<xsl:choose>
             <xsl:when test="//pp/@pPos='before'">prépositions</xsl:when>
             <xsl:when test="//pp/@pPos='after'">postpositions</xsl:when>
             <xsl:when test="//pp/@pPos='both'">prépositions et postpositions</xsl:when>
             <xsl:when test="//pp/@pPos='unknown'">adpositions</xsl:when>
</xsl:choose>
<xsl:text> dérivées de parties du corps :</xsl:text>
</p>
</xsl:if>      
       <xsl:if test="normalize-space(//pp/@pPos)='before' and normalize-space(//pp/@bodyPart)='yes'">
<example num="xPP.40">
<table border="1">
             <tr>
                <th>Partie du corps</th>
                <th>Glose comme nom</th>
                <th>Glose comme préposition</th>
             </tr>				
             <tr>
<xsl:for-each select="//pp/bodyPartPrepExample/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/bodyPartPrepExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/bodyPartPrepExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
          </table>
</example>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='after' and normalize-space(//pp/@bodyPart)='yes'">
<example num="xPP.42">
<table border="1">
             <tr>
                <th>Partie du corps</th>
                <th>Glose come nom</th>
                <th>Glose comme postposition</th>
             </tr>				
             <tr>
<xsl:for-each select="//pp/bodyPartPostExample/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/bodyPartPostExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/bodyPartPostExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
          </table>
</example>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@bodyPart)='yes' or normalize-space(//pp/@pPos)='unknown' and normalize-space(//pp/@bodyPart)='yes'">
<example num="xPP.44">
<table border="1">
             <tr>
                <th>Type</th>
                <th>Partie du corps</th>
                <th>Glose comme nom</th>
                <th>Glose comme adposition</th>
             </tr>				
             <tr>
<td>
<xsl:text>Prépositions</xsl:text>
</td>
<xsl:for-each select="//pp/bodyPartPrepExample/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//pp/bodyPartPrepExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/bodyPartPrepExample/form[position() &gt; 1]">
<tr>
<td> </td>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
             <tr>
<td>
<xsl:text>Postpositions</xsl:text>
</td>
<xsl:for-each select="//pp/bodyPartPostExample/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//pp/bodyPartPostExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/bodyPartPostExample/form[position() &gt; 1]">
<tr>
<td> </td>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
          </table>
</example>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='before' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@bodyPart)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes prépositionnels locatifs qui utilisent des parties du corps :</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='before' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@bodyPart)='yes'">
<example num="xPP.48">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/bodyPartPrepPPExample" />
<xsl:with-param name="sExNumber">xPP.48</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='after' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@bodyPart)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes postpositionnels locatifs qui utilisent des parties du corps :</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='after' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@bodyPart)='yes'">
<example num="xPP.52">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/bodyPartPostPPExample" />
<xsl:with-param name="sExNumber">xPP.52</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
       <xsl:if test="normalize-space(//np/@caseN)='no'">
<p>
<xsl:text>Les </xsl:text>
<xsl:choose>
          <xsl:when test="//pp/@pPos='before'">prépositions</xsl:when>
          <xsl:when test="//pp/@pPos='after'">postpositions</xsl:when>
          <xsl:when test="//pp/@pPos='both'">prépositions et postpositions</xsl:when>
          <xsl:when test="//pp/@pPos='unknown'">adpositions</xsl:when>
</xsl:choose>
<xsl:text> qui sont utilisées comme un type de marqueur du cas pour les relations grammaticales mineures sont présentées en </xsl:text>
<exampleRef num="xCaseP" equal="no" letterOnly="no" />
<xsl:text>.</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//np/@caseN)='no'">
<example num="xCaseP">
<table border="1">
             <caption>
                <xsl:text>Marqueurs de cas adpositionaux</xsl:text>
             </caption>
             <tr>
                <th>Adpositions</th>
                <th>Cas</th>
                <th>Utilisation</th>
             </tr>
             <tr>
<td>
                   <xsl:text>Génitif</xsl:text>
                </td>
<td>
                   <xsl:text>possesseurs</xsl:text>
                </td>
<xsl:for-each select="//pp/genitiveP/form[1]">
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
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/genitiveP/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/genitiveP/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
<td>
                   <xsl:text>Datif</xsl:text>
                </td>
<td>
                   <xsl:text>objets indirects</xsl:text>
                </td>
<xsl:for-each select="//pp/dativeP/form[1]">
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
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/dativeP/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/dativeP/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
<td>
                   <xsl:text>Ablatif</xsl:text>
                </td>
<td>
                   <xsl:text>source ou origine</xsl:text>
                </td>
<xsl:for-each select="//pp/ablativeP/form[1]">
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
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/ablativeP/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/ablativeP/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
<td>
                   <xsl:text>Instrumental</xsl:text>
                </td>
<td>
                   <xsl:text>instrument, moyen ou agent</xsl:text>
                </td>
<xsl:for-each select="//pp/instrumentalP/form[1]">
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
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/instrumentalP/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/instrumentalP/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
<td>
                   <xsl:text>Vocatif</xsl:text>
                </td>
<td>
                   <xsl:text>adresse directe</xsl:text>
                </td>
<xsl:for-each select="//pp/vocativeP/form[1]">
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
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/vocativeP/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/vocativeP/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
<td>
                   <xsl:text>Oblique</xsl:text>
                </td>
<td>
                   <xsl:text>relation grammaticale mineure générale</xsl:text>
                </td>
<xsl:for-each select="//pp/obliqueP/form[1]">
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
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/obliqueP/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/obliqueP/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
</xsl:if>	      
       
                <p>
<xsl:text>Tous les exemples ci-dessus ont un nom, un nom propre ou un syntagme nominal comme complément.  Des modificateurs possibles du syntagme </xsl:text>
<xsl:choose>
                      <xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
                      <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
                      <xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
                      <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
</xsl:choose>
<xsl:text> entier sont considérés ensuite, puis des exemples d’autres types de compléments permis sont donnés dans la section </xsl:text>
<sectionRef sec="sPPComps" />
<xsl:text>.</xsl:text>
</p>
        <section2 id="sPPModifiers">
           <secTitle>Modificateurs</secTitle>
            <p contentType="ctComparativeIntro">
<xsl:text>Il y a normalement quelques mots de degré qui peuvent modifier tout un syntagme </xsl:text>
<xsl:choose>
                   <xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
                   <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
                   <xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
                   <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
                </xsl:choose>
<xsl:text>, tels </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>juste</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>tout</langData>
<xsl:text> dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>juste au coin</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>tout au bout de la rue</langData>
<xsl:text>. Certaines langues ont un groupe d’adverbes locatifs signifiant </xsl:text>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>« juste ici »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>« juste là »</xsl:text>
</gloss>
<xsl:text> qui peuvent modifier les syntagmes adpositionnels. Les ordinaux peuvent aussi modifier les syntagmes </xsl:text>
<xsl:choose>
                   <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                   <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                   <xsl:when test="//pp/@pPos='both'">adpositionnels</xsl:when>
                   <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
                </xsl:choose>
<xsl:text> comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[le] suivant dans la file</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[le] premier de la porte</langData>
<xsl:text>.  En plus, certains adverbes de manière peuvent modifier des syntagmes </xsl:text>
<xsl:choose>
                   <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                   <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                   <xsl:when test="//pp/@pPos='both'">adpositionnels</xsl:when>
                   <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
                </xsl:choose>
<xsl:text> comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>presque dans le trou</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>carrément sur la table </langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>presque sur l’enemi</langData>
<xsl:text>.</xsl:text>
</p>
           <p contentType="ctPracticalIntro">
<xsl:text>Généralement, il y a certains mots de degré, des ordinaux et des adverbes de manière qui peuvent modifier tout un syntagme </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
              </xsl:choose>
<xsl:text>.</xsl:text>
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
<xsl:text></xsl:text>
<xsl:choose>
                   <xsl:when test="//pp/@modifiers='no'"> n’a pas de modificateurs qui se trouvent soit avant soit après le syntagme</xsl:when>
                   <xsl:when test="//pp/@modifiers='yes'"> admet que les catégories suivantes de mots indépendants modifient le syntagme <xsl:choose>
                      <xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
                      <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
                      <xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
                      <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
                   </xsl:choose> dans son ensemble.</xsl:when>
                </xsl:choose>
<xsl:if test="normalize-space(//pp/@modifiers)='no'">
<xsl:text>  Ni les mots de degré ni les ordinaux ni les adverbes ne peuvent modifier les syntagmes </xsl:text>
                    <xsl:choose>
                       <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                       <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                       <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                       <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
                    </xsl:choose>
                  <xsl:text> comme mots indépendants.</xsl:text> </xsl:if>
<xsl:text></xsl:text>
</p>
                
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes'">
<p>
<xsl:text>Les syntagmes </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
              </xsl:choose>
<xsl:text> peuvent être modifiés par des mots de degré qui se trouvent </xsl:text>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='yes' and normalize-space(//pp/ppDegreePosAfter/@checked)='no' and normalize-space(//pp/ppDegreePosBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='no' and normalize-space(//pp/ppDegreePosAfter/@checked)='yes' and normalize-space(//pp/ppDegreePosBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='no' and normalize-space(//pp/ppDegreePosAfter/@checked)='no' and normalize-space(//pp/ppDegreePosBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='yes' and normalize-space(//pp/ppDegreePosAfter/@checked)='yes' and normalize-space(//pp/ppDegreePosBoth/@checked)='no'">
<xsl:text>d’un côté ou l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='yes' and normalize-space(//pp/ppDegreePosAfter/@checked)='no' and normalize-space(//pp/ppDegreePosBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='no' and normalize-space(//pp/ppDegreePosAfter/@checked)='yes' and normalize-space(//pp/ppDegreePosBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='yes' and normalize-space(//pp/ppDegreePosAfter/@checked)='yes' and normalize-space(//pp/ppDegreePosBoth/@checked)='yes'">
<xsl:text>d’un côté ou l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosOther/@checked)='no'">
<xsl:text> syntagme dans son ensemble.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='no' and normalize-space(//pp/ppDegreePosAfter/@checked)='no' and normalize-space(//pp/ppDegreePosBoth/@checked)='no' and normalize-space(//pp/ppDegreePosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//pp/ppDegreePosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='yes' and normalize-space(//pp/ppDegreePosOther/@checked)='yes' or normalize-space(//pp/ppDegreePosAfter/@checked)='yes' and normalize-space(//pp/ppDegreePosOther/@checked)='yes' or normalize-space(//pp/ppDegreePosBoth/@checked)='yes' and normalize-space(//pp/ppDegreePosOther/@checked)='yes'">
<xsl:text> syntagme dans son enseemble et peuvent aussi se trouver ___</xsl:text>
<xsl:value-of select="//pp/ppDegreePosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Voici les mots de degré qui peuvent modifier l’ensemble du syntagme </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
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
</xsl:if>
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes'">
<example num="xPP.PPModifiers.12">
<table border="1">
                 <tr>
                    <th>Mots de degré</th>
                    <th>Glose</th>
                 </tr>
                 <tr>
<xsl:for-each select="//pp/degree/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/degree/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/degree/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
</xsl:if>     
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
              </xsl:choose>
<xsl:text> avec des mots de degré qui les modifient :</xsl:text>
</p>
</xsl:if>          
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes'">
<example num="xPP.PPModifiers.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/degreeWithPP" />
<xsl:with-param name="sExNumber">xPP.PPModifiers.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>            
           
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOrdinal/@checked)='yes'">
<p>
<xsl:text>Les syntagmes </xsl:text>
<xsl:choose>
                    <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                    <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                    <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                    <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
                 </xsl:choose>
<xsl:text> peuvent être modifies </xsl:text>
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text>par des nombres ordinaux ou des mots qui se trouvent</xsl:text>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='yes' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='no' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='no' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='yes' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='no' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='no' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='yes'">
<xsl:text>des deux côtés du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='yes' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='yes' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='no'">
<xsl:text>d’un côté ou l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='yes' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='no' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='yes'">
<xsl:text>avant ou des deux côtés du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='no' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='yes' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='yes'">
<xsl:text>après ou des deux côtés du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='yes' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='yes' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='yes'">
<xsl:text>d’un côté ou l’autre ou des deux côtés du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosOther/@checked)='no'">
<xsl:text> syntagme entier.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='no' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='no' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='no' and normalize-space(//pp/ppOrdinalPosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//pp/ppOrdinalPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='yes' and normalize-space(//pp/ppOrdinalPosOther/@checked)='yes' or normalize-space(//pp/ppOrdinalPosAfter/@checked)='yes' and normalize-space(//pp/ppOrdinalPosOther/@checked)='yes' or normalize-space(//pp/ppOrdinalPosBoth/@checked)='yes' and normalize-space(//pp/ppOrdinalPosOther/@checked)='yes'">
<xsl:text> syntagme entier et peut se trouver aussi ___</xsl:text>
<xsl:value-of select="//pp/ppOrdinalPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Les ordinaux qui peuvent modifier le syntagme </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
              </xsl:choose>
<xsl:text> dans son ensemble en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOrdinal/@checked)='yes'">
<example num="xPP.PPModifiers.20">
<table border="1">
                 <tr>
                    <th>Mots ordinaux</th>
                    <th>Glose</th>
                 </tr>
                 <tr>
<xsl:for-each select="//pp/ordinal/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/ordinal/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/ordinal/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
</xsl:if>     
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOrdinal/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
              </xsl:choose>
<xsl:text> avec des mots ordinaux qui les modifient :</xsl:text>
</p>
</xsl:if>          
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOrdinal/@checked)='yes'">
<example num="xPP.PPModifiers.24">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/ordinalWithPP" />
<xsl:with-param name="sExNumber">xPP.PPModifiers.24</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>            
           
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierManner/@checked)='yes'">
<p>
<xsl:text>Les syntagmes </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
              </xsl:choose>
<xsl:text> peuvent être modifies </xsl:text>
<xsl:if test="normalize-space(//pp/ppModifierDegree/@checked)='yes' or normalize-space(//pp/ppModifierOrdinal/@checked)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text>par des adverbes de manière qui se trouvent </xsl:text>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='yes' and normalize-space(//pp/ppMannerPosAfter/@checked)='no' and normalize-space(//pp/ppMannerPosBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='no' and normalize-space(//pp/ppMannerPosAfter/@checked)='yes' and normalize-space(//pp/ppMannerPosBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='no' and normalize-space(//pp/ppMannerPosAfter/@checked)='no' and normalize-space(//pp/ppMannerPosBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='yes' and normalize-space(//pp/ppMannerPosAfter/@checked)='yes' and normalize-space(//pp/ppMannerPosBoth/@checked)='no'">
<xsl:text>d’un côté ou l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='yes' and normalize-space(//pp/ppMannerPosAfter/@checked)='no' and normalize-space(//pp/ppMannerPosBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='no' and normalize-space(//pp/ppMannerPosAfter/@checked)='yes' and normalize-space(//pp/ppMannerPosBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='yes' and normalize-space(//pp/ppMannerPosAfter/@checked)='yes' and normalize-space(//pp/ppMannerPosBoth/@checked)='yes'">
<xsl:text>d’un côté ou l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosOther/@checked)='no'">
<xsl:text> syntagme entier.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='no' and normalize-space(//pp/ppMannerPosAfter/@checked)='no' and normalize-space(//pp/ppMannerPosBoth/@checked)='no' and normalize-space(//pp/ppMannerPosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//pp/ppMannerPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='yes' and normalize-space(//pp/ppMannerPosOther/@checked)='yes' or normalize-space(//pp/ppMannerPosAfter/@checked)='yes' and normalize-space(//pp/ppMannerPosOther/@checked)='yes' or normalize-space(//pp/ppMannerPosBoth/@checked)='yes' and normalize-space(//pp/ppMannerPosOther/@checked)='yes'">
<xsl:text> syntagme entier et peuvent aussi se trouver ___</xsl:text>
<xsl:value-of select="//pp/ppMannerPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Les adverbs de manière qui peuvent modifier le syntagme </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
              </xsl:choose>
<xsl:text> dans son ensemble en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont :</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierManner/@checked)='yes'">
<example num="xPP.PPModifiers.28">
<table border="1">
                 <tr>
                    <th>Adverbes de manière</th>
                    <th>Glose</th>
                 </tr>
                 <tr>
<xsl:for-each select="//pp/manner/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/manner/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/manner/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
</xsl:if>     
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierManner/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
              </xsl:choose>
<xsl:text> avec des adverbes de manière qui les modifient :</xsl:text>
</p>
</xsl:if>          
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierManner/@checked)='yes'">
<example num="xPP.PPModifiers.32">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/mannerWithPP" />
<xsl:with-param name="sExNumber">xPP.PPModifiers.32</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>            
           
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierLocative/@checked)='yes'">
<p>
<xsl:text>Les syntagmes </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
              </xsl:choose>
<xsl:text> peuvent être modifies </xsl:text>
<xsl:if test="normalize-space(//pp/ppModifierDegree/@checked)='yes' or normalize-space(//pp/ppModifierOrdinal/@checked)='yes' or normalize-space(//pp/ppModifierManner/@checked)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text>par des adverbes locatifs qui se trouvent </xsl:text>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='yes' and normalize-space(//pp/ppLocativePosAfter/@checked)='no' and normalize-space(//pp/ppLocativePosBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='no' and normalize-space(//pp/ppLocativePosAfter/@checked)='yes' and normalize-space(//pp/ppLocativePosBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='no' and normalize-space(//pp/ppLocativePosAfter/@checked)='no' and normalize-space(//pp/ppLocativePosBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='yes' and normalize-space(//pp/ppLocativePosAfter/@checked)='yes' and normalize-space(//pp/ppLocativePosBoth/@checked)='no'">
<xsl:text>d’un côté ou l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='yes' and normalize-space(//pp/ppLocativePosAfter/@checked)='no' and normalize-space(//pp/ppLocativePosBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='no' and normalize-space(//pp/ppLocativePosAfter/@checked)='yes' and normalize-space(//pp/ppLocativePosBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='yes' and normalize-space(//pp/ppLocativePosAfter/@checked)='yes' and normalize-space(//pp/ppLocativePosBoth/@checked)='yes'">
<xsl:text>d’un côté ou l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosOther/@checked)='no'">
<xsl:text> syntagme entier.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='no' and normalize-space(//pp/ppLocativePosAfter/@checked)='no' and normalize-space(//pp/ppLocativePosBoth/@checked)='no' and normalize-space(//pp/ppLocativePosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//pp/ppLocativePosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='yes' and normalize-space(//pp/ppLocativePosOther/@checked)='yes' or normalize-space(//pp/ppLocativePosAfter/@checked)='yes' and normalize-space(//pp/ppLocativePosOther/@checked)='yes' or normalize-space(//pp/ppLocativePosBoth/@checked)='yes' and normalize-space(//pp/ppLocativePosOther/@checked)='yes'">
<xsl:text> syntagme entier et peuvent aussi se trouver ___</xsl:text>
<xsl:value-of select="//pp/ppLocativePosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Voici les adverbes locatifs qui peuvent modifier le syntagme </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
              </xsl:choose>
<xsl:text> entier en </xsl:text>
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
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierLocative/@checked)='yes'">
<example num="xPP.PPModifiers.36">
<table border="1">
                 <tr>
                    <th>Adverbes locatifs</th>
                    <th>Glose</th>
                 </tr>
                 <tr>
<xsl:for-each select="//pp/locative/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/locative/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/locative/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
</xsl:if>     
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierLocative/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
              </xsl:choose>
<xsl:text> avec des adverbes locatifs qui les modifient :</xsl:text>
</p>
</xsl:if>          
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierLocative/@checked)='yes'">
<example num="xPP.PPModifiers.40">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/locativeWithPP" />
<xsl:with-param name="sExNumber">xPP.PPModifiers.40</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>            
           
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOther/@checked)='yes'">
<p>
<xsl:text>Les syntagmes </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
              </xsl:choose>
<xsl:text> peuvent </xsl:text>
<xsl:if test="normalize-space(//pp/ppModifierDegree/@checked)='yes' or normalize-space(//pp/ppModifierOrdinal/@checked)='yes' or normalize-space(//pp/ppModifierManner/@checked)='yes' or normalize-space(//pp/ppModifierLocative/@checked)='yes'">
<xsl:text>aussi </xsl:text>
</xsl:if>
<xsl:text> être modifiés par ___</xsl:text>
<xsl:value-of select="//pp/ppModifierOther" />
<xsl:text>.  Voici quelques exemples de ces autres éléments qui peuvent modifier le syntagme </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
              </xsl:choose>
<xsl:text> dans son ensemble en </xsl:text>
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
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOther/@checked)='yes'">
<example num="xPP.PPModifiers.44">
<table border="1">
                 <tr>
                    <th>Modificateurs</th>
                    <th>Glose</th>
                 </tr>
                 <tr>
<xsl:for-each select="//pp/otherMod/form[1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//pp/otherMod/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//pp/otherMod/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
</xsl:if>     
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOther/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de syntagmes </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">prépositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">prépositionnels ou postpositionnels</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adpositionnels</xsl:when>
              </xsl:choose>
<xsl:text> avec ces autres éléments qui les modifient :</xsl:text>
</p>
</xsl:if>          
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOther/@checked)='yes'">
<example num="xPP.PPModifiers.48">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/otherModWithPP" />
<xsl:with-param name="sExNumber">xPP.PPModifiers.48</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>            
           
        </section2>
         <section2 id="sPPComps">
            <secTitle>Compléments autres que les syntagmes nominaux</secTitle>
                <p contentType="ctComparativeIntro">
<xsl:text>Certaines </xsl:text>
<xsl:choose>
                        <xsl:when test="//pp/@pPos='before'">prépositions</xsl:when>
                        <xsl:when test="//pp/@pPos='after'">postpositions</xsl:when>
                        <xsl:when test="//pp/@pPos='both'">prépositions or postpositions</xsl:when>
                        <xsl:when test="//pp/@pPos='unknown'">adpositions</xsl:when>                  
                    </xsl:choose>
<xsl:text> peuvent fonctionner seules, sans complément à cause d’un mouvement de particule, comme dans les exemples suivants en anglais </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Come [right in]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Entre directement »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John turned the light [on/off]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « Jean a allumé/éteint la lumière »</xsl:text>
</gloss>
<xsl:text>. (Aucun de ces exemples n’est correct en français.) De même, certaines langues admettent que des </xsl:text>
<xsl:choose>
                        <xsl:when test="//pp/@pPos='before'">prépositions</xsl:when>
                        <xsl:when test="//pp/@pPos='after'">postpositions</xsl:when>
                        <xsl:when test="//pp/@pPos='both'">prépositions or postpositions</xsl:when>
                        <xsl:when test="//pp/@pPos='unknown'">adpositions</xsl:when>                  
                    </xsl:choose>
<xsl:text> fonctionnent seules quand leur complément fait partie d’une question, comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Who(m) did you give the book [to _ ]?</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « A qui avez-vous donné le livre ? (littéralement, Qui avez-vous donné le livre [à] ?) »</xsl:text>
</gloss>
<xsl:text> en anglais.   (Aucun de ces exemples n’est correct en français.)</xsl:text>
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
<xsl:text></xsl:text>
<xsl:choose>
                       <xsl:when test="//pp/@alone='no'"> n’admet pas que les </xsl:when>
                       <xsl:when test="//pp/@alone='yes'"> admet que certaines des </xsl:when>
                    </xsl:choose>
<xsl:text>ses </xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='before'">
                        <xsl:text>prépositions</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='after'">
                        <xsl:text>postpositions</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='unknown'">
                        <xsl:text>adpositions</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='both'">
                        <xsl:text>prépositions ou postpositions</xsl:text>
                    </xsl:if>
<xsl:text> fonctionnent seules sans complément dû au mouvement de particule. </xsl:text>
<xsl:if test="normalize-space(//pp/@alone)='yes'">
                       <xsl:text>Voici quelques exemples dans des phrases complètes :</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
</p>
                <xsl:if test="normalize-space(//pp/@alone)='yes'">
<example num="xPP.PPComps.8">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/aloneExample" />
<xsl:with-param name="sExNumber">xPP.PPComps.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
 
            <p contentType="ctComparativeIntro">
<xsl:text>La plupart des langues admettent des adverbes locatifs comme compléments de </xsl:text>
<xsl:choose>
                        <xsl:when test="//pp/@pPos='before'">prépositions</xsl:when>
                        <xsl:when test="//pp/@pPos='after'">postpositions</xsl:when>
                        <xsl:when test="//pp/@pPos='both'">prépositions ou postpositions</xsl:when>
                        <xsl:when test="//pp/@pPos='unknown'">adpositions</xsl:when>                  
                    </xsl:choose>
<xsl:text>, ainsi par exemple </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>par ici</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>par là</langData>
<xsl:text>.</xsl:text>
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
<xsl:text></xsl:text>
<xsl:choose>
                       <xsl:when test="//pp/@locative='no'"> n’admet </xsl:when>
                       <xsl:when test="//pp/@locative='yes'"> admet </xsl:when>
                    </xsl:choose>
<xsl:text> les adverbes locatifs comme compléments de </xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='before'">
                        <xsl:text>prépositions.</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='after'">
                        <xsl:text>postpositions.</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='unknown'">
                        <xsl:text>adpositions.</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='both'">
                        <xsl:text>prépositions et postpositions.</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@locative)='yes'">
                       <xsl:text>  Voici quelques exemples avec des complements adverbiaux locatifs :</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
</p>
                <xsl:if test="normalize-space(//pp/@locative)='yes'">
<example num="xPP.PPComps.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/locExample" />
<xsl:with-param name="sExNumber">xPP.PPComps.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>

            <p contentType="ctComparativeIntro">
<xsl:text>Les </xsl:text>
<xsl:choose>
                        <xsl:when test="//pp/@pPos='before'">prépositions</xsl:when>
                        <xsl:when test="//pp/@pPos='after'">postpositions</xsl:when>
                        <xsl:when test="//pp/@pPos='both'">prépositions et postpositions</xsl:when>
                        <xsl:when test="//pp/@pPos='unknown'">adpositions</xsl:when>                  
                    </xsl:choose>
<xsl:text> locatifs sont un groupe spécial dans ce sens qu’elles peuvent prendre un autre syntagme </xsl:text>
<xsl:choose>
                       <xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
                       <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
                       <xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
                       <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
                    </xsl:choose>
<xsl:text> comme complément.  Des exemples en anglais de ce type sont : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>up [to the top]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (jusqu’en haut)</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>around [behind the shed]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (à l'arrière de la remise)</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>over [by the table]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  (là-bas près de la table)</xsl:text>
</gloss>
<xsl:text>.  Ceci n’est pas permis en français.</xsl:text>
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
<xsl:text></xsl:text>
<xsl:choose>
                       <xsl:when test="//pp/@ppComp='no'"> n’a pas de </xsl:when>
                        <xsl:when test="//pp/@ppComp='yes'"> a des </xsl:when>
                    </xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='before'">
                        <xsl:text>prépositions</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='after'">
                        <xsl:text>postpositions</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='unknown'">
                        <xsl:text>adpositions</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='both'">
                        <xsl:text>prépositions et postpositions</xsl:text>
                    </xsl:if>
<xsl:text> locatives qui admettent un syntagme </xsl:text>
<xsl:choose>
                       <xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
                       <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
                       <xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
                       <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
                    </xsl:choose>
<xsl:text> locatifs comme complément.  </xsl:text>
<xsl:if test="normalize-space(//pp/@ppComp)='yes'">
                       <xsl:text>Voici quelques exemples :</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
</p>
                <xsl:if test="normalize-space(//pp/@ppComp)='yes'">
<example num="xPP.PPComps.20">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/compPPExample" />
<xsl:with-param name="sExNumber">xPP.PPComps.20</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>

            <p contentType="ctComparativeIntro">
<xsl:text>Les temporels tels que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>avant</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>après</langData>
<xsl:text> sont des </xsl:text>
<xsl:choose>
                      <xsl:when test="//pp/@pPos='before'">prépositions</xsl:when>
                      <xsl:when test="//pp/@pPos='after'">postpositions</xsl:when>
                      <xsl:when test="//pp/@pPos='both'">prépositions ou postpositions</xsl:when>
                      <xsl:when test="//pp/@pPos='unknown'">adpositions</xsl:when>                  
                   </xsl:choose>
<xsl:text> quand ils prennent un syntagme nominal comme complément comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>avant vous</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>après cela</langData>
<xsl:text>.  En anglais, ils peuvent aussi être suivi d’un complément gérondif comme dans </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>before [signing the contract]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « avant de [signer le contrat] »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>after [buying our new house]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « après [avoir acheté notre nouvelle maison] »</xsl:text>
</gloss>
<xsl:text> puisqu’en anglais les gérondifs sont un type spécial de syntagme nominal.  En français il faudrait un infinitif au lieu d’un gérondif dans le syntagme équivalent.</xsl:text>
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
<xsl:text></xsl:text>
<xsl:choose>
                       <xsl:when test="//pp/@tempComp='no'"> n'a pas de </xsl:when>
                       <xsl:when test="//pp/@tempComp='yes'"> a des </xsl:when>
                    </xsl:choose>
<xsl:if test="normalize-space(//pp/@pPos)='before'">
                        <xsl:text>prépositions</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='after'">
                        <xsl:text>postpositions</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='unknown'">
                        <xsl:text>adpositions</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='both'">
                        <xsl:text>prépositions ou postpositions</xsl:text>
                    </xsl:if>
<xsl:text> temporelles qui admettent un syntagme nominal ou un gérundif comme complément.  </xsl:text>
<xsl:if test="normalize-space(//pp/@tempComp)='yes'">
                       <xsl:text>Voici quelques exemples dans des phrases completes :</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
</p>
                <xsl:if test="normalize-space(//pp/@tempComp)='yes'">
<example num="xPP.PPComps.26">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//pp/tempExample" />
<xsl:with-param name="sExNumber">xPP.PPComps.26</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
            <xsl:if test="normalize-space(//pp/@tempComp)='yes'">
<p contentType="ctPracticalIntro">
<xsl:text>Ces mêmes </xsl:text>
<xsl:choose>
                  <xsl:when test="//pp/@pPos='before'">prépositions</xsl:when>
                  <xsl:when test="//pp/@pPos='after'">postpositions</xsl:when>
                  <xsl:when test="//pp/@pPos='both'">prépositions ou postpositions</xsl:when>
                  <xsl:when test="//pp/@pPos='unknown'">adpositions</xsl:when>                  
               </xsl:choose>
<xsl:text> temporelles peuvent aussi admettre des phrases comme compléments.  Dans cette fonction, ce sont des adverbes temporels et la phrase entière est une proposition adverbiale qui modifie habituellement la proposition principale.  Ce type d’exemples sera traité dans la section </xsl:text>
<sectionRef sec="sAdvCl" />
<xsl:text>.</xsl:text>
</p>
</xsl:if>
            <xsl:if test="normalize-space(//pp/@tempComp)='yes'">
<p contentType="ctComparativeIntro">
<xsl:text>Ces mêmes </xsl:text>
<xsl:choose>
                  <xsl:when test="//pp/@pPos='before'">prépositions</xsl:when>
                  <xsl:when test="//pp/@pPos='after'">postpositions</xsl:when>
                  <xsl:when test="//pp/@pPos='both'">prépositions ou postpositions</xsl:when>
                  <xsl:when test="//pp/@pPos='unknown'">adpositions</xsl:when>                  
               </xsl:choose>
<xsl:text> temporelles peuvent aussi admettre des phrases comme compléments, comme par exemple en anglais </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>before [the rain stops]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « avant que [la pluie s’arrête] »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>after [John came home]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « après que [Jean soit rentré] »</xsl:text>
</gloss>
<xsl:text>.  (En français l’adverbe est suivi du complémentiseur « que » et une proposition au subjonctif.)  Dans cet emploi, ce sont des adverbes temporels et non des </xsl:text>
<xsl:choose>
                  <xsl:when test="//pp/@pPos='before'">prépositions</xsl:when>
                  <xsl:when test="//pp/@pPos='after'">postpositions</xsl:when>
                  <xsl:when test="//pp/@pPos='both'">prépositions ou postpositions</xsl:when>
                  <xsl:when test="//pp/@pPos='unknown'">adpositions</xsl:when>                  
               </xsl:choose>
<xsl:text> et le syntagme entier est une proposition adverbiale qui modifie la proposition principale. Ce type d’exemples sera traité dans la section </xsl:text>
<sectionRef sec="sAdvCl" />
<xsl:text>.</xsl:text>
</p>
</xsl:if>
         </section2>
    </section1>
   
      
      
      
      
      
   
   
   
        
    
    
        
    
    
        
    
    
        
    
    
        
    
    
        
    
    
        
    
   
      
      
      
   
   
        
    
    
        
    


   

   
      
   
   
      

   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
   
   
   
      
   
   
      
   
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   

</xsl:template>
</xsl:stylesheet>
