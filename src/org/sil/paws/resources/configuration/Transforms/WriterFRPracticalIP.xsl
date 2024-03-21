<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="ip">
	<section1 id="sIP">
		<secTitle>Phrases simples</secTitle>
		<p>
<xsl:text>Cette section traite les constructions copulatives, intransitives, transitives, ditransitives, impératives, subjonctives, conditionnelles, passives et causatives ; chacune sera traitée en fonction de l’ordre de base des constituants (c’est à dire sans changement causé par la focalisation, la topicalisation  au focus, thème, l’interrogation ou la négation).  Comme il a été noté dans la section </xsl:text>
<sectionRef sec="sIntro" />
<xsl:text>,  le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> est typologiquement un langue </xsl:text>
<xsl:choose>
				<xsl:when test="//typology/@wordOrder='SVO'">SVO, l’ordre de base des termes est donc : le sujet, puis les éléments auxiliaires, puis le syntagme verbal qui comprend le verbe en position initiale suivi par les compléments–le cas échéant. </xsl:when>
				<xsl:when test="//typology/@wordOrder='SOV'">SOV, l’ordre de base des termes est donc : le sujet, suivi par le syntagme verbal qui comprend le verbe en position finale et des compléments qui le précèdent, puis les éléments auxiliaires.</xsl:when>
				<xsl:when test="//typology/@wordOrder='VSO'">VSO, l’ordre de base des termes est donc : le verbe en position initiale, puis le sujet, puis les compléments.</xsl:when>
				<xsl:when test="//typology/@wordOrder='VOS'">VOS, l’ordre de base des termes est donc : le syntagme verbal qui comprend le verbe en position initiale suivi par les compléments, puis les éléments auxiliaires, puis le sujet.</xsl:when>
				<xsl:when test="//typology/@wordOrder='OVS'">OVS, l’ordre de base des termes est donc : le syntagme verbal qui comprend le verbe en position finale précédé par les compléments, puis les éléments auxiliaires, puis le sujet.</xsl:when>
				<xsl:when test="//typology/@wordOrder='OSV'">OSV, l’ordre de base des termes est le suivant : d’abord les compléments verbaux, puis le sujet, puis le verbe en position finale.</xsl:when>
			</xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' or normalize-space(//typology/@wordOrder)='OSV'">
				<xsl:text>  S’il y a des auxiliaires, l’ordre des termes subira les changements ; voir la section ci-dessus </xsl:text>
				<sectionRef sec="sIPAux" />
				<xsl:text>.</xsl:text>
			</xsl:if>
<xsl:text></xsl:text>
</p>
		<p>
<xsl:text>Les types de phrase seront traités l’un après l’autre.</xsl:text>
</p>

	   <section2 id="sIPCop">
	   	<secTitle>Constructions à copule</secTitle>

	   	<p>
<xsl:text>Les constructions copulatives comprennent celles qui ont un copule verbale, ou un verbe de perception, ainsi que les comparatifs et les existentiels.</xsl:text>
</p>
		  <p contentType="ctComparativeIntro">
<xsl:text>Dans les varies constructions copulatives un adjectif, ou un syntagme adpositionnel ou nominal peut sirve la copule verbale. Dans certaines langues la présence d’un copule verbale ou d’un auxiliaire n’est pas obligatoire. Voici des exemples en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>la fille est belle</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Suzanne est malade</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Ma soeur est à l’hôpital</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il est le chef</langData>
<xsl:text>.</xsl:text>
</p>
	      <p>
<xsl:text>Voici quelques exemples de constructions copulatives en </xsl:text>
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
	      <example num="xIP.IPCop.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/copularExample" />
<xsl:with-param name="sExNumber">xIP.IPCop.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	      <xsl:if test="normalize-space(//ip/@copular)='yes' or normalize-space(//ip/@copular)='optional'">
<p>
<xsl:text>Comme le montrent les exemples, </xsl:text>
<xsl:choose>
			 	<xsl:when test="//ip/@copular='yes'">une copule verbale est obligatoire </xsl:when>
			 	<xsl:when test="//ip/@copular='optional'">une copule verbale est facultative </xsl:when>
			 </xsl:choose>
<xsl:text>dans des constructions copulatives en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>. Voice copules verbales : </xsl:text>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//ip/@copular)='yes' or normalize-space(//ip/@copular)='optional'">
<example num="xIP.IPCop.14">
<table border="1">
	            <tr>
	            	<th>Copules verbales</th>
	               <th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/copularVerb/form[1]">
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
<xsl:for-each select="//ip/copularVerb/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/copularVerb/form[position() &gt; 1]">
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
	      <xsl:if test="normalize-space(//ip/@copular)='no'">
<p>
<xsl:text>Comme le montrent les exemples, il n’y a pas de verbe copulatif dans les constructions copulatives en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  </xsl:text>
<xsl:choose>
	         	<xsl:when test="//ip/@copularAffix='no'">Il n’y a pas d’affixe copulatif sur le prédicat nominal ni sur le prédicat adjectival.</xsl:when>
	         	<xsl:when test="//ip/@copularAffix='yesPrefix'">Par contre, il y a un préfixe copulatif sur le prédicat nominal ou sur le prédicat adjectival. Voici ce préfixe :</xsl:when>
	         	<xsl:when test="//ip/@copularAffix='yesSuffix'">Par contre, il y a un suffixe copulatif sur le prédicat nominal ou sur le prédicat adjectival. Voici ce suffixe :</xsl:when>
	         	<xsl:when test="//ip/@copularAffix='yesEither'">Par contre, soit un préfixe copulatif ou un suffixe copulatif sur le prédicat nominal ou sur le prédicat adjectival. Voice ces affixes :</xsl:when>
	         </xsl:choose>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//ip/@copular)='no' and normalize-space(//ip/@copularAffix)='yesPrefix'">
<example num="xIP.IPCop.18">
<table border="1">
	            <tr>
	            	<th>Préfixe copulatif</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/copularAffix/form[1]">
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
<xsl:for-each select="//ip/copularAffix/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/copularAffix/form[position() &gt; 1]">
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
	      <xsl:if test="normalize-space(//ip/@copular)='no' and normalize-space(//ip/@copularAffix)='yesSuffix'">
<example num="xIP.IPCop.20">
<table border="1">
	            <tr>
	            	<th>Suffixe copulatif</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/copularAffix/form[1]">
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
<xsl:for-each select="//ip/copularAffix/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/copularAffix/form[position() &gt; 1]">
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
	      <xsl:if test="normalize-space(//ip/@copular)='no' and normalize-space(//ip/@copularAffix)='yesEither'">
<example num="xIP.IPCop.22">
<table border="1">
	            <tr>
	            	<th>Affixes copulatifs</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/copularAffix/form[1]">
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
<xsl:for-each select="//ip/copularAffix/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/copularAffix/form[position() &gt; 1]">
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
	      
	      <xsl:if test="normalize-space(//ip/@copular)='optional'">
<p>
<xsl:text>  Il </xsl:text>
<xsl:choose>
					<xsl:when test="//ip/@copularAffix='no'">n’y a pas d’affixe copulatif sur le nominal prédicatif ni sur l’adjectif prédicatif qui serait employé quand la copule verbale est omise.</xsl:when>
					<xsl:when test="//ip/@copularAffix='yesPrefix'">y a aussi un préfixe copulatif sur le nominal prédicatif ou sur l’adjectif prédicatif qui est employé quand il n’y a pas de copule verbale. Voici ce préfixe :</xsl:when>
					<xsl:when test="//ip/@copularAffix='yesSuffix'">y a aussi un suffixe copulatif sur le nominal prédicatif ou sur l’adjectif prédicatif qui est employé quand il n’y a pas de copule verbale. Voici ce suffixe :</xsl:when>
					<xsl:when test="//ip/@copularAffix='yesEither'">y a soit un préfixe copulatif ou un suffixe copulatif sur le nominal prédicatif ou sur l’adjectif prédicatif qui est employé quand la copule verbale est omise. Voici ces affixes :</xsl:when>
				</xsl:choose>
<xsl:text></xsl:text>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//ip/@copular)='optional' and normalize-space(//ip/@copularAffix)='yesPrefix'">
<example num="xIP.IPCop.26">
<table border="1">
	            <tr>
	            	<th>Préfixe copulatif</th>
	            	<th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/copularAffix/form[1]">
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
<xsl:for-each select="//ip/copularAffix/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/copularAffix/form[position() &gt; 1]">
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
	      <xsl:if test="normalize-space(//ip/@copular)='optional' and normalize-space(//ip/@copularAffix)='yesSuffix'">
<example num="xIP.IPCop.28">
<table border="1">
	            <tr>
	            	<th>Suffixe copulatif</th>
	            	<th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/copularAffix/form[1]">
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
<xsl:for-each select="//ip/copularAffix/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/copularAffix/form[position() &gt; 1]">
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
	      <xsl:if test="normalize-space(//ip/@copular)='optional' and normalize-space(//ip/@copularAffix)='yesEither'">
<example num="xIP.IPCop.30">
<table border="1">
	            <tr>
	            	<th>Affixes copulatifs</th>
	            	<th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/copularAffix/form[1]">
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
<xsl:for-each select="//ip/copularAffix/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/copularAffix/form[position() &gt; 1]">
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
	      
	   	<p contentType="ctComparativeIntro">
<xsl:text>Contrairement aux copules verbales, les verbes de perception permettent d’habitude seulement un syntagme adjectival qui suit, sauf dans les constructions superlatives où un syntagme nominal suit un verbe de perception, comme dans la prochaine section. Voici quelques exemples en français de verbes de perception : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>La fille a l’air jolie</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>elle semble sympathique</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>l’eau paraît trouble</langData>
<xsl:text>.</xsl:text>
</p>
		  <p>
<xsl:text>Voici quelques exemples de phrases qui contiennent des verbes de perception en </xsl:text>
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
		  <example num="xIP.IPCop.36">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/perceptionExample" />
<xsl:with-param name="sExNumber">xIP.IPCop.36</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>

	   	<p>
<xsl:text>Les copules verbales tout comme les verbes de perception peuvent apparaître avec un proposition adjectivale comme complément, dans laquelle une phrase ou une proposition complément suit l’adjectif. Ces constructions seront traitées dans la section </xsl:text>
<sectionRef sec="sCompRaising" />
<xsl:text>.
		  </xsl:text>
</p>
		  <section3 id="sIPComparatives">
		  	<secTitle>Comparatifs et Superlatifs</secTitle>
		  	<p>
<xsl:text>Les comparatifs sont une sous-catégorie de constructions copulatives. Nous allons traiter deux types dans lesquels les deux parties sont considérées comme égales, puis les comparatifs (où une partie est meilleure que l’autre), puis les superlatifs. Pour tous ces types, on emploie généralement une copule verbale ou un verbe de perception. </xsl:text>
</p>
		  	<p contentType="ctComparativeIntro">
<xsl:text>Pour comparer des parties égales on peut employer un nom ou un adjectif.  La construction nominale d’égalité utilise une expression qui veut dire </xsl:text>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « est le même Nom que »</xsl:text>
</gloss>
<xsl:text> entre deux syntagmes nominaux.  Voici quelques exemples en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Les rideaux semblent de la même couleur que les murs</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Votre sac à dos est de la même taille que le mien</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Suzanne a la même coupe de cheveux que Marie</langData>
<xsl:text>. </xsl:text>
</p>
		  	<p contentType="ctPracticalIntro">
<xsl:text>Pour comparer des parties égales on peut employer un nom ou un adjectif.  Dans la construction nominale d’égalité, on emploie une expression qui signifie </xsl:text>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « est le même Nom que »</xsl:text>
</gloss>
<xsl:text> entre deux syntagmes nominaux.</xsl:text>
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
<xsl:choose>
		     	<xsl:when test="//ip/@same='yes'"> il y a un mot de degré comparatif qui signifie « même » ; qu’on utilise dans les phrases de comparaison de parties égales avec le nom de comparaison, comme le montre le tableau suivant.</xsl:when>
		     	<xsl:when test="//ip/@same='attaches'"> on rattache un affixe ou un clitique de degré comparatif qui signifie « même » au nom de comparaison dans les phrases de parties égales, comme le montre le tableau suivant.</xsl:when>
		     	<xsl:when test="//ip/@same='no'"> il n’y a pas de mot de degré comparatif qui signifie « même ». Seule la présence des deux syntagmes nominaux et le nom de comparaison accompagné de la copule prédicative forme les phrases de comparaison de parties égales.</xsl:when>
			 </xsl:choose>
</p>

			 <xsl:if test="normalize-space(//ip/@same)='yes'">
<example num="xIP.IPCop.IPComparatives.12">
<table border="1">
				   <tr>
				   	<th>Nom de degré de comparaison nominale d’égalité </th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/sameWordExample/form[1]">
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
<xsl:otherwise>même</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//ip/sameWordExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/sameWordExample/form[position() &gt; 1]">
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
<xsl:otherwise>même</xsl:otherwise>
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

			 <xsl:if test="normalize-space(//ip/@same)='attaches'">
<example num="xIP.IPCop.IPComparatives.14">
<table border="1">
				   <tr>
				   	<th>Clitique ou Affixe de degré de comparaison nominale d’égalité </th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/sameAffixExample/form[1]">
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
<xsl:otherwise>même</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//ip/sameAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/sameAffixExample/form[position() &gt; 1]">
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
<xsl:otherwise>même</xsl:otherwise>
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
			 	<xsl:when test="//ip/@compareN='yes'"> on utilise la conjonction comparatif « que ou comme » avant le deuxième syntagme nominal dans les phrases de comparaison de parties égales :</xsl:when>
			 	<xsl:when test="//ip/@compareN='no'"> il n’y a pas de conjonction comparatif « que ou comme » avant le deuxième syntagme nominal dans les phrases de comparaison de parties égales.</xsl:when>
			 </xsl:choose>
</p>

			 <xsl:if test="normalize-space(//ip/@compareN)='yes'">
<example num="xIP.IPCop.IPComparatives.18">
<table border="1">
				   <tr>
				   	<th>Conjonction de comparaison nominale d’égalité</th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/compareNExample/form[1]">
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
<xsl:otherwise>que ou comme</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//ip/compareNExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/compareNExample/form[position() &gt; 1]">
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
<xsl:otherwise>que ou comme</xsl:otherwise>
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
<xsl:text>Voici quelques exemples de phrases qui expriment la construction nominale de parties égales en </xsl:text>
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
			 <example num="xIP.IPCop.IPComparatives.22">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/sameExample" />
<xsl:with-param name="sExNumber">xIP.IPCop.IPComparatives.22</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
		  	<p contentType="ctComparativeIntro">
<xsl:text>Le deuxième type de comparaison entre parties égales utilise un adjectif pour faire la comparaison. Cette construction utilise une expression qui veut dire </xsl:text>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « est aussi Adjectif que »</xsl:text>
</gloss>
<xsl:text> entre les deux syntagmes nominaux. En voici quelques exemples : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jean est aussi amical que Guillaume</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Suzanne est aussi vite que Marie</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>David semble aussi grand que Michel</langData>
<xsl:text>.</xsl:text>
</p>
		  	<p contentType="ctPracticalIntro">
<xsl:text>Le deuxième type de comparaison entre parties égales utilise un adjectif pour la comparaison. Cette construction utilise une expression qui signifie </xsl:text>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « est aussi Adjectif que »</xsl:text>
</gloss>
<xsl:text> entre les deux syntagmes nominaux.</xsl:text>
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
<xsl:choose>
		     	<xsl:when test="//ip/@as='yes'"> il y a un mot de degré comparatif qui signifie « aussi », qu’on utilise avec l’adjectif de comparaison, comme le montre le tableau suivant.</xsl:when>
		     	<xsl:when test="//ip/@as='no'"> il n’y a pas de mot de degree comparatif qui signifie « aussi ». Le sens est implicite dans l’adjectif des phrases de comparaison qui impliquent la comparaison de parties égales.</xsl:when>
			 </xsl:choose>
</p>

			 <xsl:if test="normalize-space(//ip/@as)='yes'">
<example num="xIP.IPCop.IPComparatives.30">
<table border="1">
				   <tr>
				   	<th>Mot de degré de comparaison adjectivale d’égalité</th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/asWordExample/form[1]">
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
<xsl:otherwise>aussi</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//ip/asWordExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/asWordExample/form[position() &gt; 1]">
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
<xsl:otherwise>aussi</xsl:otherwise>
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
			 	<xsl:when test="//ip/@compareAdj='yes'"> on utilise la conjunction comparatif qui signifie « que » avant le deuxième syntagme nominal : </xsl:when>
			 	<xsl:when test="//ip/@compareAdj='no'"> il n’y a pas de conjunction comparatif qui signifie « que » avant le deuxième syntagme nominal dans les phrases qui comprennent une comparaison d’adjectifs qualitatifs égaux.</xsl:when>
			 </xsl:choose>
</p>

			 <xsl:if test="normalize-space(//ip/@compareAdj)='yes'">
<example num="xIP.IPCop.IPComparatives.34">
<table border="1">
				   <tr>
				   	<th>Conjonction de comparaison adjective d’égalité</th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/compareAdjExample/form[1]">
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
<xsl:otherwise>que</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//ip/compareAdjExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/compareAdjExample/form[position() &gt; 1]">
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
<xsl:otherwise>que</xsl:otherwise>
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
<xsl:text>Voici quelques exemples de phrases qui expriment la construction adjectivale d’égalité en </xsl:text>
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
			 <example num="xIP.IPCop.IPComparatives.38">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/asExample" />
<xsl:with-param name="sExNumber">xIP.IPCop.IPComparatives.38</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>

		  	<p contentType="ctComparativeIntro">
<xsl:text>Les comparatifs où une partie est meilleure que l’autre comparent deux syntagmes nominaux ; ils utilisent un mot comparatif </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>que</langData>
<xsl:text> et comprennent un copule verbale ou un verbe de perception. Il y a un marqueur de degré avec le prédicat adjectival ou le syntagme nominal. Dans certaines langues ce marqueur de degré peut être un mot indépendant ou bien un affixe sur le prédicat adjectival, comme le montrent ces exemples en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jean est plus beau que Guillaume</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Suzanne est une coureuse plus faible que Marie</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>David paraît plus grand que Michel</langData>
<xsl:text>.</xsl:text>
</p>
		  	<p contentType="ctComparativeIntro">
<xsl:text>Notez qu’une copule implicite qui suit le syntagme nominal final des exemples en français. Un type de comparatif plus complexe a une phrase explicite à la place du deuxième syntagme nominal. On examinera ces phénomènes ci-dessous.</xsl:text>
</p>
		  	<p contentType="ctPracticalIntro">
<xsl:text>Les comparatifs où une partie est meilleure que l’autre comparent deux syntagmes nominaux en utilisant un mot comparatif </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>que</langData>
<xsl:text> ; ils comprennent un copule verbale ou un verbe de perception. Il y a un marqueur de degré avec le prédicat adjectival ou le syntagme nominal. </xsl:text>
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
<xsl:choose>
		     	<xsl:when test="//ip/@comparative='yes'"> il y a une conjonction comparative significant « que » utilisée dans les comparaisons où une partie est meilleure que l’autre, comme le montre le tableau suivant.</xsl:when>
		     	<xsl:when test="//ip/@comparative='no'"> il n’y a pas de conjonction comparative significant « que ».  Seule la présence des deux syntagmes nominaux et le mot de degré avec la copule prédicative forme un comparatif où une partie est meilleure que l’autre.</xsl:when>
			 </xsl:choose>
</p>

			 <xsl:if test="normalize-space(//ip/@comparative)='yes'">
<example num="xIP.IPCop.IPComparatives.48">
<table border="1">
				   <tr>
				   	<th>Conjonction comparative</th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/comparativeWordExample/form[1]">
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
<xsl:otherwise>que</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//ip/comparativeWordExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/comparativeWordExample/form[position() &gt; 1]">
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
<xsl:otherwise>que</xsl:otherwise>
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
			 	<xsl:when test="//ip/@comparativeAdj='no'"> il n’y a pas d’affixe pour exprimer le degré de comparaison sur le prédicat adjectival. On utilise un mot de degré comparatif indépendant avec les prédicats adjectivaux et les syntagmes nominaux. </xsl:when>
			 	<xsl:when test="//ip/@comparativeAdj='yes'"> un ou plusieurs affixes expriment le degré de comparaison sur le prédicat adjectival ; pour faire des comparaisons, on utilise un affixe sur le prédicat adjectival.  </xsl:when>
			 	<xsl:when test="//ip/@comparativeAdj='both'">un ou plusieurs affixes peuvent exprimer le degré de comparaison sur les prédicats adjectivaux. Cependant, pour les comparaisons, certains predicats adjectivaux utilisent les affixes, d’autres utilisent les mots de degré ondépendants. </xsl:when>
			 </xsl:choose>
</p>
		  	<xsl:if test="normalize-space(//ip/@comparativeAdj)!='no'">
<p>
<xsl:text> Voici les affixes de degré comparatifs qu’on utilise sur le prédicat adjectival :</xsl:text>
</p>
</xsl:if>
			 <xsl:if test="normalize-space(//ip/@comparativeAdj)!='no'">
<example num="xIP.IPCop.IPComparatives.54">
<table border="1">
				   <tr>
				   	<th>Affixes de degré comparatifs</th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/comparativeAffixExample/form[1]">
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
<xsl:for-each select="//ip/comparativeAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/comparativeAffixExample/form[position() &gt; 1]">
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
		  	<xsl:if test="normalize-space(//ip/@comparativeAdj)='no' or normalize-space(//ip/@comparativeAdj)='both'">
<p>
<xsl:text>Voici les mots de degré comparatif qu’on utilise avec un prédicat adjectival et un prédicat nominal :</xsl:text>
</p>
</xsl:if>
		  	<xsl:if test="normalize-space(//ip/@comparativeAdj)='yes'">
<p>
<xsl:text>Voici les mots de degré comparatif qu’on utilise avec un prédicat nominal :</xsl:text>
</p>
</xsl:if>
			 <example num="xIP.IPCop.IPComparatives.60">
<table border="1">
				   <tr>
				   	<th>Mots de degré comparatifs</th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/comparativeDegExample/form[1]">
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
<xsl:for-each select="//ip/comparativeDegExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/comparativeDegExample/form[position() &gt; 1]">
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

			 <p>
<xsl:text>Voici quelques exemples de phrases qui expriment la comparaison où une partie est meilleure que l’autre, en </xsl:text>
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
			 <example num="xIP.IPCop.IPComparatives.64">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/comparativeExample" />
<xsl:with-param name="sExNumber">xIP.IPCop.IPComparatives.64</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
		  	<p contentType="ctComparativeIntro">
<xsl:text>Maintenant, considérez les comparatifs qui ont une phrase de chaque côté de la conjonction comparative, bien que l’adjectif puisse manquer dans la deuxième phrase. Comme les comparatifs plus courts, ces constructions ci comparent les qualités ou les actions des sujets de chaque phrase ; ils peuvent avoir une copule verbale ou verbe de perception, ou un verbe d’action, accompagnés par un adjectif modifié par un mot de degré ou par un affixe. Voici quelques exemples en français (il est vrai que ces formes sont littéraires, et que le ‘ne’ est inséré) :
		  	</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Vous écrivez plus correctement que vous ne parlez</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jean est plus beau que Guillaume ne l’est</langData>
<xsl:text>.</xsl:text>
</p>
		  	<p contentType="ctComparativeIntro">
<xsl:text>Certaines langues n’admettent pas l’omission,  ne serait-ce que d’une partie de la deuxième phrase: les deux phrases doivent être complètes pour pouvoir être comparées. De plus, les langues qui n’ont pas de conjonction de comparaison distincte signifiant </xsl:text>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>« que »</xsl:text>
</gloss>
<xsl:text> pour les constructions de comparaison plus courtes auront ainisi deux phrases qui se suivent.
		        </xsl:text>
</p>
		  	<p contentType="ctPracticalIntro">
<xsl:text>Considérez les comparatifs qui ont deux phrases qui entourent la conjonction comparative, bien que l’adjectif manque dans la deuxième phrase. 
		     </xsl:text>
</p>
		  	<p>
<xsl:text>Dans ces comparaisons plus complètes en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
		  		<xsl:when test="//ip/@gap='yes'"> l’omission de l’adjectif dans la deuxième partie est admis. </xsl:when>
		  		<xsl:when test="//ip/@gap='no'"> la phrase complète, y compris l’adjectif, doit être répétée pour la deuxième partie. </xsl:when>
		        </xsl:choose>
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
		          	<xsl:when test="//ip/@comparative='yes'"> il y a une conjonction comparative signifiant « que » qui s’emploie dans la construction courte et la construction plus longue, comme le montrent les exemples ci-dessus. </xsl:when>
		          	<xsl:when test="//ip/@comparative='no'"> il n’y a pas pas de conjonction de comparaison signifiant « que » ; donc les deux phrases se succèdent donc directement dans ce type de comparaison.</xsl:when>
		           </xsl:choose>
</p>
		        <p>
<xsl:text>Voici quelques exemples de ces phrases de comparaison plus longue en </xsl:text>
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
		        <example num="xIP.IPCop.IPComparatives.76">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/comparativeSentExample" />
<xsl:with-param name="sExNumber">xIP.IPCop.IPComparatives.76</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
		        
		  	<p contentType="ctComparativeIntro">
<xsl:text>Les superlatifs sont une autre sous-catégorie de construction copulative, directement en relation avec les comparatifs. Ils permettent de comparer un syntagme nominal à un groupe, qui peut être exprimé comme un syntagme </xsl:text>
<xsl:choose>
		        	<xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
		           <xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
		           <xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
		           <xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
		        </xsl:choose>
<xsl:text>, ou être implicite. Tout comme les comparatifs, les superlatifs comprennent la copule utilisée par la langue, quelle qu’elle soit, ou un verbe de perception, accompagné d’un marqueur spécifique du degré superlatif sur le prédicat adjectival ou nominal. Dans certaines langues le degré qui marque le superlatif peut être soit un mot indépendant, soit un affixe sur le prédicat adjectival.  En voici quelques exemples en anglais et en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John is the most handsome of the boys</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Jean est le plus beau des garçons »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Sue is the worst runner (in the class)</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Suzanne est la coureuse la plus faible (de la classe) »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>David appears the tallest (of all)</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « David semble être le plus grand (de tous) »</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Mary looks prettiest</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Marie semble être la plus belle »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John seems the least certain of his answers of all my students</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>  « Jean semble le moins certain de ses réponses de tous mes étudiants »</xsl:text>
</gloss>
<xsl:text>.</xsl:text>
</p>
		  	<p contentType="ctPracticalIntro">
<xsl:text>Les superlatifs sont une autre sous-catégorie de constructions copulatives, directement en relation avec les comparatifs.  Ils permettent de comparer un syntagme nominal à un groupe, qui peut être exprimé par un syntagme </xsl:text>
<xsl:choose>
		        	<xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
		        	<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
		        	<xsl:when test="//pp/@pPos='both'">adpositionnel</xsl:when>
		        	<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
		        </xsl:choose>
<xsl:text>, ou être implicite.</xsl:text>
</p>
		     
		  	<p>
<xsl:text>Tout comme les comparatifs en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, </xsl:text>
<xsl:choose>
		  		<xsl:when test="//ip/@comparativeAdj='no'">il n’y a pas d’affixe sur le prédicat adjectival pour exprimer le degré de superlatif. On utilise un mot de degré superlatif distinct pour le prédicat adjectival et nominal.</xsl:when>
		  		<xsl:when test="//ip/@comparativeAdj='yes'">un ou plusieurs affixes expriment le degré superlatif sur le prédicat adjectival, et on en utilise nécessairement un avec le prédicat adjectival dans les expressions superlatifs.  </xsl:when>
		  		<xsl:when test="//ip/@comparativeAdj='both'">un ou même plusieurs affixes peuvent exprimer le degré superlatif sur le prédicat adjectival.  Cependant, pour certains prédicats adjectivaux, on utilise les affixes; pour d’autres, on emploie les mots de degré superlatif distincts pour les superlatifs. </xsl:when>
			 </xsl:choose>
</p>
		  	<xsl:if test="normalize-space(//ip/@comparativeAdj)!='no'">
<p>
<xsl:text>Voici les affixes de degré superlatif utilisés avec les predicats adjectivaux :</xsl:text>
</p>
</xsl:if>
			 <xsl:if test="normalize-space(//ip/@comparativeAdj)!='no'">
<example num="xIP.IPCop.IPComparatives.86">
<table border="1">
				   <tr>
				   	<th>Affixes de degré superlatif</th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/superlativeAffixExample/form[1]">
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
<xsl:for-each select="//ip/superlativeAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/superlativeAffixExample/form[position() &gt; 1]">
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
		  	<xsl:if test="normalize-space(//ip/@comparativeAdj)='no' or normalize-space(//ip/@comparativeAdj)='both'">
<p>
<xsl:text>Voici les mots de degré superlatif utiliseés avec les prédicats adjectivaux :</xsl:text>
</p>
</xsl:if>
		  	<xsl:if test="normalize-space(//ip/@comparativeAdj)='yes'">
<p>
<xsl:text>Voici les mots de degré superlatif utiliseés avec les prédicats nominaux :</xsl:text>
</p>
</xsl:if>
			 <example num="xIP.IPCop.IPComparatives.92">
<table border="1">
				   <tr>
				   	<th>Mots de degré superlatif</th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/superlativeDegExample/form[1]">
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
<xsl:for-each select="//ip/superlativeDegExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/superlativeDegExample/form[position() &gt; 1]">
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

			 <p>
<xsl:text>Voici quelques exemples de phrases superlatives en </xsl:text>
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
			 <example num="xIP.IPCop.IPComparatives.96">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/superlativeExample" />
<xsl:with-param name="sExNumber">xIP.IPCop.IPComparatives.96</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
		  </section3>

		  <section3 id="sIPExistentials">
			 <secTitle>Existentiels</secTitle>

		  	<p contentType="ctComparativeIntro">
<xsl:text>Les phrases existentielles ressemblent les constructions copulatives, sauf qu’elles utilisent un ou plusieurs mots pour exprimer </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il y a</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il existe</langData>
<xsl:text> avec un syntagme nominal et – souvent – un lieu. Voici des exemples en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Il y a un livre sur la table</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Il y a deux hommes dehors</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Il n’y a plus de nourriture</langData>
<xsl:text>.</xsl:text>
</p>
		  	<p contentType="ctComparativeIntro">
<xsl:text>Au lieu de cela, certaines langues ont un verbe existentiel distinct, comme </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>hay</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « il existe »</xsl:text>
</gloss>
<xsl:text> en espagnol. D’autres langues ont une série de verbes existentiels qui expriment la position de l’objet décrit.</xsl:text>
</p>
		  	<p contentType="ctPracticalIntro">
<xsl:text>Les phrases existentielles se distinguent constructions copulatives ; elles contiennent des verbes existentiels spécifiques et/ou des mots accompagnés d’un syntagme nominal et généralement d’un lieu. </xsl:text>
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
<xsl:if test="normalize-space(//ip/existNone/@checked)='yes'">
<xsl:text> on ne distingue aucunement les phrases existentielles. Elles ressemblent aux constructions copulatives présentées ci-dessus dans la section </xsl:text>
<sectionRef sec="sIPCop" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/existWord/@checked)='yes' and normalize-space(//ip/existVerb/@checked)='no' and normalize-space(//ip/existPosition/@checked)='no'">
<xsl:text> il y a un mot existentiel indépendant (ou plusieurs) qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il y a</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il existe</langData>
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/existWord/@checked)='no' and normalize-space(//ip/existVerb/@checked)='yes' and normalize-space(//ip/existPosition/@checked)='no'">
<xsl:text> il y a un ou plusieurs verbes qu’on utilise spécifiquement dans les phrases existentielles, et ces verbes expriment pleinement l’existentiel par eux-mêmes.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/existWord/@checked)='yes' and normalize-space(//ip/existVerb/@checked)='yes' and normalize-space(//ip/existPosition/@checked)='no'">
<xsl:text> il y a un ou plusieurs verbes qu’on utilise spécifiquement dans les phrases existentielles, et il y a un mot existentiel indépendant (ou plusieurs) qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il y a</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il existe</langData>
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/existWord/@checked)='no' and normalize-space(//ip/existVerb/@checked)='no' and normalize-space(//ip/existPosition/@checked)='yes'">
<xsl:text> il y a une série de verbes existentiels qui expriment la position de l’objet. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/existWord/@checked)='yes' and normalize-space(//ip/existVerb/@checked)='no' and normalize-space(//ip/existPosition/@checked)='yes'">
<xsl:text> il y a un mot existentiel indépendant (ou plusieurs) qui signifiant </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il y a</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il existe</langData>
<xsl:text> ainsi qu’une série de verbes existentiels qui expriment la position de l’objet.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/existWord/@checked)='no' and normalize-space(//ip/existVerb/@checked)='yes' and normalize-space(//ip/existPosition/@checked)='yes'">
<xsl:text> il y a un ou plusieurs verbes utilisés en particulier dans les phrases existentielles, ainsi qu’une série de verbes existentiels qui expriment la position de l’objet.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/existWord/@checked)='yes' and normalize-space(//ip/existVerb/@checked)='yes' and normalize-space(//ip/existPosition/@checked)='yes'">
<xsl:text> il y a un ou plusieurs verbes utilisés en particulier dans les phrases existentielles, et il y a aussi un mot existentiel indépendant (ou plusieurs) qui significant </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il y a</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il existe</langData>
<xsl:text>, ainsi qu’une série de verbes existentiels qui expriment la position de l’objet.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/existWord/@checked)='no' and normalize-space(//ip/existVerb/@checked)='no' and normalize-space(//ip/existPosition/@checked)='no' and normalize-space(//ip/existOther/@checked)='yes'">
<xsl:text> les phrases existentielles sont marquées par ___</xsl:text>
<xsl:value-of select="//ip/existOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/existWord/@checked)='yes' and normalize-space(//ip/existOther/@checked)='yes' or normalize-space(//ip/existVerb/@checked)='yes' and normalize-space(//ip/existOther/@checked)='yes' or normalize-space(//ip/existPosition/@checked)='yes' and normalize-space(//ip/existOther/@checked)='yes'">
<xsl:text>  Les phrases existentielles sont également marquées par ___</xsl:text>
<xsl:value-of select="//ip/existOther" />
<xsl:text>.</xsl:text>
</xsl:if>
</p>
		  	<xsl:if test="normalize-space(//ip/existVerb/@checked)='yes'">
<p>
<xsl:text>Voici les verbes utilisés dans les phrases existentielles en </xsl:text>
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
			 <xsl:if test="normalize-space(//ip/existVerb/@checked)='yes'">
<example num="xIP.IPCop.IPExistentials.14">
<table border="1">
				   <tr>
				   	<th>Verbes existentiels</th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/existVerbExample/form[1]">
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
<xsl:for-each select="//ip/existVerbExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/existVerbExample/form[position() &gt; 1]">
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
		  	<xsl:if test="normalize-space(//ip/existWord/@checked)='yes'">
<p>
<xsl:text>Voici les mots existentiels signifiant </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il y a</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>il existe</langData>
<xsl:text> utilisés dans les phrases existentielles sont :</xsl:text>
</p>
</xsl:if>
			 <xsl:if test="normalize-space(//ip/existWord/@checked)='yes'">
<example num="xIP.IPCop.IPExistentials.18">
<table border="1">
				   <tr>
				   	<th>Mots existentiels</th>
					  <th>Glose</th>
				   </tr>
				   <tr>
<xsl:for-each select="//ip/existWordExample/form[1]">
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
<xsl:for-each select="//ip/existWordExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/existWordExample/form[position() &gt; 1]">
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
		  	<xsl:if test="normalize-space(//ip/existPosition/@checked)='yes'">
<p>
<xsl:text>Voici les verbes existentiels qui indiquent la position de l’objet :</xsl:text>
</p>
</xsl:if>
		     <xsl:if test="normalize-space(//ip/existPosition/@checked)='yes'">
<example num="xIP.IPCop.IPExistentials.22">
<table border="1">
		           <tr>
		           	<th>Verbes existentiels de position</th>
		              <th>Glose</th>
		           </tr>
		           <tr>
<xsl:for-each select="//ip/existPositionExample/form[1]">
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
<xsl:for-each select="//ip/existPositionExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/existPositionExample/form[position() &gt; 1]">
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
		  	<xsl:if test="normalize-space(//ip/existOther/@checked)='yes'">
<p>
<xsl:text>Voici les marqueurs spéciaux pour les phrases existentielles en </xsl:text>
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
		     <xsl:if test="normalize-space(//ip/existOther/@checked)='yes'">
<example num="xIP.IPCop.IPExistentials.26">
<table border="1">
		           <tr>
		           	<th>Marqueurs existentiels</th>
		              <th>Glose</th>
		           </tr>
		           <tr>
<xsl:for-each select="//ip/existOtherExample/form[1]">
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
<xsl:for-each select="//ip/existOtherExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/existOtherExample/form[position() &gt; 1]">
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
		     <p>
<xsl:text>Voici quelques exemples de phrases existentielles en </xsl:text>
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
			 <example num="xIP.IPCop.IPExistentials.30">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/existExample" />
<xsl:with-param name="sExNumber">xIP.IPCop.IPExistentials.30</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>

		  </section3>

	   </section2>

	   <section2 id="sIPMotion">
	   	<secTitle>Verbes intransitifs et Constructions de mouvement</secTitle>
		  <p contentType="ctComparativeIntro">
<xsl:text>Les verbes intransitifs simples n’ont pas de compléments après le verbe, par exemple : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>La fille nage</langData>
<xsl:text>.  Beaucoup de verbes intransitifs ont un sujet-expérient au lieu d’un sujet-agent, comme par exemple :</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Ma soeur a ri</langData>
<xsl:text>.  </xsl:text>
</p>  
	      <p contentType="ctPracticalIntro">
<xsl:text>Les verbes intransitifs simples n’ont pas de compléments après le verbe.  Le sujet peut être un sujet-agent ou un sujet-expérient, selon le verbe.</xsl:text>
</p>  
	      <p>
<xsl:text>On trouve des exemples de phrases intransitives simples avec un sujet-agent en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> dans </xsl:text>
<exampleRef num="xIntranAgentNP" equal="no" letterOnly="no" />
<xsl:text>-</xsl:text>
<exampleRef num="xIntranAgentPron" equal="no" letterOnly="no" />
<xsl:text>.  Dans les exemples en </xsl:text>
<exampleRef num="xIntranAgentNP" equal="no" letterOnly="no" />
<xsl:text> un syntagme nominal ou un nom propre occupe la position du sujet ; dans les exemples en </xsl:text>
<exampleRef num="xIntranAgentPron" equal="no" letterOnly="no" />
<xsl:text>, le sujet est un pronom.</xsl:text>
</p>
		  <example num="xIntranAgentNP">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/intExample" />
<xsl:with-param name="sExNumber">xIntranAgentNP</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
		  <example num="xIntranAgentPron">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/pnIntExample" />
<xsl:with-param name="sExNumber">xIntranAgentPron</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
		  <p>
<xsl:text>Des exemples avec un sujet-expérient sont données dans </xsl:text>
<exampleRef num="xIntranExperiencerNP" equal="no" letterOnly="no" />
<xsl:text>-</xsl:text>
<exampleRef num="xIntranExperiencerPron" equal="no" letterOnly="no" />
<xsl:text>.  Un syntagme nominal ou un nom propre occupe la position du sujet dans les evemples en </xsl:text>
<exampleRef num="xIntranExperiencerNP" equal="no" letterOnly="no" />
<xsl:text> ; dans les exemples en </xsl:text>
<exampleRef num="xIntranExperiencerPron" equal="no" letterOnly="no" />
<xsl:text>, le sujet est un pronom.</xsl:text>
</p>
		  <example num="xIntranExperiencerNP">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/experiencerIntExample" />
<xsl:with-param name="sExNumber">xIntranExperiencerNP</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
		  <example num="xIntranExperiencerPron">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/experiencerPnIntExample" />
<xsl:with-param name="sExNumber">xIntranExperiencerPron</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	   	<p contentType="ctComparativeIntro">
<xsl:text>Les phrases avec un verbe de mouvement comprennent un lieu, sous la forme d’un syntagme </xsl:text>
<xsl:choose>
			       	<xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
			       	<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
			       	<xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
			       	<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
</xsl:choose>
<xsl:text>ou d’un adverbe.  Voici des exemples de verbes de mouvement en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>La fille a couru autour de la maison</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Ma mère est allée au magasin</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Mon prof est venu ici</langData>
<xsl:text>.</xsl:text>
</p>
	   	<p contentType="ctPracticalIntro">
<xsl:text>Les phrases avec un verbe de mouvement comprennent un lieu, sous la forme d’un syntagme </xsl:text>
<xsl:choose>
	         	<xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
	         	<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
	         	<xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
	         	<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
</xsl:choose>
<xsl:text> ou d’un adverbe.</xsl:text>
</p>
	      <p>
<xsl:text>Voici quelques exemples qui comprennent les verbes de mouvement en </xsl:text>
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
		  <example num="xIP.IPMotion.26">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/motionExample" />
<xsl:with-param name="sExNumber">xIP.IPMotion.26</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	   </section2>
	   <section2 id="sIPTrans">
	   	<secTitle>Phrases transitives et ditransitives</secTitle>
			<p contentType="ctComparativeIntro">
<xsl:text>Voici des exemples en français de phrases transitives à une proposition et qui ont un sujet-agent : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le garçon frappera la balle</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le chien aurait pu enterrer son os</langData>
<xsl:text>.  Voici des exemples qui comprennent un sujet-expérient : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le bébé veut ce jouet</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Ma fille aime son cadeau</langData>
<xsl:text>.</xsl:text>
</p>
	   
	         <p>
<xsl:text>Voici quelques exemples de phrases transitives avec un sujet-agent en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> dans </xsl:text>
<exampleRef num="xTranAgentNP" equal="no" letterOnly="no" />
<xsl:text>-</xsl:text>
<exampleRef num="xTranAgentPron" equal="no" letterOnly="no" />
<xsl:text>.  Les syntagmes ou noms propres occupent la position du sujet et de l’objet direct dans </xsl:text>
<exampleRef num="xTranAgentNP" equal="no" letterOnly="no" />
<xsl:text>, tandis que dans </xsl:text>
<exampleRef num="xTranAgentPron" equal="no" letterOnly="no" />
<xsl:text>, le sujet et l’objet direct sont des pronoms.</xsl:text>
</p>
	      
		  <example num="xTranAgentNP">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/example" />
<xsl:with-param name="sExNumber">xTranAgentNP</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
		  <example num="xTranAgentPron">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/pnExample" />
<xsl:with-param name="sExNumber">xTranAgentPron</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	      <p>
<xsl:text>Des exemples avec un sujet-expérient sont présentés dans </xsl:text>
<exampleRef num="xTranExperiencerNP" equal="no" letterOnly="no" />
<xsl:text>-</xsl:text>
<exampleRef num="xTranExperiencerPron" equal="no" letterOnly="no" />
<xsl:text>.  Dans les exemples en </xsl:text>
<exampleRef num="xTranExperiencerNP" equal="no" letterOnly="no" />
<xsl:text>, les syntagmes nominaux ou les noms propres occupent la position du sujet et de l’objet direct, tandis que dans les exemples en </xsl:text>
<exampleRef num="xTranExperiencerPron" equal="no" letterOnly="no" />
<xsl:text> le sujet et l’objet direct sont des pronoms.</xsl:text>
</p>
	      <example num="xTranExperiencerNP">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/experiencerExample" />
<xsl:with-param name="sExNumber">xTranExperiencerNP</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	      <example num="xTranExperiencerPron">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/pnExperiencerExample" />
<xsl:with-param name="sExNumber">xTranExperiencerPron</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
		  <p contentType="ctComparativeIntro">
<xsl:text>Les phrases ditransitives peuvent avoir le deuxième objet formulé comme un syntagme  </xsl:text>
<xsl:choose>
					<xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
					<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
					<xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
					<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
</xsl:choose>
<xsl:text> ou comme un syntagme nominal. Certaines langues, comme l’anglais mais pas de français, admettent les deux constructions, par un mouvement au datif, par exemple :</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The girl gave the gift to her mother</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (La fille a donné le cadeau à sa mère)</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The girl gave her mother the gift</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (La fille a donné à sa mère le cadeau)</xsl:text>
</gloss>
<xsl:text>.</xsl:text>
</p>
	      <p>
<xsl:text>Dans les phrases ditransitives en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, le deuxième objet </xsl:text>
<xsl:choose>
					<xsl:when test="//ip/@diCat='pp'">est toujours un syntagme <xsl:choose>
						<xsl:when test="//pp/@pPos='before'">prépositionnel.</xsl:when>
						<xsl:when test="//pp/@pPos='after'">postpositionnel.</xsl:when>
						<xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel.</xsl:when>
						<xsl:when test="//pp/@pPos='unknown'">adpositionnel.</xsl:when>
					</xsl:choose>
						</xsl:when>
					<xsl:when test="//ip/@diCat='dp'">est toujours un syntagme nominal.  L’objet </xsl:when>
					<xsl:when test="//ip/@diCat='both'">peut être soit un syntagme <xsl:choose>
						<xsl:when test="//pp/@pPos='before'">prépositionnel</xsl:when>
						<xsl:when test="//pp/@pPos='after'">postpositionnel</xsl:when>
						<xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel</xsl:when>
						<xsl:when test="//pp/@pPos='unknown'">adpositionnel</xsl:when>
					</xsl:choose>
						ou bien un syntagme nominal. Quand les deux objets sont des syntagmes nominaux, l’objet </xsl:when>
				</xsl:choose>
<xsl:if test="normalize-space(//ip/@diCat)!='pp'">
					<xsl:choose>
						<xsl:when test="//ip/@diOrder='direct'">direct</xsl:when>
						<xsl:when test="//ip/@diOrder='indirect'">indirect</xsl:when>
					</xsl:choose>
					<xsl:text> est le plus proche du verbe.</xsl:text>
				</xsl:if>
</p>
	   	<p>
<xsl:text>  Voici quelques exemples de phrases ditransitives :</xsl:text>
</p>
			<example num="xIP.IPTrans.24">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/diExample" />
<xsl:with-param name="sExNumber">xIP.IPTrans.24</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	   </section2>
	   <section2 id="sIPImp">
	   	<secTitle>Impératifs</secTitle>
	   	<p>
<xsl:text>Les phrases impératives sont les ordres. En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, un sujet </xsl:text>
<xsl:if test="normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>peut être omis dans les phrases impératives, puisqu’on présuppose que le verbe est à la deuxième personne.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropImp/@checked)='no'">
<xsl:text>est obligatoire dans les phrases impératives.</xsl:text>
</xsl:if>
<xsl:text>  En voici quelques exemples :</xsl:text>
</p>
	      <example num="xIP.IPImp.6">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/impExample" />
<xsl:with-param name="sExNumber">xIP.IPImp.6</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
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
<xsl:choose>
	      	<xsl:when test="//ip/@impPolite='yes'"> il y a aussi une forme polie pour les impératifs. Voici quelques exemples : </xsl:when>
	      	<xsl:when test="//ip/@impPolite='no'"> il n’y a pas de forme polie pour les impératifs.  </xsl:when>
	      </xsl:choose>
<xsl:text></xsl:text>
</p>
	      <xsl:if test="normalize-space(//ip/@impPolite)='yes'">
<example num="xIP.IPImp.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/impPoliteExample" />
<xsl:with-param name="sExNumber">xIP.IPImp.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
	   </section2>
	   
	   <section2 id="sIPConditional">
	      <secTitle>Conditionnels</secTitle>
	      
	   	<p contentType="ctComparativeIntro">
<xsl:text>Les conditionnels ont deux parties : la condition et la conséquence. La condition est introduite par un mot de condition, par exemple </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>si</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>quand</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>après</langData>
<xsl:text>, et est séparée de la conséquence par une virgule. La conséquence peut être marquée par un mot qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>alors</langData>
<xsl:text> dans des examples où la condition est en tête de phrase. Des exemples en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Si tu économises assez d’argent, alors tu pourras acheter cela</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Après que tu auras nettoyé ta chambre, alors tu pourras jouer</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Quand tu auras mangé tes legumes, je te donnerai le dessert</langData>
<xsl:text>.  
	   		La conséquence peut être présentée avant la condition, sans marqueur de conséquence, seule la condition est marquée dans ce cas. Voici des exemples en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Tu pourras acheter cela si tu économises assez d’argent</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Tu pourras jouer avec tes amis quand tu auras nettoyé ta chambre</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Je te donnerai le dessert quand tu auras mangé tes légumes</langData>
<xsl:text>.</xsl:text>
</p>
	   	<p contentType="ctPracticalIntro">
<xsl:text>Les conditionnels ont deux parties : la condition et la conséquence. L’ordre dans lequel elles apparaissent n’importe pas. </xsl:text>
</p>
	      
	         <p>
<xsl:text>Voici quelques exemples de conditionnels en </xsl:text>
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
	      <example num="xIP.IPConditional.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/conditionalExample" />
<xsl:with-param name="sExNumber">xIP.IPConditional.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	   	<xsl:if test="normalize-space(//ip/@conditionWord)='mood'">
<p>
<xsl:text>Comme le montrent les exemples, il n’y a pas de marqueur pour la condition en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, le verbe seulement est au mode conditionnel.</xsl:text>
</p>
</xsl:if>
	   	<xsl:if test="normalize-space(//ip/@conditionWord)='yes' or normalize-space(//ip/@conditionWord)='some'">
<p>
<xsl:text>Comme le montrent les exemples, la condition est </xsl:text>
<xsl:choose>
	      	<xsl:when test="//ip/@conditionWord='yes'">marquée par des mots indépendants qui sont placés </xsl:when>
	      	<xsl:when test="//ip/@conditionWord='some'">marquée quelquefois par des mots indépendants qui sont placés </xsl:when>
	      </xsl:choose>
<xsl:if test="normalize-space(//ip/conditionWordBefore/@checked)='yes' and normalize-space(//ip/conditionWordAfter/@checked)='no' and normalize-space(//ip/conditionWordBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionWordBefore/@checked)='no' and normalize-space(//ip/conditionWordAfter/@checked)='yes' and normalize-space(//ip/conditionWordBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionWordBefore/@checked)='no' and normalize-space(//ip/conditionWordAfter/@checked)='no' and normalize-space(//ip/conditionWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionWordBefore/@checked)='yes' and normalize-space(//ip/conditionWordAfter/@checked)='yes' and normalize-space(//ip/conditionWordBoth/@checked)='no'">
<xsl:text>d’un côte ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionWordBefore/@checked)='yes' and normalize-space(//ip/conditionWordAfter/@checked)='no' and normalize-space(//ip/conditionWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionWordBefore/@checked)='no' and normalize-space(//ip/conditionWordAfter/@checked)='yes' and normalize-space(//ip/conditionWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionWordBefore/@checked)='yes' and normalize-space(//ip/conditionWordAfter/@checked)='yes' and normalize-space(//ip/conditionWordBoth/@checked)='yes'">
<xsl:text>d’un côte ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionWordOther/@checked)='no'">
<xsl:text> reste du syntagme conditionnel.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionWordBefore/@checked)='no' and normalize-space(//ip/conditionWordAfter/@checked)='no' and normalize-space(//ip/conditionWordBoth/@checked)='no' and normalize-space(//ip/conditionWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//ip/conditionWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionWordBefore/@checked)='yes' and normalize-space(//ip/conditionWordOther/@checked)='yes' or normalize-space(//ip/conditionWordAfter/@checked)='yes' and normalize-space(//ip/conditionWordOther/@checked)='yes' or normalize-space(//ip/conditionWordBoth/@checked)='yes' and normalize-space(//ip/conditionWordOther/@checked)='yes'">
<xsl:text> reste du syntagme conditionnel et peut aussi se placer ___ </xsl:text>
<xsl:value-of select="//ip/conditionWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>  Voici les mots qui marquent la condition :</xsl:text>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//ip/@conditionWord)='yes' or normalize-space(//ip/@conditionWord)='some'">
<example num="xIP.IPConditional.16">
<table border="1">
	            <tr>
	            	<th>Mots de condition</th>
	               <th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/conditionWordExample/form[1]">
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
<xsl:for-each select="//ip/conditionWordExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/conditionWordExample/form[position() &gt; 1]">
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
	   	<xsl:if test="normalize-space(//ip/@conditionWord)='no' or normalize-space(//ip/@conditionWord)='some'">
<p>
<xsl:if test="normalize-space(//ip/@conditionWord)='no'">
<xsl:text>Comme le montrent les exemples, la condition est marquée par </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/@conditionWord)='some'">
<xsl:text>La condition peut aussi être marquée par </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionProclitic/@checked)='yes' and normalize-space(//ip/conditionEnclitic/@checked)='no' and normalize-space(//ip/conditionPrefix/@checked)='no' and normalize-space(//ip/conditionSuffix/@checked)='no'">
<xsl:text>des proclitiques syntagmatiques qui se rattachent au début du premier mot du syntagme conditionnel, quel qu’il soit.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionProclitic/@checked)='no' and normalize-space(//ip/conditionEnclitic/@checked)='yes' and normalize-space(//ip/conditionPrefix/@checked)='no' and normalize-space(//ip/conditionSuffix/@checked)='no'">
<xsl:text>des enclitiques syntagmatiques qui se rattachent à la fin du dernier mot du syntagme conditionnel, quel qu’il soit.    </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionProclitic/@checked)='yes' and normalize-space(//ip/conditionEnclitic/@checked)='yes' and normalize-space(//ip/conditionPrefix/@checked)='no' and normalize-space(//ip/conditionSuffix/@checked)='no'">
<xsl:text>des clitiques syntagmatiques qui se rattachent soit au début du premier mot du syntagme conditionnel, soir à la fin du dernier mot du syntagme conditionnel, quel que soit ce mot.   </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionProclitic/@checked)='no' and normalize-space(//ip/conditionEnclitic/@checked)='no' and normalize-space(//ip/conditionPrefix/@checked)='yes' and normalize-space(//ip/conditionSuffix/@checked)='no'">
<xsl:text>des préfixes qui se rattachent au nom noyau du syntagme conditionnel.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionProclitic/@checked)='no' and normalize-space(//ip/conditionEnclitic/@checked)='no' and normalize-space(//ip/conditionPrefix/@checked)='no' and normalize-space(//ip/conditionSuffix/@checked)='yes'">
<xsl:text>des suffixes qui se rattachent au nom noyau du syntagme conditionnel.   </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionProclitic/@checked)='no' and normalize-space(//ip/conditionEnclitic/@checked)='no' and normalize-space(//ip/conditionPrefix/@checked)='yes' and normalize-space(//ip/conditionSuffix/@checked)='yes'">
<xsl:text>des affixes qui s’attachent au verbe du syntagme conditionnel.   </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionProclitic/@checked)='yes' and normalize-space(//ip/conditionEnclitic/@checked)='no' and normalize-space(//ip/conditionPrefix/@checked)='yes' and normalize-space(//ip/conditionSuffix/@checked)='no' or normalize-space(//ip/conditionProclitic/@checked)='yes' and normalize-space(//ip/conditionEnclitic/@checked)='no' and normalize-space(//ip/conditionPrefix/@checked)='no' and normalize-space(//ip/conditionSuffix/@checked)='yes' or normalize-space(//ip/conditionProclitic/@checked)='yes' and normalize-space(//ip/conditionEnclitic/@checked)='no' and normalize-space(//ip/conditionPrefix/@checked)='yes' and normalize-space(//ip/conditionSuffix/@checked)='yes' or normalize-space(//ip/conditionProclitic/@checked)='no' and normalize-space(//ip/conditionEnclitic/@checked)='yes' and normalize-space(//ip/conditionPrefix/@checked)='yes' and normalize-space(//ip/conditionSuffix/@checked)='no' or normalize-space(//ip/conditionProclitic/@checked)='no' and normalize-space(//ip/conditionEnclitic/@checked)='yes' and normalize-space(//ip/conditionPrefix/@checked)='no' and normalize-space(//ip/conditionSuffix/@checked)='yes' or normalize-space(//ip/conditionProclitic/@checked)='no' and normalize-space(//ip/conditionEnclitic/@checked)='yes' and normalize-space(//ip/conditionPrefix/@checked)='yes' and normalize-space(//ip/conditionSuffix/@checked)='yes' or normalize-space(//ip/conditionProclitic/@checked)='yes' and normalize-space(//ip/conditionEnclitic/@checked)='no' and normalize-space(//ip/conditionPrefix/@checked)='yes' and normalize-space(//ip/conditionSuffix/@checked)='yes' or normalize-space(//ip/conditionProclitic/@checked)='yes' and normalize-space(//ip/conditionEnclitic/@checked)='yes' and normalize-space(//ip/conditionPrefix/@checked)='yes' and normalize-space(//ip/conditionSuffix/@checked)='no' or normalize-space(//ip/conditionProclitic/@checked)='yes' and normalize-space(//ip/conditionEnclitic/@checked)='yes' and normalize-space(//ip/conditionPrefix/@checked)='no' and normalize-space(//ip/conditionSuffix/@checked)='yes' or normalize-space(//ip/conditionProclitic/@checked)='yes' and normalize-space(//ip/conditionEnclitic/@checked)='yes' and normalize-space(//ip/conditionPrefix/@checked)='yes' and normalize-space(//ip/conditionSuffix/@checked)='yes'">
<xsl:text>soit par des clitiques qui se rattachent au début ou à la fin du syntagme conditionnel, ou bien par des affixes qui se rattachent au nom noyau du syntagme conditionnel.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionProclitic/@checked)='no' and normalize-space(//ip/conditionEnclitic/@checked)='no' and normalize-space(//ip/conditionPrefix/@checked)='no' and normalize-space(//ip/conditionSuffix/@checked)='no' and normalize-space(//ip/conditionOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//ip/conditionOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/conditionProclitic/@checked)='yes' and normalize-space(//ip/conditionOther/@checked)='yes' or normalize-space(//ip/conditionEnclitic/@checked)='yes' and normalize-space(//ip/conditionOther/@checked)='yes' or normalize-space(//ip/conditionPrefix/@checked)='yes' and normalize-space(//ip/conditionOther/@checked)='yes' or normalize-space(//ip/conditionSuffix/@checked)='yes' and normalize-space(//ip/conditionOther/@checked)='yes'">
<xsl:text>  Certains se rattachent aussi ___</xsl:text>
<xsl:value-of select="//ip/conditionOther" />  <xsl:text>.</xsl:text>
</xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>   
	   	<xsl:if test="normalize-space(//ip/@conditionWord)='no' and normalize-space(//ip/conditionProclitic/@checked)='yes' or normalize-space(//ip/@conditionWord)='no' and normalize-space(//ip/conditionEnclitic/@checked)='yes' or normalize-space(//ip/@conditionWord)='some' and normalize-space(//ip/conditionProclitic/@checked)='yes' or normalize-space(//ip/@conditionWord)='some' and normalize-space(//ip/conditionEnclitic/@checked)='yes'">
<p>
<xsl:text>Voici les clitiques qui marquent la condition :</xsl:text>
</p>
</xsl:if>      
	      <xsl:if test="normalize-space(//ip/@conditionWord)='no' and normalize-space(//ip/conditionProclitic/@checked)='yes' or normalize-space(//ip/@conditionWord)='no' and normalize-space(//ip/conditionEnclitic/@checked)='yes' or normalize-space(//ip/@conditionWord)='some' and normalize-space(//ip/conditionProclitic/@checked)='yes' or normalize-space(//ip/@conditionWord)='some' and normalize-space(//ip/conditionEnclitic/@checked)='yes'">
<example num="xIP.IPConditional.22">
<table border="1">
	            <tr>
	            	<th>Clitiques de condition</th>
	               <th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/conditionCliticExample/form[1]">
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
<xsl:for-each select="//ip/conditionCliticExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/conditionCliticExample/form[position() &gt; 1]">
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
	   	<xsl:if test="normalize-space(//ip/@conditionWord)='no' and normalize-space(//ip/conditionPrefix/@checked)='yes' or normalize-space(//ip/@conditionWord)='no' and normalize-space(//ip/conditionSuffix/@checked)='yes' or normalize-space(//ip/@conditionWord)='some' and normalize-space(//ip/conditionPrefix/@checked)='yes' or normalize-space(//ip/@conditionWord)='some' and normalize-space(//ip/conditionSuffix/@checked)='yes'">
<p>
<xsl:text>Voici les affixes qui marquent la condition :</xsl:text>
</p>
</xsl:if>      
	      <xsl:if test="normalize-space(//ip/@conditionWord)='no' and normalize-space(//ip/conditionPrefix/@checked)='yes' or normalize-space(//ip/@conditionWord)='no' and normalize-space(//ip/conditionSuffix/@checked)='yes' or normalize-space(//ip/@conditionWord)='some' and normalize-space(//ip/conditionPrefix/@checked)='yes' or normalize-space(//ip/@conditionWord)='some' and normalize-space(//ip/conditionSuffix/@checked)='yes'">
<example num="xIP.IPConditional.26">
<table border="1">
	            <tr>
	            	<th>Affixes de condition</th>
	               <th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/conditionAffixExample/form[1]">
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
<xsl:for-each select="//ip/conditionAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/conditionAffixExample/form[position() &gt; 1]">
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
	   	<xsl:if test="normalize-space(//ip/@conditionWord)='no' and normalize-space(//ip/conditionOther/@checked)='yes' or normalize-space(//ip/@conditionWord)='some' and normalize-space(//ip/conditionOther/@checked)='yes'">
<p>
<xsl:text>Voici les autres éléments qui marquent la condition en </xsl:text>
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
	      <xsl:if test="normalize-space(//ip/@conditionWord)='no' and normalize-space(//ip/conditionOther/@checked)='yes' or normalize-space(//ip/@conditionWord)='some' and normalize-space(//ip/conditionOther/@checked)='yes'">
<example num="xIP.IPConditional.30">
<table border="1">
	            <tr>
	            	<th>Marqueurs de condition</th>
	               <th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/conditionOtherExample/form[1]">
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
<xsl:for-each select="//ip/conditionOtherExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/conditionOtherExample/form[position() &gt; 1]">
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
	   	<xsl:if test="normalize-space(//ip/@conditionWord)!='mood'">
<p>
<xsl:text>La partie exprimant la conséquence du conditionnel </xsl:text>
<xsl:choose>
	      	<xsl:when test="//ip/@consequence='yes'">peut être marquée par un mot indépendant, qui est obligatoire lorsque le syntagme conditionnel est placé avant la conséquence.  </xsl:when>
	      	<xsl:when test="//ip/@consequence='optional'">peut être marquée par un mot indépendant, mais il est facultatif, même si le syntagme conditionnel se trouve en première position.  </xsl:when>
	      	<xsl:when test="//ip/@consequence='no'">n’est jamais marquée par un mot indépendant.</xsl:when>
</xsl:choose>
<xsl:text>Ce mot vient  </xsl:text>
<xsl:choose>
	         <xsl:when test="//ip/@consequencePos='before'">avant</xsl:when>
	      	<xsl:when test="//ip/@consequencePos='after'">après</xsl:when>
</xsl:choose>
<xsl:text> le reste du syntagme exprimant la conséquence.</xsl:text>
</p>
</xsl:if>
	      
	   </section2>
	   
	   <section2 id="sIPSubjunctive">
	      <secTitle>Subjonctifs</secTitle>
	   	<p contentType="ctComparativeIntro">
<xsl:text>On emploie le mode du subjonctif pour exprimer les notions qui sont spéculatives, qu’on doute, craint, ou désire. Elles ne constituent pas la réalité actuelle. En anglais on n’emploie pas beaucoup les subjonctifs; les exemples ressemblent à des conditionnels, sauf à la première personne, comme suit :  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>If I were in charge, I would fix the problem</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « Si j’étais le responsable, je résoudrais le problème »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>If I were a man, I would be a soccer player</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « Si j’étais un homme, je serais joueur de foot »</xsl:text>
</gloss>
<xsl:text>
	   			Dans les exemples en anglias ci-dessus, le verbe au subjonctif est </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>were</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « étais »</xsl:text>
</gloss>
<xsl:text> et il vient après le mot au conditionnel</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>if</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « si »</xsl:text>
</gloss>
<xsl:text>.  La conséquence est normalement au future.  En français ces phrases seraient à l’imparfait et au conditionel.  La conséquence peut se présenter avant la condition au subjonctif, comme suit : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I would fix the problem if I were in charge</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « Je résoudrais le problème si j’étais le responsable »</xsl:text>
</gloss>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I would be a soccer player if I were a man</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> « Je serais joueur de foot si j’étais un homme »</xsl:text>
</gloss>
<xsl:text>.</xsl:text>
</p>
	   	<p contentType="ctComparativeIntro">
<xsl:text>Dans beaucoup de langues - comme français - les subjonctifs sont employés le plus souvent dans les propositions subordonnées, après les verbe principaux comme </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>exiger</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>douter</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>vouloir</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>craindre</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>souhaiter</langData>
<xsl:text> avec le complémentiseur </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>que</langData>
<xsl:text>.  Les exemples des propositions subordonnées seront traités plus tard à la section </xsl:text>
<sectionRef sec="sComp" />
<xsl:text>. </xsl:text>
</p>
	   	
	   	<p contentType="ctPracticalIntro">
<xsl:text>On emploie le mode du subjonctif pour exprimer les notions qu’on supppose, doute, craint, ou désire. Elles ne constituent pas une réalité actuelle. Les subjonctifs peuvent ressembler aux conditionnels, employés à la première personne.  Dans beaucoup de langues, les subjonctifs s’emploie le plus souvent dans les propositions subordonnées.  On en discutera des exemples à la section </xsl:text>
<sectionRef sec="sComp" />
<xsl:text>. </xsl:text>
</p>
	   	<p>
<xsl:text>Voici quelques exemples de subjonctifs dans des propositions principales en </xsl:text>
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
	      <example num="xIP.IPSubjunctive.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/subjunctiveExample" />
<xsl:with-param name="sExNumber">xIP.IPSubjunctive.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>

	   	<xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='mood'">
<p>
<xsl:text>Comme le montrent les exemples, en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, il n’y a pas de marqueur de la condition dans les subjonctifs ; seul le mode subjonctif est marqué sur le verbe.</xsl:text>
</p>
</xsl:if>
	      
	   	<xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some'">
<p>
<xsl:text>Comme le montrent les exemples, la condition dans les subjonctifs </xsl:text>
<xsl:choose>
	         	<xsl:when test="//ip/@subjunctiveCondWord='yes'">est marquée par des mots indépendants qui se trouvent </xsl:when>
	         	<xsl:when test="//ip/@subjunctiveCondWord='some'">est marquée quelquefois par des mots indépendants qui se trouvent </xsl:when>
	         </xsl:choose>
<xsl:if test="normalize-space(//ip/subjunctiveCondWordBefore/@checked)='yes' and normalize-space(//ip/subjunctiveCondWordAfter/@checked)='no' and normalize-space(//ip/subjunctiveCondWordBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondWordBefore/@checked)='no' and normalize-space(//ip/subjunctiveCondWordAfter/@checked)='yes' and normalize-space(//ip/subjunctiveCondWordBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondWordBefore/@checked)='no' and normalize-space(//ip/subjunctiveCondWordAfter/@checked)='no' and normalize-space(//ip/subjunctiveCondWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondWordBefore/@checked)='yes' and normalize-space(//ip/subjunctiveCondWordAfter/@checked)='yes' and normalize-space(//ip/subjunctiveCondWordBoth/@checked)='no'">
<xsl:text>d’un côte du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondWordBefore/@checked)='yes' and normalize-space(//ip/subjunctiveCondWordAfter/@checked)='no' and normalize-space(//ip/subjunctiveCondWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondWordBefore/@checked)='no' and normalize-space(//ip/subjunctiveCondWordAfter/@checked)='yes' and normalize-space(//ip/subjunctiveCondWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondWordBefore/@checked)='yes' and normalize-space(//ip/subjunctiveCondWordAfter/@checked)='yes' and normalize-space(//ip/subjunctiveCondWordBoth/@checked)='yes'">
<xsl:text>d’un côte du ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondWordOther/@checked)='no'">
<xsl:text>le reste du syntagme conditionnel au subjonctif.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondWordBefore/@checked)='no' and normalize-space(//ip/subjunctiveCondWordAfter/@checked)='no' and normalize-space(//ip/subjunctiveCondWordBoth/@checked)='no' and normalize-space(//ip/subjunctiveCondWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//ip/subjunctiveCondWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondWordBefore/@checked)='yes' and normalize-space(//ip/subjunctiveCondWordOther/@checked)='yes' or normalize-space(//ip/subjunctiveCondWordAfter/@checked)='yes' and normalize-space(//ip/subjunctiveCondWordOther/@checked)='yes' or normalize-space(//ip/subjunctiveCondWordBoth/@checked)='yes' and normalize-space(//ip/subjunctiveCondWordOther/@checked)='yes'">
<xsl:text>le reste du syntagme conditionnel au subjonctif et peut aussi placer  ___</xsl:text>
<xsl:value-of select="//ip/subjunctiveCondWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>  Voici les mots qui marquent la condition dans les subjonctifs sont :</xsl:text>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some'">
<example num="xIP.IPSubjunctive.18">
<table border="1">
	            <tr>
	            	<th>Mots de condition au subjonctif</th>
	               <th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/subjunctiveCondWordExample/form[1]">
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
<xsl:for-each select="//ip/subjunctiveCondWordExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/subjunctiveCondWordExample/form[position() &gt; 1]">
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
	   	<xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='no' or normalize-space(//ip/@subjunctiveCondWord)='some'">
<p>
<xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='no'">
<xsl:text>Comme le montrent les exemples, la condition dans les subjonctifs se marque par </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='some'">
<xsl:text>La condition dans les subjonctifs peut aussi se marquer par </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='no' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='no'">
<xsl:text>des proclitiques syntagmatiques qui se rattachent au début du premier mot du syntagme conditionnel au subjonctif, quel que soit ce mot.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondProclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='no' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='no'">
<xsl:text>des enclitiques syntagmatiques qui se rattachent à la fin du dernier mot du syntagme conditionnel au subjonctif, quel que soit ce mot.    </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='no' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='no'">
<xsl:text>des clitiques syntagmatiques qui se rattachent soit au début du premier mot  du syntagme conditionnel au subjonctif ou à la fin du dernier mot  du syntagme conditionnel au subjonctif.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondProclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='no'">
<xsl:text>des préfixes qui se rattachent au nom noyau du syntagme conditionnel au subjonctif.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondProclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='no' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes'">
<xsl:text>des suffixes qui se rattachent au nom noyau du syntagme conditionnel au subjonctif.   </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondProclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes'">
<xsl:text>des affixes qui se rattachent au nom noyau du syntagme conditionnel au subjonctif.   </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='no' or normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='no' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes' or normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes' or normalize-space(//ip/subjunctiveCondProclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='no' or normalize-space(//ip/subjunctiveCondProclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='no' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes' or normalize-space(//ip/subjunctiveCondProclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes' or normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes' or normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='no' or normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='no' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes' or normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes'">
<xsl:text>soit des clitiques qui se rattachent au début soit à la fin du syntagme conditionnel au subjonctif, ou par des affixes qui se rattachent au nom noyau du syntagme conditionnel au subjonctif.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondProclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='no' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='no' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='no' and normalize-space(//ip/subjunctiveCondOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//ip/subjunctiveCondOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondOther/@checked)='yes' or normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes' and normalize-space(//ip/subjunctiveCondOther/@checked)='yes' or normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' and normalize-space(//ip/subjunctiveCondOther/@checked)='yes' or normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes' and normalize-space(//ip/subjunctiveCondOther/@checked)='yes'">
<xsl:text>  Certains se rattachent ___</xsl:text>
<xsl:value-of select="//ip/subjunctiveCondOther" />  <xsl:text>.</xsl:text>
</xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>   
	   	<xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='no' and normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='no' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some' and normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes'">
<p>
<xsl:text>Voici les clitiques qui marquent la condition au subjonctif :</xsl:text>
</p>
</xsl:if>      
	      <xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='no' and normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='no' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some' and normalize-space(//ip/subjunctiveCondProclitic/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some' and normalize-space(//ip/subjunctiveCondEnclitic/@checked)='yes'">
<example num="xIP.IPSubjunctive.24">
<table border="1">
	            <tr>
	            	<th>Clitiques de condition au subjonctif</th>
	               <th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/subjunctiveCondCliticExample/form[1]">
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
<xsl:for-each select="//ip/subjunctiveCondCliticExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/subjunctiveCondCliticExample/form[position() &gt; 1]">
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
	   	<xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='no' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='no' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes'">
<p>
<xsl:text>Voici les affixes qui marquent la condition au subjonctif :</xsl:text>
</p>
</xsl:if>      
	      <xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='no' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='no' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some' and normalize-space(//ip/subjunctiveCondPrefix/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some' and normalize-space(//ip/subjunctiveCondSuffix/@checked)='yes'">
<example num="xIP.IPSubjunctive.28">
<table border="1">
	            <tr>
	            	<th>Affixes de condition au subjonctif</th>
	               <th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/subjunctiveCondAffixExample/form[1]">
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
<xsl:for-each select="//ip/subjunctiveCondAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/subjunctiveCondAffixExample/form[position() &gt; 1]">
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
	   	<xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='no' and normalize-space(//ip/subjunctiveCondOther/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some' and normalize-space(//ip/subjunctiveCondOther/@checked)='yes'">
<p>
<xsl:text>Voici les autres éléments qui marquent la condition au sujonctif en </xsl:text>
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
	      <xsl:if test="normalize-space(//ip/@subjunctiveCondWord)='no' and normalize-space(//ip/subjunctiveCondOther/@checked)='yes' or normalize-space(//ip/@subjunctiveCondWord)='some' and normalize-space(//ip/subjunctiveCondOther/@checked)='yes'">
<example num="xIP.IPSubjunctive.32">
<table border="1">
	            <tr>
	            	<th>Marqueurs de condition au subjonctif</th>
	               <th>Glose</th>
	            </tr>
	            <tr>
<xsl:for-each select="//ip/subjunctiveCondOtherExample/form[1]">
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
<xsl:for-each select="//ip/subjunctiveCondOtherExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/subjunctiveCondOtherExample/form[position() &gt; 1]">
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
	   
	   <section2 id="sIPPassive">
		  <secTitle>Passifs</secTitle>
		  <p contentType="ctComparativeIntro">
<xsl:text>Beaucoup de langues ont des phrases au passif, dans lesquelles le thème ou le patient occupe la position du sujet. Dans certaines langues, l’agent être exprimé, mais dans d’autres il n’est pas admis. SLorsqu’il est exprimé, il peut l’être par un syntagme prépositionnel ou postpositionnel (comme en français avec la préposition </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>par</langData>
<xsl:text>) ou un syntagme nominal, selon la langue. En plus, un auxiliaire spécifique peut être nécessaire dans les passifs (en français l’auxiliaire </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>être</langData>
<xsl:text>).  Voici quelques exemples en français avec/sans syntagme agent, y compris certains qui comprennent des auxiliaires multiples : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le verre a été cassé</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le verre a été cassé par l’enfant</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>La balle a pu être frappée</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>La balle a pu être frappée par le garçon</langData>
<xsl:text>.</xsl:text>
</p>
	      <p contentType="ctPracticalIntro">
<xsl:text>Dans les phrases passives, le thème ou le patient occupe la position du sujet.  </xsl:text>
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
<xsl:text></xsl:text>
<xsl:choose>
			 	<xsl:when test="//ip/@passive='no'"> il n’y a pas de passif.</xsl:when>
			 	<xsl:when test="//ip/@passive='yes'"> il y a des passifs comme suivent :</xsl:when>
			 </xsl:choose>
</p>
	      <xsl:if test="normalize-space(//ip/@passive)='yes'">
<example num="xIP.IPPassive.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/passiveExample" />
<xsl:with-param name="sExNumber">xIP.IPPassive.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
	      
	      <xsl:if test="normalize-space(//ip/@passive)='yes'">
<p>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//ip/@passive)='yes'">
			 	<xsl:text>L’agent </xsl:text>
				<xsl:choose>
					<xsl:when test="//ip/@passiveAgent='no'">ne n’est pas exprimé.</xsl:when>
					<xsl:when test="//ip/@passiveAgent='yes'">ne n’est pas exprimé</xsl:when>
				</xsl:choose>
				<xsl:text></xsl:text>
				<xsl:if test="normalize-space(//ip/@passiveAgent)='yes'">
				   <xsl:text> par un syntagme </xsl:text>
				   <xsl:choose>
					  <xsl:when test="//ip/@passiveAgentCat='pp'">
						 <xsl:choose>
						 	<xsl:when test="//pp/@pPos='before'">prépositionnel.</xsl:when>
							<xsl:when test="//pp/@pPos='after'">postpositionnel.</xsl:when>
						 	<xsl:when test="//pp/@pPos='both'">prépositionnel ou postpositionnel.</xsl:when>
							<xsl:when test="//pp/@pPos='unknown'">adpositionnel.</xsl:when>
</xsl:choose>
</xsl:when>
					  <xsl:when test="//ip/@passiveAgentCat='dp'">nominal.</xsl:when>
				   </xsl:choose>
				   <xsl:text></xsl:text>
				</xsl:if>
			 	<xsl:text>  Un auxiliaire spécifique </xsl:text>
				<xsl:choose>
					<xsl:when test="//ip/@passiveAux='no'">n’est pas</xsl:when>
				   <xsl:when test="//ip/@passiveAux='yes'">est</xsl:when>
				</xsl:choose>
			 	<xsl:text> nécessaire dans les phrases passives.</xsl:text>
			 </xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>
	   	<xsl:if test="normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp'">
<p>
<xsl:text>Voici la </xsl:text>
<xsl:choose>
			 	<xsl:when test="//pp/@pPos='before'">préposition</xsl:when>
				<xsl:when test="//pp/@pPos='after'">postposition</xsl:when>
			 	<xsl:when test="//pp/@pPos='both'">préposition ou postposition</xsl:when>
			 	<xsl:when test="//pp/@pPos='unknown'">adposition</xsl:when>
</xsl:choose>
<xsl:text> utilisée comme marqueur du syntagme agent en </xsl:text>
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
		  <xsl:if test="normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp'">
<example num="xIP.IPPassive.16">
<table border="1">
				<tr>
					<th>Marqueur d’agent</th>
				   <th>Glose</th>
				</tr>
				<tr>
<xsl:for-each select="//ip/passiveAgentPExample/form[1]">
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
<xsl:for-each select="//ip/passiveAgentPExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/passiveAgentPExample/form[position() &gt; 1]">
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
	   	<xsl:if test="normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes'">
<p>
<xsl:text>Voici l’auxiliaire utilisé dans les passifs en </xsl:text>
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
		  <xsl:if test="normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes'">
<example num="xIP.IPPassive.20">
<table border="1">
				<tr>
					<th>Auxiliaire du passif</th>
				   <th>Glose</th>
				</tr>
				<tr>
<xsl:for-each select="//ip/passiveAuxExample/form[1]">
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
<xsl:for-each select="//ip/passiveAuxExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/passiveAuxExample/form[position() &gt; 1]">
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
	   <xsl:if test="normalize-space(//ip/@antipassive)='yes'">
<section2 id="sIPAntipassives">
	   	<secTitle>Antipassifs</secTitle>
	   	<p contentType="ctComparativeIntro">
<xsl:text>Au lieu de promouvoir l’objet au statut de sujet, comme cela est la cas dans les constructions passives, l’antipassif est une voix verbale qui efface l’objet du verbe transitif. L’antipassif se trouve le plus souvent dans des langues à système casuel ergatif-absolutif, où l’effacement de l’objet modifie le cas du sujet, qui passe de l’ergatif à l’absolutifL’antipassif est aussi relevé dans quelques langues à système casuel nominatif-accusatif, dans les cas où le verbe s’accorde à la fois avec le sujet et l’objet. Dans ces langues, l’antipassif se forme d’habitude en effaçant l’affixe qui marque l’accord de l’objet. La plupart des langues à voix antipassive sont les langues indigènes de l’Australie et de l’Amérique. </xsl:text>
</p>
	   	<p contentType="ctComparativeIntro">
<xsl:text>Tout comme le sujet ou l’agent dans le passif, certaines langues acceptent que l’objet ou le patient soit exprimé facultativement dans un syntagme prépositionnel ou postpositionnel. </xsl:text>
</p>
	   	<p contentType="ctPracticalIntro">
<xsl:text>Au lieu de promouvoir l’objet au statut de sujet, comme cela est le cas pour la voix passive, l’antipassif est une voix verbale qui efface l’objet des verbes transitifs</xsl:text>
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
<xsl:text>, </xsl:text>
<xsl:if test="normalize-space(//typology/@case)='ergative' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='no' and normalize-space(//ip/antipassiveAffix/@checked)='no' or normalize-space(//typology/@case)='split' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='no' and normalize-space(//ip/antipassiveAffix/@checked)='no'">
<xsl:text> le sujet d’un verbe transitif prend le cas absolutif quand l’objet est effacé dans les antipassifs. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/antipassiveErg/@checked)='no' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='no'">
<xsl:text> l’affixe du verbe qui marque l’accord de l’objet est effacé pour signaler un antipassif. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/antipassiveErg/@checked)='no' and normalize-space(//ip/antipassiveAgr/@checked)='no' and normalize-space(//ip/antipassiveAffix/@checked)='yes'">
<xsl:text> il y a un affixe verbal pour l’antipassif qui signale le changement de relations grammaticales. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='no'">
<xsl:text> le sujet d’un verbe transitif prend le cas absolutif quand l’objet est effacé dans les antipassifs ; l’affixe verbal qui marque l’accord de l’objet est effacé pour signaler un antipassif. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='no' and normalize-space(//ip/antipassiveAffix/@checked)='yes'">
<xsl:text> le sujet d’un verbe transitif prend le cas absolutif quand l’objet est effacé dans les antipassifs et qu’il y a un affixe verbal pour l’antipassif qui signale le changement de relations grammaticales. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='yes'">
<xsl:text> le sujet d’un verbe transitif prend le cas absolutif quand l’objet est effacé dans les antipassifs ; l’affixe verbal qui marque l’accord de l’objet est effacé pour signaler un antipassif, et il y a un affixe verbal pour l’antipassif qui signale le changement dans les relations grammaticales. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/antipassiveErg/@checked)='no' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='yes'">
<xsl:text> l’affixe verbal qui marque l’accord de l’objet est effacé pour signaler un antipassif, et il y a un affixe verbal pour l’antipassif qui signale le changement dans les relations grammaticales. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/antipassiveErg/@checked)='no' and normalize-space(//ip/antipassiveAgr/@checked)='no' and normalize-space(//ip/antipassiveAffix/@checked)='no' and normalize-space(//ip/antipassiveOther/@checked)='yes'">
<xsl:text> les antipassifs sont exprimés par  ___</xsl:text>
<xsl:value-of select="//ip/antipassiveOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//ip/antipassiveOther/@checked)='yes' or normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//ip/antipassiveOther/@checked)='yes' or normalize-space(//ip/antipassiveAffix/@checked)='yes' and normalize-space(//ip/antipassiveOther/@checked)='yes'">
<xsl:text> Les antipassifs peuvent aussi être exprimés par ___</xsl:text>
<xsl:value-of select="//ip/antipassiveOther" />
<xsl:text>.</xsl:text>
</xsl:if>
</p>
	   	<xsl:if test="normalize-space(//ip/antipassiveAffix/@checked)='yes'">
<p>
<xsl:text> Voici l’affixe antipassif :</xsl:text>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//ip/antipassiveAffix/@checked)='yes'">
<example num="xIP.IPAntipassives.14">
<table border="1">
				<tr>
					<th>Affixe antipassif</th>
				   <th>Glose</th>
				</tr>
				<tr>
<xsl:for-each select="//ip/antipassiveAffixExample/form[1]">
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
<xsl:for-each select="//ip/antipassiveAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/antipassiveAffixExample/form[position() &gt; 1]">
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
	   	<p>
<xsl:text>Voici quelques exemples des antipassifs en </xsl:text>
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
		  <example num="xIP.IPAntipassives.18">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/antipassiveExample" />
<xsl:with-param name="sExNumber">xIP.IPAntipassives.18</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	   </section2>
</xsl:if>


	   <xsl:if test="normalize-space(//ip/@voice)='yes'">
<section2 id="sIPVoice">
	   	<secTitle>Autres changements de voix</secTitle>
	   	<p contentType="ctComparativeIntro">
<xsl:text>Certaines langues, comme le tagalog et d’autres langues austronésiennes ont des affixes verbaux qui aident à définir les rôles et les relations des syntagmes nominaux dans la phrase. Il s’agit d’un changement de voix semblable au passif, vu qu’il met en relief un syntagme nominal particulier. Les affixes verbaux indiquent quel syntagme nominal est proéminent ; ceci peut entraîner un changement de l’ordre des mots et/ou dans le marquage des cas. Par exemple, en tagalog, le marqueur de voix reflète le rôle de l’argument nominatif.  </xsl:text>
</p>
	   	<p contentType="ctPracticalIntro">
<xsl:text>D’autres affixes verbaux peuvent indiquer un changement de voix semblable au passif parce qu’il met en relief un syntagme nominal particulier. L’affixe indique quel syntagme nominal est proéminent ; ceci peut entraîner un changement dans l’ordre des mots et / ou dans le marquage de cas.</xsl:text>
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
<xsl:text> </xsl:text>
<xsl:choose>
	      	<xsl:when test="//ip/@voiceCase='no'"> les changements de vvoix sont indiqués par des changements dans l’ordre des mots, et non par des marques des cas.</xsl:when>
	      	<xsl:when test="//ip/@voiceCase='yesNom'"> quand un affixe de voix particulier est réalisé sur le verbe, le syntagme nominal correspondant prend la marque du nominatif.</xsl:when>
	      	<xsl:when test="//ip/@voiceCase='yesAbs'"> quand un affixe de voix particulier est réalisé sur le verbe, le syntagme nominal correspondant prend la marque de l’absolutif.</xsl:when>
	      </xsl:choose>
<xsl:text>  Le tableau suivant montre les affixes verbaux qui indiquant la voix de la phrase :</xsl:text>
</p>
		  <example num="xIP.IPVoice.10">
<table border="1">
				<caption>
					<xsl:text>Les affixes de voix sur les verbes</xsl:text>
				</caption>
				<tr>
				   <th>Type de voix</th>
				   <th>
					  Affixes
				   </th>
				</tr>
				<tr>
<td>
				   	<xsl:text>Agent ou Actif</xsl:text>
				   </td>
<xsl:for-each select="//ip/actorVoice/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/actorVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/actorVoice/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
				   	<xsl:text>Objet, Patient, Thème ou Transmission</xsl:text>
				   </td>
<xsl:for-each select="//ip/objectVoice/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/objectVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/objectVoice/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
					  <xsl:text>Datif</xsl:text>
				   </td>
<xsl:for-each select="//ip/dativeVoice/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/dativeVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/dativeVoice/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
					  <xsl:text>Locatif</xsl:text>
				   </td>
<xsl:for-each select="//ip/locativeVoice/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/locativeVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/locativeVoice/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
					  <xsl:text>Instrumental</xsl:text>
				   </td>
<xsl:for-each select="//ip/instrumentalVoice/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/instrumentalVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/instrumentalVoice/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
					  <xsl:text>But</xsl:text>
				   </td>
<xsl:for-each select="//ip/goalVoice/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/goalVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/goalVoice/form[position() &gt; 1]">
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
<xsl:otherwise></xsl:otherwise>
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
	   	<p>
<xsl:text>Voici quelques exemples de phrases qui montrent des changements dans ce type de marquage de voix :</xsl:text>
</p>
		  <example num="xIP.IPVoice.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/voiceExample" />
<xsl:with-param name="sExNumber">xIP.IPVoice.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	   </section2>
</xsl:if>

	   <section2 id="sIPCausatives">
		  <secTitle>Causatifs</secTitle>
	   	<p contentType="ctComparativeIntro">
<xsl:text>Les causatifs permettent d’ajouter un argument supplémentaire à la phrase. Certaines langues ont des phrases causatives à proposition unique, où le verbe est marqué par un affixe qui introduit l’argument supplémentaire. C’est ce type de construction que nous présentons dans cette section. L’anglais et français n’ont que des constructions causatives formées deux propositions, exemples : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Ma mère m’a fait nettoyer ma chambre</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>L’autre fille nous a fait nous séparer</langData>
<xsl:text>.  Ce deuxième type de causatif sera présenté en détail dans la section </xsl:text>
<sectionRef sec="sCompCausative" />
<xsl:text>.</xsl:text>
</p>
	   	<p contentType="ctPracticalIntro">
<xsl:text>Les causatifs permettent d’ajouter un argument supplémentaire à la phrase. Dans les phrases causatives à proposition unique, le verbe est marqué par un affixe qui introduit cet argument. C’est ce type de construction qui est traité ici. Les causatifs syntaxiques formés de deux propositions seront présentés en détail dans la section </xsl:text>
<sectionRef sec="sCompCausative" />
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
<xsl:text> </xsl:text>
<xsl:if test="normalize-space(//ip/causativeAffix/@checked)='yes' and normalize-space(//ip/causativeMake/@checked)='no'">
<xsl:text> il y a un affixe verbal pour le causatif qui introduit un argument supplémentaire. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/causativeAffix/@checked)='no' and normalize-space(//ip/causativeMake/@checked)='yes'">
<xsl:text> il n’y a pas d’affixe verbal causatif.  Les phrases causatives sont formées de deux proposition avec un verbe principal signifiant </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>faire</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>causer</langData>
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/causativeAffix/@checked)='yes' and normalize-space(//ip/causativeMake/@checked)='yes'">
<xsl:text> il y a un affixe verbal pour le causatif qui introduit un argument supplémentaire, et les phrases causatives peuvent aussi être formées de deux propositions dont le verbe principal signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>faire</langData>
<xsl:text> ou </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>causer</langData>
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/causativeAffix/@checked)='no' and normalize-space(//ip/causativeMake/@checked)='no' and normalize-space(//ip/causativeOther/@checked)='yes'">
<xsl:text> il n’y a pas d’affixe verbal causatif. Les causatifs sont exprimés par ___</xsl:text>
<xsl:value-of select="//ip/causativeOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/causativeAffix/@checked)='yes' and normalize-space(//ip/causativeOther/@checked)='yes' or normalize-space(//ip/causativeMake/@checked)='yes' and normalize-space(//ip/causativeOther/@checked)='yes'">
<xsl:text>  Les causatifs peuvent aussi être exprimés par ___</xsl:text>
<xsl:value-of select="//ip/causativeOther" />
<xsl:text>.</xsl:text>
</xsl:if>
</p>
	   	<xsl:if test="normalize-space(//ip/causativeAffix/@checked)='yes'">
<p>
<xsl:text>Voici les affixes causatifs :</xsl:text>
</p>
</xsl:if>
		  <xsl:if test="normalize-space(//ip/causativeAffix/@checked)='yes'">
<example num="xIP.IPCausatives.12">
<table border="1">
				<tr>
					<th>Affixes causatifs</th>
				   <th>Glose</th>
				</tr>
				<tr>
<xsl:for-each select="//ip/causativeAffixExample/form[1]">
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
<xsl:for-each select="//ip/causativeAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/causativeAffixExample/form[position() &gt; 1]">
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
	   	<xsl:if test="normalize-space(//ip/causativeAffix/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de phrases causatives à proposition unique : </xsl:text>
</p>
</xsl:if>
		  <xsl:if test="normalize-space(//ip/causativeAffix/@checked)='yes'">
<example num="xIP.IPCausatives.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/causativeExample" />
<xsl:with-param name="sExNumber">xIP.IPCausatives.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
	   	<xsl:if test="normalize-space(//ip/causativeMake/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de phrases causatives syntaxiques qui consistent en deux propositions : </xsl:text>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//ip/causativeMake/@checked)='yes'">
<example num="xIP.IPCausatives.20">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/causativeMakeExample" />
<xsl:with-param name="sExNumber">xIP.IPCausatives.20</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
	   	<xsl:if test="normalize-space(//ip/causativeOther/@checked)='yes'">
<p>
<xsl:text>Voici quelques exemples de l’autre type de phrases causatives possibles en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> : </xsl:text>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//ip/causativeOther/@checked)='yes'">
<example num="xIP.IPCausatives.24">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/causativeOtherExample" />
<xsl:with-param name="sExNumber">xIP.IPCausatives.24</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
	      
	   </section2>
		<xsl:if test="normalize-space(//ip/@applicative)='yes'">
<section2 id="sIPApplicatives">
			<secTitle>Applicatifs</secTitle>
			<p contentType="ctComparativeIntro">
<xsl:text>Certaines langues ont une construction supplémentaire applicative. L’applicatif est une voix verbale qui promeut l’argument oblique du verbe à l’argument objet, et qui indique le rôle oblique dans le sens du verbe. Un verbe intransitif devient transitif, et un verbe transitif devient ditransitif quand l’affixe applicatif y est rattaché. C’est le contraire des constructions avec des adpositions pour ces arguments. </xsl:text>
</p>
			<p contentType="ctComparativeIntro">
<xsl:text>Les applicatifs peuvent exprimer le comitatif, le locatif, le instrumental et le bénéfactif. Certaines langues admettent plus d’un applicatif pour un seul verbe.</xsl:text>
</p>
			<p contentType="ctPracticalIntro">
<xsl:text>L’applicatif est une voix verbale qui promeut l’argument oblique du verbe à l’argument objet, et qui indique le rôle oblique dans le sens du verbe. Un verbe intransitif devient transitif, et un verbe transitif devient ditransitif quand l’affixe applicatif y est rattaché.</xsl:text>
</p>
			<p>
<xsl:text>Voici les affixes qui utilisés pour marquer les applicatifs en </xsl:text>
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
			<example num="xIP.IPApplicatives.12">
<table border="1">
					<tr>
						<th>Affixes applicatifs</th>
						<th>Glose</th>
					</tr>
					<tr>
<xsl:for-each select="//ip/applicativeVoice/form[1]">
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
<xsl:for-each select="//ip/applicativeVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/applicativeVoice/form[position() &gt; 1]">
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
			<p>
<xsl:text>Voici quelques exemples d’applicatifs en </xsl:text>
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
			<example num="xIP.IPApplicatives.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/applicativeExample" />
<xsl:with-param name="sExNumber">xIP.IPApplicatives.16</xsl:with-param>
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
