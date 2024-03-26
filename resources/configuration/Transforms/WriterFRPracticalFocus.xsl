<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="focus">
   <section1 id="sFocus">
      <secTitle>Constructions de focus et de topique</secTitle>
	  <p contentType="ctPracticalIntro">
<xsl:text>
	     Cette section traite deux types de constructions qui attirent l’attention sur un élément particulier.  Nous considérerons les topiques en premier lieu, puisqu’ils se trouvent en dehors des constructions de focus et ont une portée plus étendue. Il est possible qu'une seule phrase ait à la fois un syntagme de topique et un syntagme de focus.</xsl:text>
</p>
      <p contentType="ctComparativeIntro">
<xsl:text>
         Cette section traite deux types de constructions qui attirent l’attention sur un élément particulier.  Nous considérerons les topiques en premier lieu, puisqu’ils se trouvent en dehors des constructions de focus et ont une portée plus étendue.  L’exemple </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Quant à Guillaume, c'est au foot qu'il joue ____le mieux</langData>
<xsl:text> montre qu’une seule phrase peut avoir à la fois un syntagme de topique et un syntagme de focus.  Dans ce cas le topique </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Guillaume</langData>
<xsl:text> est introduit par le marqueur de topique </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>quant à</langData>
<xsl:text>, puis le syntagme de focus </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>foot</langData>
<xsl:text> qui a été déplacée de sa place normale dans la phrase, la suit.</xsl:text>
</p>
   <section2 id="sFocusTopics">
      <secTitle>Topiques et Marqueurs de topique</secTitle>
		 <p contentType="ctPracticalIntro">
<xsl:text>
		    Selon la définition donnée ici, les constructions de topique sont formées d’un syntagme de topique suivi d’une phrase complète ou d’une question, généralement séparés par la ponctuation.  Certain marqueurs peuvent aussi être utilisés pour indiquer les topiques. </xsl:text>
</p>
      <p contentType="ctComparativeIntro">
<xsl:text>
         Selon la définition donnée ici, les constructions de topique sont formées d’un syntagme de topique suivi d’une phrase complète ou d’une questiongénéralement séparés par la ponctuation.  Certain marqueurs peuvent aussi être utilisés pour indiquer les topiques,  comme cela est montré dans les exemples suivants en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Quant à Jean, je crois qu’il fera un bon médecin</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Parlant de Jeanne, où est-elle?</langData>
</p>
      
      <xsl:if test="normalize-space(//focus/@topic)='no'">
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
<xsl:text> les syntagmes de topique ne sont pas admis. </xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//focus/@topic)='yes'">
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
<xsl:text> il y a des syntagmes de topique qui sont placés </xsl:text>
<xsl:choose>
			   <xsl:when test="//focus/@topicPos='before'">avant</xsl:when>
               <xsl:when test="//focus/@topicPos='after'">après</xsl:when>
			   <xsl:when test="//focus/@topicPos='unknown'">_______</xsl:when>
            </xsl:choose>
<xsl:text> la phrase principale.   Voici quelques exemples :</xsl:text>
</p>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@topic)='yes'">
<example num="xFocus.FocusTopics.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//focus/topicExample" />
<xsl:with-param name="sExNumber">xFocus.FocusTopics.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
      <xsl:if test="normalize-space(//focus/@topic)='yes'">
<p>
<xsl:text>Comme les exemples le montrent le syntagme de topique </xsl:text>
<xsl:choose>
			   <xsl:when test="//focus/@topicMarker='no'">n’est pas marqué par un marqueur de topique. Seule la position dans la phrase et la ponctuation, éventuellement, distinguent le syntagme de topique.</xsl:when>
			   <xsl:when test="//focus/@topicMarker='yesWord'">est marqué par certains mots ou certaines syntagmes.</xsl:when>
			   <xsl:when test="//focus/@topicMarker='yesClitic'">est marqué par un ou plusieurs clitiques qui se rattachent au syntagme de topique.  Voici ces clitiques : </xsl:when>
			   <xsl:when test="//focus/@topicMarker='yesAffix'">marqués par un ou plusieurs affixes qui se rattachent au nom noyau dans le syntagme de topique. Voici ces affixes : </xsl:when>
			</xsl:choose>
<xsl:if test="normalize-space(//focus/@topic)='yes' and normalize-space(//focus/@topicMarker)='yesWord'">
<xsl:text>Les marqueurs de topique se trouvent </xsl:text>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerAfter/@checked)='no' and normalize-space(//focus/topicMarkerBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='no' and normalize-space(//focus/topicMarkerAfter/@checked)='yes' and normalize-space(//focus/topicMarkerBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='no' and normalize-space(//focus/topicMarkerAfter/@checked)='no' and normalize-space(//focus/topicMarkerBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerAfter/@checked)='yes' and normalize-space(//focus/topicMarkerBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerAfter/@checked)='no' and normalize-space(//focus/topicMarkerBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='no' and normalize-space(//focus/topicMarkerAfter/@checked)='yes' and normalize-space(//focus/topicMarkerBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerAfter/@checked)='yes' and normalize-space(//focus/topicMarkerBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//focus/topicMarkerOther/@checked)='no'">
<xsl:text> syntagme de topique.  </xsl:text>
			   </xsl:if>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='no' and normalize-space(//focus/topicMarkerAfter/@checked)='no' and normalize-space(//focus/topicMarkerBoth/@checked)='no' and normalize-space(//focus/topicMarkerOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//focus/topicMarkerOther" />
<xsl:text>.  </xsl:text>
			   </xsl:if>
            <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerOther/@checked)='yes' or normalize-space(//focus/topicMarkerAfter/@checked)='yes' and normalize-space(//focus/topicMarkerOther/@checked)='yes' or normalize-space(//focus/topicMarkerBoth/@checked)='yes' and normalize-space(//focus/topicMarkerOther/@checked)='yes'">
<xsl:text> syntagme de topique et peut aussi se trouver ___</xsl:text>
<xsl:value-of select="//focus/topicMarkerOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
            <xsl:text> Un marqueur de topique est </xsl:text>
<xsl:choose>
               <xsl:when test="//focus/@topicMarkerRequired='no'">facultatif</xsl:when>
               <xsl:when test="//focus/@topicMarkerRequired='yes'">obligatoire</xsl:when>
</xsl:choose>
            <xsl:text> chaque fois qu’il y a un syntagme de topique.  Voici les marqueurs de topiques :</xsl:text>
			</xsl:if>
</p>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@topic)='yes' and normalize-space(//focus/@topicMarker)='yesWord'">
<example num="xFocus.FocusTopics.16">
<table border="1">
			   <tr>
			      <th>Marqueurs de topique</th>
				  <th>Glose</th>
			   </tr>
			   <tr>
<xsl:for-each select="//focus/topicMarkerExample/form[1]">
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
<xsl:for-each select="//focus/topicMarkerExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//focus/topicMarkerExample/form[position() &gt; 1]">
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
      <xsl:if test="normalize-space(//focus/@topic)='yes' and normalize-space(//focus/@topicMarker)='yesClitic'">
<example num="xFocus.FocusTopics.18">
<table border="1">
            <tr>
               <th>Clitiques marqueurs de topique</th>
               <th>Glose</th>
            </tr>
            <tr>
<xsl:for-each select="//focus/topicMarkerCliticExample/form[1]">
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
<xsl:for-each select="//focus/topicMarkerCliticExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//focus/topicMarkerCliticExample/form[position() &gt; 1]">
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
      <xsl:if test="normalize-space(//focus/@topic)='yes' and normalize-space(//focus/@topicMarker)='yesAffix'">
<example num="xFocus.FocusTopics.20">
<table border="1">
            <tr>
               <th>Affixes marqueurs de topique</th>
               <th>Glose</th>
            </tr>
            <tr>
<xsl:for-each select="//focus/topicMarkerAffixExample/form[1]">
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
<xsl:for-each select="//focus/topicMarkerAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//focus/topicMarkerAffixExample/form[position() &gt; 1]">
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
   </section2>

	  <section2 id="sFocusFocus">
	     <secTitle>Syntagmes de focus et Marqueurs de focus</secTitle>
	     <p contentType="ctPracticalIntro">
<xsl:text>Les constructions de focus ont elles aussi un syntagme nominal qui se trouve soit en initiale soit en finale et peut être séparé du reste de la phrase par la ponctuation.  Cependant, par contraste avec les topiques, le syntagme de focus est déplacé de sa position normale dans la phrase, laissant un vide.  Certains marqueurs peuvent être utilisés pour marquer le syntagme focalisé.</xsl:text>
</p>
	     <p contentType="ctComparativeIntro">
<xsl:text>Les constructions de focus ont elles aussi un syntagme nominal qui se trouve soit en initiale soit en finale et peut être séparé du reste de la phrase par la ponctuation.  Cependant, par contraste avec les topiques, le syntagme de focus est déplacé de sa position normale dans la phrase, laissant un vide.  Certains marqueurs tels que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>seulement</langData>
<xsl:text> en français, peuvent être utilisés pour marquer le syntagme de focus. Les constructions de focus ne sont pas utilisées fréquentes dans les langues SVO, puisque le sujet est habituellement en focus et est déjà en premier dans l’ordre normal. Les langues avec d’autres ordres de mots telles que les langues VSO peuvent faire un usage extensif de constructions de focus. Voici quelques exemples en français de constructions de focus comprennent : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Les filles, j’aime __</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le football, Guillaume le joue __ le mieux</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Seulement ce garçon-là, Gérald l’a frappé __ </langData>
<xsl:text>.</xsl:text>
</p>
	     
	     <xsl:if test="normalize-space(//focus/@focus)='no'">
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
<xsl:text> un syntagme de focus ne puet pas être déplacé avant ou après le reste de la phrase au lieu de rester dans la position normale. </xsl:text>
</p>
</xsl:if>
	     <xsl:if test="normalize-space(//focus/@focus)='yes'">
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
<xsl:text> il y a des syntagmes de focus qui se trouvent </xsl:text>
<xsl:choose>
			   <xsl:when test="//focus/@focusPos='before'">avant</xsl:when>
               <xsl:when test="//focus/@focusPos='after'">après</xsl:when>
			   <xsl:when test="//focus/@focusPos='unknown'">_______</xsl:when>
            </xsl:choose>
<xsl:text> le reste de la phrase.   En voici quelques exemples :</xsl:text>
</p>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@focus)='yes'">
<example num="xFocus.FocusFocus.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//focus/focusExample" />
<xsl:with-param name="sExNumber">xFocus.FocusFocus.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
	     <xsl:if test="normalize-space(//focus/@focus)='yes'">
<p>
<xsl:text>Comme les exemples le montrent, le syntagme de focus en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
			   <xsl:when test="//focus/@focusMarker='no'">n’est pas marqué par un marqueur de focus. Seule la position dans la phrase et la ponctuation, éventuellement, distinguent le syntagme de focus.</xsl:when>
			   <xsl:when test="//focus/@focusMarker='yesWord'">est marqué par certains mots ou syntagmes. </xsl:when>
			   <xsl:when test="//focus/@focusMarker='yesClitic'">est marqué par un ou plusieurs clitiques qui se rattachent au syntagme de focus. Voici les clitiques :</xsl:when>
			   <xsl:when test="//focus/@focusMarker='yesAffix'">est marqué par un ou plusieurs affixes qui se rattachent au nom noyau dans le syntagme de focus.  Voici les affixes :</xsl:when>
			</xsl:choose>
<xsl:if test="normalize-space(//focus/@focus)='yes' and normalize-space(//focus/@focusMarker)='yesWord'">
<xsl:text>Les marqueurs de focus se trouvent </xsl:text>
	            <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerAfter/@checked)='no' and normalize-space(//focus/topicMarkerBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
	           <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='no' and normalize-space(//focus/focusMarkerAfter/@checked)='yes' and normalize-space(//focus/focusMarkerBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
	           <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='no' and normalize-space(//focus/focusMarkerAfter/@checked)='no' and normalize-space(//focus/focusMarkerBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
	           <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='yes' and normalize-space(//focus/focusMarkerAfter/@checked)='yes' and normalize-space(//focus/focusMarkerBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
	           <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='yes' and normalize-space(//focus/focusMarkerAfter/@checked)='no' and normalize-space(//focus/focusMarkerBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
	           <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='no' and normalize-space(//focus/focusMarkerAfter/@checked)='yes' and normalize-space(//focus/focusMarkerBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
	           <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='yes' and normalize-space(//focus/focusMarkerAfter/@checked)='yes' and normalize-space(//focus/focusMarkerBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
	           <xsl:if test="normalize-space(//focus/focusMarkerOther/@checked)='no'">
<xsl:text> syntagme de focus.  </xsl:text>
			   </xsl:if>
			   <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='no' and normalize-space(//focus/focusMarkerAfter/@checked)='no' and normalize-space(//focus/focusMarkerBoth/@checked)='no' and normalize-space(//focus/focusMarkerOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//focus/focusMarkerOther" />
<xsl:text>.  </xsl:text>
			   </xsl:if>
	           <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='yes' and normalize-space(//focus/focusMarkerOther/@checked)='yes' or normalize-space(//focus/focusMarkerAfter/@checked)='yes' and normalize-space(//focus/focusMarkerOther/@checked)='yes' or normalize-space(//focus/focusMarkerBoth/@checked)='yes' and normalize-space(//focus/focusMarkerOther/@checked)='yes'">
<xsl:text> syntagme de focus et peut aussi se trouver ___</xsl:text>
<xsl:value-of select="//focus/focusMarkerOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
	           <xsl:text> Un marqueur de focus est </xsl:text>
<xsl:choose>
	              <xsl:when test="//focus/@focusMarkerRequired='no'">facultatif</xsl:when>
	              <xsl:when test="//focus/@focusMarkerRequired='yes'">exigé</xsl:when>
</xsl:choose>
	           <xsl:text> chaque fois qu’il y a un syntagme de focus. Voici les marqueurs de focus :</xsl:text>
			</xsl:if>
</p>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@focus)='yes' and normalize-space(//focus/@focusMarker)='yesWord'">
<example num="xFocus.FocusFocus.16">
<table border="1">
			   <tr>
			      <th>Marqueurs de focus</th>
				  <th>Glose</th>
			   </tr>
			   <tr>
<xsl:for-each select="//focus/focusMarkerExample/form[1]">
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
<xsl:for-each select="//focus/focusMarkerExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//focus/focusMarkerExample/form[position() &gt; 1]">
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
	     <xsl:if test="normalize-space(//focus/@focus)='yes' and normalize-space(//focus/@focusMarker)='yesClitic'">
<example num="xFocus.FocusFocus.18">
<table border="1">
	           <tr>
	              <th>Clitiques marqueurs de focus</th>
	              <th>Glose</th>
	           </tr>
	           <tr>
<xsl:for-each select="//focus/focusMarkerCliticExample/form[1]">
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
<xsl:for-each select="//focus/focusMarkerCliticExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//focus/focusMarkerCliticExample/form[position() &gt; 1]">
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
	     <xsl:if test="normalize-space(//focus/@focus)='yes' and normalize-space(//focus/@focusMarker)='yesAffix'">
<example num="xFocus.FocusFocus.20">
<table border="1">
	           <tr>
	              <th>Affixes marqueurs de focus</th>
	              <th>Glose</th>
	           </tr>
	           <tr>
<xsl:for-each select="//focus/focusMarkerAffixExample/form[1]">
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
<xsl:for-each select="//focus/focusMarkerAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//focus/focusMarkerAffixExample/form[position() &gt; 1]">
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
	     

	  </section2>

   </section1>
   
	  
   
   
	  
   
   
	  
	  
	  
   
   
      
      
      
   
   
      
      
      
   
   
	  
	  
	  
   

   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
   
	  
   
   
	  
   
   
	  
	  
	  
   
   
      
      
      
   
   
      
      
      
   
   
	  
	  
	  
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   

</xsl:template>
</xsl:stylesheet>
