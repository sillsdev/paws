<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="v">
	<section1 id="sV">
		<secTitle>Verbes</secTitle>
		<p>
<xsl:text>Les verbes expriment les actions, les états ou les émotions. D’abord, les types de flexion verbale et les caractéristiques de l’accord verbal seront traités en premier, puis quelques paradigmes verbaux seront présentés. Dans la section </xsl:text>
<sectionRef sec="sIPProDrop" />
<xsl:text> les contextes dans lesquels le sujet est omis seront abordés, et les auxiliaires seront traités dans la section </xsl:text>
<sectionRef sec="sIPAux" />
<xsl:text>, suivis par les composés verbaux. Les exemples des verbes utilisés dans les phrases se trouvent dans la section </xsl:text>
<sectionRef sec="sIP" />
<xsl:text>.  Les constructions plus complexes seront abordées dans les sections </xsl:text>
<sectionRef sec="sFocus" />
<xsl:text> - </xsl:text>
<sectionRef sec="sRelCl" />
<xsl:text>.</xsl:text>
</p>
		<section2 id="sIPInfl">
			<secTitle>Caractéristiques flexionnelles</secTitle>
			<p>
<xsl:text>Les verbes et les auxiliaires portent  généralement des caractéristiquesflexionnelles, telles que  le temps, l’aspect et / ou le mode. Dans la plupart des cas, ces caractéristiques sont ajoutées par des affixes, mais elles peuvent aussi faire partie de formes verbales irrégulières.</xsl:text>
</p>
			<p>
<xsl:text>Les caractérisques flexionnelles suivantes sont marquées sur les verbes et / ou sur les auxiliaires en </xsl:text>
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
			<example num="xV.IPInfl.8">
<table border="1">
					<tr>
						<th>Type de caractéristique</th>
						<th>Caractéristique</th>
						<th>Morphèmes</th>
						<th>Autres restrictions</th>
					</tr>
					<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
<td>
							<xsl:text>temps</xsl:text>
						</td>
<td>
							<xsl:text>présent</xsl:text>
						</td>
<xsl:for-each select="//ip/presentTense/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/presentTense/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/presentTense/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
<td>
							<xsl:text>temps</xsl:text>
						</td>
<td>
							<xsl:text>passé</xsl:text>
						</td>
<xsl:for-each select="//ip/pastTense/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/pastTense/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/pastTense/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
<td>
							<xsl:text>temps</xsl:text>
						</td>
<td>
							<xsl:text>futur</xsl:text>
						</td>
<xsl:for-each select="//ip/futureTense/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/futureTense/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/futureTense/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
<td>
				         <xsl:text>temps</xsl:text>
				      </td>
<td>
				      	<xsl:text>non passé</xsl:text>
				      </td>
<xsl:for-each select="//ip/nonPastTense/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/nonPastTense/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/nonPastTense/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
<td>
				         <xsl:text>temps</xsl:text>
				      </td>
<td>
				         <xsl:text>non futur</xsl:text>
				      </td>
<xsl:for-each select="//ip/nonFutureTense/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/nonFutureTense/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/nonFutureTense/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
<td>
							<xsl:text>temps</xsl:text>
						</td>
<td>
							<xsl:text></xsl:text>
						</td>
<xsl:for-each select="//ip/otherTense/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/otherTense/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/otherTense/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
<td>
				         <xsl:text>aspect</xsl:text>
				      </td>
<td>
				      	<xsl:text>complétif</xsl:text>
				      </td>
<xsl:for-each select="//ip/completiveAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/completiveAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/completiveAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
<td>
				         <xsl:text>aspect</xsl:text>
				      </td>
<td>
				         <xsl:text>contemplatif</xsl:text>
				      </td>
<xsl:for-each select="//ip/contemplativeAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/contemplativeAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/contemplativeAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
<td>
				         <xsl:text>aspect</xsl:text>
				      </td>
<td>
				         <xsl:text>contrefactuel</xsl:text>
				      </td>
<xsl:for-each select="//ip/contrafactualAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/contrafactualAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/contrafactualAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
<td>
							<xsl:text>aspect</xsl:text>
						</td>
<td>
							<xsl:text>continuatif</xsl:text>
						</td>
<xsl:for-each select="//ip/continuativeAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/continuativeAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/continuativeAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
<td>
							<xsl:text>aspect</xsl:text>
						</td>
<td>
							<xsl:text>habituel</xsl:text>
						</td>
<xsl:for-each select="//ip/habitualAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/habitualAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/habitualAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
<td>
							<xsl:text>aspect</xsl:text>
						</td>
<td>
							<xsl:text>imparfait</xsl:text>
						</td>
<xsl:for-each select="//ip/imperfectAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/imperfectAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/imperfectAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
<td>
				         <xsl:text>aspect</xsl:text>
				      </td>
<td>
				         <xsl:text>imperfectif</xsl:text>
				      </td>
<xsl:for-each select="//ip/imperfectiveAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/imperfectiveAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/imperfectiveAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
<td>
							<xsl:text>aspect</xsl:text>
						</td>
<td>
							<xsl:text>incomplétif</xsl:text>
						</td>
<xsl:for-each select="//ip/incompletiveAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/incompletiveAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/incompletiveAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
<td>
				         <xsl:text>aspect</xsl:text>
				      </td>
<td>
				         <xsl:text>parfait</xsl:text>
				      </td>
<xsl:for-each select="//ip/perfectAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/perfectAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/perfectAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
<td>
							<xsl:text>aspect</xsl:text>
						</td>
<td>
							<xsl:text>perfectif</xsl:text>
						</td>
<xsl:for-each select="//ip/perfectiveAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/perfectiveAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/perfectiveAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
<td>
							<xsl:text>aspect</xsl:text>
						</td>
<td>
							<xsl:text>potentiel</xsl:text>
						</td>
<xsl:for-each select="//ip/potentialAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/potentialAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/potentialAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
<td>
							<xsl:text>aspect</xsl:text>
						</td>
<td>
							<xsl:text>progressif</xsl:text>
						</td>
<xsl:for-each select="//ip/progressiveAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/progressiveAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/progressiveAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
<td>
							<xsl:text>aspect</xsl:text>
						</td>
<td>
							<xsl:text>intentionnel</xsl:text>
						</td>
<xsl:for-each select="//ip/purposiveAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/purposiveAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/purposiveAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
<td>
							<xsl:text>aspect</xsl:text>
						</td>
<td>
							<xsl:text>statif</xsl:text>
						</td>
<xsl:for-each select="//ip/stativeAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/stativeAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/stativeAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
<td>
				         <xsl:text>aspect</xsl:text>
				      </td>
<td>
				      	<xsl:text>irréel</xsl:text>
				      </td>
<xsl:for-each select="//ip/unrealAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/unrealAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/unrealAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
<td>
							<xsl:text>aspect</xsl:text>
						</td>
<td>
							<xsl:text></xsl:text>
						</td>
<xsl:for-each select="//ip/otherAspect/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/otherAspect/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/otherAspect/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatDeclarative/@checked)='yes'">
<tr>
<td>
							<xsl:text>mode</xsl:text>
						</td>
<td>
							<xsl:text>déclaratif</xsl:text>
						</td>
<xsl:for-each select="//ip/declarativeMood/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/declarativeMood/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/declarativeMood/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatIndicative/@checked)='yes'">
<tr>
<td>
				         <xsl:text>mode</xsl:text>
				      </td>
<td>
				         <xsl:text>indicatif</xsl:text>
				      </td>
<xsl:for-each select="//ip/indicativeMood/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/indicativeMood/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/indicativeMood/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatRealis/@checked)='yes'">
<tr>
<td>
				         <xsl:text>mode</xsl:text>
				      </td>
<td>
				      	<xsl:text>réel</xsl:text>
				      </td>
<xsl:for-each select="//ip/realisMood/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/realisMood/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/realisMood/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatImperative/@checked)='yes'">
<tr>
<td>
							<xsl:text>mode</xsl:text>
						</td>
<td>
							<xsl:text>impératif</xsl:text>
						</td>
<xsl:for-each select="//ip/imperativeMood/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/imperativeMood/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/imperativeMood/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatInterrogative/@checked)='yes'">
<tr>
<td>
							<xsl:text>mode</xsl:text>
						</td>
<td>
							<xsl:text>interrogatif</xsl:text>
						</td>
<xsl:for-each select="//ip/interrogativeMood/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/interrogativeMood/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/interrogativeMood/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipinflFeatConditional/@checked)='yes'">
<tr>
<td>
				         <xsl:text>mode</xsl:text>
				      </td>
<td>
				         <xsl:text>conditionnel</xsl:text>
				      </td>
<xsl:for-each select="//ip/conditionalMood/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/conditionalMood/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/conditionalMood/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
<td>
				         <xsl:text>mode</xsl:text>
				      </td>
<td>
				         <xsl:text>subjonctif</xsl:text>
				      </td>
<xsl:for-each select="//ip/subjunctiveMood/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/subjunctiveMood/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/subjunctiveMood/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatIrrealis/@checked)='yes'">
<tr>
<td>
							<xsl:text>mode</xsl:text>
						</td>
<td>
							<xsl:text>irréel</xsl:text>
						</td>
<xsl:for-each select="//ip/irrealisMood/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/irrealisMood/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/irrealisMood/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatOtherMood/@checked)='yes'">
<tr>
<td>
							<xsl:text>mode</xsl:text>
						</td>
<td>
							<xsl:text></xsl:text>
						</td>
<xsl:for-each select="//ip/otherMood/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/otherMood/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/otherMood/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatWitness/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>témoin</xsl:text>
</td>
<xsl:for-each select="//ip/witnessEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/witnessEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/witnessEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatNonwitness/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>non-témoin</xsl:text>
</td>
<xsl:for-each select="//ip/nonwitnessEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/nonwitnessEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/nonwitnessEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatFirsthand/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>de première main</xsl:text>
</td>
<xsl:for-each select="//ip/firsthandEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firsthandEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firsthandEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatSecondhand/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>de seconde main</xsl:text>
</td>
<xsl:for-each select="//ip/secondhandEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/secondhandEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/secondhandEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatThirdhand/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>de troisième main</xsl:text>
</td>
<xsl:for-each select="//ip/thirdhandEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/thirdhandEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/thirdhandEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatVisual/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>visuel</xsl:text>
</td>
<xsl:for-each select="//ip/visualEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/visualEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/visualEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatAuditory/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>auditif</xsl:text>
</td>
<xsl:for-each select="//ip/auditoryEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/auditoryEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/auditoryEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatOlfactory/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>olfactif</xsl:text>
</td>
<xsl:for-each select="//ip/olfactoryEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/olfactoryEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/olfactoryEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatInferential/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>inférentiel</xsl:text>
</td>
<xsl:for-each select="//ip/inferentialEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/inferentialEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/inferentialEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatReportative/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>rapporté</xsl:text>
</td>
<xsl:for-each select="//ip/reportativeEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/reportativeEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/reportativeEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatHearsay/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>ouï-dire</xsl:text>
</td>
<xsl:for-each select="//ip/hearsayEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/hearsayEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/hearsayEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatQuotative/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>quotatif</xsl:text>
</td>
<xsl:for-each select="//ip/quotativeEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/quotativeEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/quotativeEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatAssumed/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text>supposé</xsl:text>
</td>
<xsl:for-each select="//ip/assumedEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/assumedEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/assumedEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatOtherEvident/@checked)='yes'">
<tr>
<td>
<xsl:text>évidentialité</xsl:text>
</td>
<td>
<xsl:text></xsl:text>
</td>
<xsl:for-each select="//ip/otherEvident/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/otherEvident/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/otherEvident/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					
					<xsl:if test="normalize-space(//ip/ipInflFeatFinite/@checked)='yes'">
<tr>
<td>
				         <xsl:text>autre</xsl:text>
				      </td>
<td>
				         <xsl:text>fini</xsl:text>
				      </td>
<xsl:for-each select="//ip/finiteOther/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/finiteOther/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/finiteOther/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatMinusFinite/@checked)='yes'">
<tr>
<td>
				         <xsl:text>autre</xsl:text>
				      </td>
<td>
				         <xsl:text>non-fini</xsl:text>
				      </td>
<xsl:for-each select="//ip/nonfiniteOther/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/nonfiniteOther/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/nonfiniteOther/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatGerund/@checked)='yes'">
<tr>
<td>
				         <xsl:text>autre</xsl:text>
				      </td>
<td>
				      	<xsl:text>gérondif</xsl:text>
				      </td>
<xsl:for-each select="//ip/gerundOther/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/gerundOther/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/gerundOther/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatParticiple/@checked)='yes'">
<tr>
<td>
				         <xsl:text>autre</xsl:text>
				      </td>
<td>
				         <xsl:text>participe</xsl:text>
				      </td>
<xsl:for-each select="//ip/participleOther/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/participleOther/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/participleOther/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatAntipassive/@checked)='yes'">
<tr>
<td>
				         <xsl:text>voix</xsl:text>
				      </td>
<td>
				         <xsl:text>antipassif</xsl:text>
				      </td>
<xsl:for-each select="//ip/antipassiveVoice/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/antipassiveVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/antipassiveVoice/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   	<xsl:if test="normalize-space(//ip/ipInflFeatApplicative/@checked)='yes'">
<tr>
<td>
				   			<xsl:text>voix</xsl:text>
				   		</td>
<td>
				   			<xsl:text>applicatif</xsl:text>
				   		</td>
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
<xsl:otherwise></xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
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
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatCausative/@checked)='yes'">
<tr>
<td>
				         <xsl:text>voix</xsl:text>
				      </td>
<td>
				         <xsl:text>causatif</xsl:text>
				      </td>
<xsl:for-each select="//ip/causativeVoice/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/causativeVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/causativeVoice/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>	
				   <xsl:if test="normalize-space(//ip/ipInflFeatPassive/@checked)='yes'">
<tr>
<td>
							<xsl:text>voix</xsl:text>
						</td>
<td>
							<xsl:text>passif</xsl:text>
						</td>
<xsl:for-each select="//ip/passiveVoice/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/passiveVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/passiveVoice/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatActorVoice/@checked)='yes'">
<tr>
<td>
				         <xsl:text>voix</xsl:text>
				      </td>
<td>
				      	<xsl:text>voix d’actant</xsl:text>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatDativeVoice/@checked)='yes'">
<tr>
<td>
				         <xsl:text>voix</xsl:text>
				      </td>
<td>
				         <xsl:text>voix dative</xsl:text>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatGoalVoice/@checked)='yes'">
<tr>
<td>
				         <xsl:text>voix</xsl:text>
				      </td>
<td>
				         <xsl:text>voix de finalité</xsl:text>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatInstrumentalVoice/@checked)='yes'">
<tr>
<td>
				         <xsl:text>voix</xsl:text>
				      </td>
<td>
				         <xsl:text>voix instrumentale</xsl:text>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatLocativeVoice/@checked)='yes'">
<tr>
<td>
				         <xsl:text>voix</xsl:text>
				      </td>
<td>
				         <xsl:text>voix locative</xsl:text>
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
</xsl:if>
				   <xsl:if test="normalize-space(//ip/ipInflFeatObjectVoice/@checked)='yes'">
<tr>
<td>
				         <xsl:text>voix</xsl:text>
				      </td>
<td>
				      	<xsl:text>voix objet</xsl:text>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipInflFeatOtherVoice/@checked)='yes'">
<tr>
<td>
<xsl:text>voix</xsl:text>
</td>
<td>
<xsl:text></xsl:text>
</td>
<xsl:for-each select="//ip/otherVoice/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/otherVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/otherVoice/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				</table>
</example>
		</section2>
		<section2 id="sIPAgr">
			<secTitle>Caractéristiques d’accord</secTitle>
			<p>
<xsl:text>Les verbes et les auxiliaires peuvent aussi porter les marques d’accord qui correspondent au sujet ou à l’objet direct.  La plupart de ces caractéristiques se font par des affixes ou par des clitiques pronominaux rattaches au verbe.  </xsl:text>
<xsl:if test="normalize-space(//typology/@classifier)!='no'">
<xsl:text>L’accord de classe a déjà été présenté dans la section </xsl:text>
<sectionRef sec="sClassifiers" />
<xsl:text>.</xsl:text>
</xsl:if>
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
<xsl:text> les caractéristiques d’accord suivantes sont marquées sur les verbes et / ou sur les auxiliaires :</xsl:text>
</p>
			<example num="xV.IPAgr.8">
<table border="1">
					<tr>
						<th>Type de caractéristique</th>
						<th>Caractéristique</th>
					   <th>Morphèmes</th>
						<th>Autres restrictions</th>
					</tr>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne sujet </xsl:text>
						</td>
<xsl:for-each select="//ip/firstSubjectPerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstSubjectPerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstSubjectPerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne objet </xsl:text>
						</td>
<xsl:for-each select="//ip/firstObjectPerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstObjectPerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstObjectPerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatFirstErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne argument ergatif</xsl:text>
						</td>
<xsl:for-each select="//ip/firstErgativePerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstErgativePerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstErgativePerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatFirstAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne argument absolutif</xsl:text>
						</td>
<xsl:for-each select="//ip/firstAbsolutivePerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstAbsolutivePerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstAbsolutivePerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstExclusiveSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne sujet exclusif</xsl:text>
						</td>
<xsl:for-each select="//ip/firstExclusiveSubjectPerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstExclusiveSubjectPerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstExclusiveSubjectPerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstExclusiveObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne objet exclusif</xsl:text>
						</td>
<xsl:for-each select="//ip/firstExclusiveObjectPerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstExclusiveObjectPerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstExclusiveObjectPerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstExclusiveErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatFirstExclusiveErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne argument ergatif exclusif</xsl:text>
						</td>
<xsl:for-each select="//ip/firstExclusiveErgativePerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstExclusiveErgativePerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstExclusiveErgativePerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstExclusiveAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatFirstExculsiveAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne argument absolutif exclusif</xsl:text>
						</td>
<xsl:for-each select="//ip/firstExclusiveAbsolutivePerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstExclusiveAbsolutivePerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstExclusiveAbsolutivePerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstInclusiveSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne sujet inclusif</xsl:text>
						</td>
<xsl:for-each select="//ip/firstInclusiveSubjectPerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstInclusiveSubjectPerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstInclusiveSubjectPerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstInclusiveObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne objet inclusif</xsl:text>
						</td>
<xsl:for-each select="//ip/firstInclusiveObjectPerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstInclusiveObjectPerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstInclusiveObjectPerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstInclusiveErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatFirstInclusiveErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne argument ergatif inclusif</xsl:text>
						</td>
<xsl:for-each select="//ip/firstInclusiveErgativePerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstInclusiveErgativePerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstInclusiveErgativePerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstInclusiveAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatFirstInclusiveAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>première personne argument absolutif inclusif</xsl:text>
						</td>
<xsl:for-each select="//ip/firstInclusiveAbsolutivePerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/firstInclusiveAbsolutivePerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/firstInclusiveAbsolutivePerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatSecondSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>deuxième personne sujet</xsl:text>
						</td>
<xsl:for-each select="//ip/secondSubjectPerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/secondSubjectPerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/secondSubjectPerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatSecondObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>deuxième personne objet</xsl:text>
						</td>
<xsl:for-each select="//ip/secondObjectPerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/secondObjectPerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/secondObjectPerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatSecondErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatSecondErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>deuxième personne argument ergatif</xsl:text>
						</td>
<xsl:for-each select="//ip/secondErgativePerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/secondErgativePerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/secondErgativePerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatSecondAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatSecondAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>deuxième personne argument absolutif</xsl:text>
						</td>
<xsl:for-each select="//ip/secondAbsolutivePerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/secondAbsolutivePerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/secondAbsolutivePerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatThirdSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>troisième personne sujet</xsl:text>
						</td>
<xsl:for-each select="//ip/thirdSubjectPerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/thirdSubjectPerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/thirdSubjectPerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatThirdObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>troisième personne objet</xsl:text>
						</td>
<xsl:for-each select="//ip/thirdObjectPerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/thirdObjectPerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/thirdObjectPerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatThirdErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatThirdErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>troisième personne argument ergatif</xsl:text>
						</td>
<xsl:for-each select="//ip/thirdErgativePerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/thirdErgativePerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/thirdErgativePerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatThirdAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatThirdAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>personne</xsl:text>
						</td>
<td>
							<xsl:text>troisième personne argument absolutif</xsl:text>
						</td>
<xsl:for-each select="//ip/thirdAbsolutivePerson/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/thirdAbsolutivePerson/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/thirdAbsolutivePerson/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatSingularSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>sujet singulier</xsl:text>
						</td>
<xsl:for-each select="//ip/singularSubjectNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/singularSubjectNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/singularSubjectNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatSingularObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>objet singulier</xsl:text>
						</td>
<xsl:for-each select="//ip/singularObjectNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/singularObjectNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/singularObjectNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatSingularErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatSingularErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>argument ergatif singulier</xsl:text>
						</td>
<xsl:for-each select="//ip/singularErgativeNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/singularErgativeNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/singularErgativeNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatSingularAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatSingularAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>argument absolutif singulier</xsl:text>
						</td>
<xsl:for-each select="//ip/singularAbsolutiveNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/singularAbsolutiveNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/singularAbsolutiveNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatDualSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>sujet duel</xsl:text>
						</td>
<xsl:for-each select="//ip/dualSubjectNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/dualSubjectNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/dualSubjectNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatDualObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>objet duel</xsl:text>
						</td>
<xsl:for-each select="//ip/dualObjectNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/dualObjectNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/dualObjectNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatDualErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatDualErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>argument ergatif duel</xsl:text>
						</td>
<xsl:for-each select="//ip/dualErgativeNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/dualErgativeNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/dualErgativeNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatDualAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatDualAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>argument absolutif duel</xsl:text>
						</td>
<xsl:for-each select="//ip/dualAbsolutiveNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/dualAbsolutiveNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/dualAbsolutiveNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatPluralSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>sujet pluriel</xsl:text>
						</td>
<xsl:for-each select="//ip/pluralSubjectNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/pluralSubjectNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/pluralSubjectNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatPluralObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>objet pluriel</xsl:text>
						</td>
<xsl:for-each select="//ip/pluralObjectNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/pluralObjectNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/pluralObjectNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatPluralErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatPluralErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>argument ergatif pluriel</xsl:text>
						</td>
<xsl:for-each select="//ip/pluralErgativeNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/pluralErgativeNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/pluralErgativeNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatPluralAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatPluralAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>nombre</xsl:text>
						</td>
<td>
							<xsl:text>argument absolutif pluriel</xsl:text>
						</td>
<xsl:for-each select="//ip/pluralAbsolutiveNumber/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/pluralAbsolutiveNumber/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/pluralAbsolutiveNumber/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMasculineSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>sujet masculin</xsl:text>
						</td>
<xsl:for-each select="//ip/masculineSubjectGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/masculineSubjectGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/masculineSubjectGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMasculineObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>objet masculin</xsl:text>
						</td>
<xsl:for-each select="//ip/masculineObjectGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/masculineObjectGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/masculineObjectGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMasculineErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatMasculineErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>argument ergatif masculin</xsl:text>
						</td>
<xsl:for-each select="//ip/masculineErgativeGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/masculineErgativeGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/masculineErgativeGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMasculineAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatMasculineAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>argument absolutif masculin</xsl:text>
						</td>
<xsl:for-each select="//ip/masculineErgativeGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/masculineErgativeGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/masculineErgativeGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFeminineSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>sujet féminin</xsl:text>
						</td>
<xsl:for-each select="//ip/feminineSubjectGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/feminineSubjectGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/feminineSubjectGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFeminineObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>objet féminin</xsl:text>
						</td>
<xsl:for-each select="//ip/feminineObjectGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/feminineObjectGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/feminineObjectGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFeminineErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatFeminineErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>argument ergatif féminin</xsl:text>
						</td>
<xsl:for-each select="//ip/feminineErgativeGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/feminineErgativeGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/feminineErgativeGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFeminineAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatFeminineAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>argument absolutif féminin</xsl:text>
						</td>
<xsl:for-each select="//ip/feminineAbsolutiveGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/feminineAbsolutiveGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/feminineAbsolutiveGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatNeuterSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>sujet neutre</xsl:text>
						</td>
<xsl:for-each select="//ip/neuterSubjectGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/neuterSubjectGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/neuterSubjectGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatNeuterObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>objet neutre</xsl:text>
						</td>
<xsl:for-each select="//ip/neuterObjectGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/neuterObjectGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/neuterObjectGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatNeuterErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatNeuterErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>argument ergatif neutre</xsl:text>
						</td>
<xsl:for-each select="//ip/neuterErgativeGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/neuterErgativeGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/neuterErgativeGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatNeuterAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatNeuterAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>genre</xsl:text>
						</td>
<td>
							<xsl:text>argument absolutif neutre</xsl:text>
						</td>
<xsl:for-each select="//ip/neuterAbsolutiveGender/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/neuterAbsolutiveGender/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/neuterAbsolutiveGender/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatAnimateSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>sujet animé</xsl:text>
						</td>
<xsl:for-each select="//ip/animateSubjectAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/animateSubjectAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/animateSubjectAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatAnimateObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>objet animé</xsl:text>
						</td>
<xsl:for-each select="//ip/animateObjectAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/animateObjectAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/animateObjectAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatAnimateErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatAnimateErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>argument ergatif animé</xsl:text>
						</td>
<xsl:for-each select="//ip/animateErgativeAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/animateErgativeAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/animateErgativeAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatAnimateAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatAnimateAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>argument absolutif animé</xsl:text>
						</td>
<xsl:for-each select="//ip/animateAbsolutiveAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/animateAbsolutiveAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/animateAbsolutiveAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMinusAnimateSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>sujet inanimé</xsl:text>
						</td>
<xsl:for-each select="//ip/inanimateSubjectAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/inanimateSubjectAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/inanimateSubjectAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMinusAnimateObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>objet inanimé</xsl:text>
						</td>
<xsl:for-each select="//ip/inanimateObjectAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/inanimateObjectAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/inanimateObjectAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMinusAnimateErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatMinusAnimateErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>argument ergatif inanimé</xsl:text>
						</td>
<xsl:for-each select="//ip/inanimateErgativeAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/inanimateErgativeAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/inanimateErgativeAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMinusAnimateAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatMinusAnimateAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>argument absolutif inanimé</xsl:text>
						</td>
<xsl:for-each select="//ip/inanimateAbsolutiveAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/inanimateAbsolutiveAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/inanimateAbsolutiveAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatHumanSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>sujet humain</xsl:text>
						</td>
<xsl:for-each select="//ip/humanSubjectAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/humanSubjectAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/humanSubjectAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatHumanObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>objet humain</xsl:text>
						</td>
<xsl:for-each select="//ip/humanObjectAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/humanObjectAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/humanObjectAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatHumanErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatHumanErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>argument ergatif humain</xsl:text>
						</td>
<xsl:for-each select="//ip/humanErgativeAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/humanErgativeAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/humanErgativeAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatHumanAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatHumanAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>argument absolutif humain</xsl:text>
						</td>
<xsl:for-each select="//ip/humanAbsolutiveAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/humanAbsolutiveAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/humanAbsolutiveAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMinusHumanSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>sujet non-humain</xsl:text>
						</td>
<xsl:for-each select="//ip/nonhumanSubjectAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/nonhumanSubjectAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/nonhumanSubjectAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMinusHumanObject/@checked)='yes'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>objet non-humain</xsl:text>
						</td>
<xsl:for-each select="//ip/nonhumanObjectAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/nonhumanObjectAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/nonhumanObjectAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMinusHumanErgative/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatMinusHumanErgative/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>argument ergatif non-humain</xsl:text>
						</td>
<xsl:for-each select="//ip/nonhumanErgativeAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/nonhumanErgativeAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/nonhumanErgativeAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
					<xsl:if test="normalize-space(//ip/ipAgrFeatMinusHumanAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='ergative' or normalize-space(//ip/ipAgrFeatMinusHumanAbsolutive/@checked)='yes' and normalize-space(//typology/@case)='split'">
<tr>
<td>
							<xsl:text>animéité</xsl:text>
						</td>
<td>
							<xsl:text>argument absolutif non-humain</xsl:text>
						</td>
<xsl:for-each select="//ip/nonhumanAbsolutiveAnimacy/form[1]">
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
<td> </td>
<xsl:for-each select="//ip/nonhumanAbsolutiveAnimacy/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/nonhumanAbsolutiveAnimacy/form[position() &gt; 1]">
<tr>
<td> </td>
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
</xsl:if>
				</table>
</example>
			<p>
<xsl:text>Certaines ou toutes ces caractéristiques peuvent être exprimées sous forme de morphèmes mot-valise qui combinent plus d’une caractéristique sous une seule forme. Il est probable que ces morphèmes de mot-valise soient les formes de pronoms dépendants montrées plus haut dans </xsl:text>
<sectionRef sec="sPronPersonal" />
<xsl:text>.</xsl:text>
</p>	</section2>
	   <section2 id="sVerbParadigms">
	   	<secTitle>Les paradigmes verbaux</secTitle>
	   	<p>
<xsl:text>Les paradigmes illustrent sous forme de tableau certains changements qui ont lieu quand les morphèmes de flexion et d’accord se rattachent à des verbes spécifiques. Certains verbes sont réguliers, d’autres sont irréguliers.</xsl:text>
</p>
	  <section3 id="sVerbParadigmsRegular">
	  	<secTitle>Paradigmes pour certains verbes réguliers</secTitle>
	  	<p>
<xsl:text>Voici les paradigmes de quatre verbes réguliers :   </xsl:text>
<object type="tComment">Vous devrez rajouter les formes dans chaque case. Vous pouvez changer de verbes si ceux qui sont proposés ne sont pas réguliers dans votre langue.  
	  		<xsl:choose>
	  			<xsl:when test="//pron/@dependentPron='yes'"> Vous pouvez supprimer des colonnes si le tableau en pdf est trop large.</xsl:when>
	  			<xsl:when test="//pron/@dependentPron='no'"> Puisqu’en votre langue les verbes ne changent pas pour un sujet différent, les paradigmes sont assez simples. Peut-être aurez-vous besoin d’ajouter des colonnes pour autres changements qui sont marqués dans les verbes.</xsl:when>
	  		</xsl:choose>
</object>
</p>

	  		     <xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.6">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« parler »</langData>
</caption>
	           <tr>
	              <th>Temps / Aspect</th>
	              <th>Forme de verbe</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.8">
<table border="1">
	  			<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« parler »</langData>
</caption>
	  			<tr>
	  				<th>Sujet</th>
	  				<th>1ère</th>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusif</th>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusif</th>
</xsl:if>
	  				<th>2ème</th>
	  				<th>3ème</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  		</table>
</tablenumbered>
</xsl:if>
	  	
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='yes' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.10">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« parler »</langData>
</caption>
	           <tr>
	              <th>Sujet</th>
	              <th>1ère Sing</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>1ère Pl</th>
</xsl:if>
	              <th>2ème Sing</th>
	              <th>2ème Pl</th>
	              <th>3ème Sing</th>
	              <th>3ème Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	     
	  	<xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.12">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« manger »</langData>
</caption>
	           <tr>
	              <th>Temps / Aspect</th>
	              <th>Forme de verbe</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.14">
<table border="1">
	  			<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« manger »</langData>
</caption>
	  			<tr>
	  				<th>Sujet</th>
	  				<th>1ère</th>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusif</th>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusif</th>
</xsl:if>
	  				<th>2ème</th>
	  				<th>3ème</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  		</table>
</tablenumbered>
</xsl:if>
	  	
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='yes' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.16">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« manger »</langData>
</caption>
	        	<tr>
	              <th>Sujet</th>
	              <th>1ère Sing</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>1ère Pl</th>
</xsl:if>
	              <th>2ème Sing</th>
	              <th>2ème Pl</th>
	              <th>3ème Sing</th>
	              <th>3ème Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	     
	  	<xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.18">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« habiter »</langData>
</caption>
	           <tr>
	              <th>Temps / Aspect</th>
	              <th>Forme de verbe</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.20">
<table border="1">
	  			<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« habiter »</langData>
</caption>
	  			<tr>
	  				<th>Sujet</th>
	  				<th>1ère</th>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusif</th>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusif</th>
</xsl:if>
	  				<th>2ème</th>
	  				<th>3ème</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  		</table>
</tablenumbered>
</xsl:if>
	  	
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='yes' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.22">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« habiter »</langData>
</caption>
	        	<tr>
	              <th>Sujet</th>
	              <th>1ère Sing</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>1ère Pl</th>
</xsl:if>
	              <th>2ème Sing</th>
	              <th>2ème Pl</th>
	              <th>3ème Sing</th>
	              <th>3ème Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	     
	  	<xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.24">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« voir / regarder »</langData>
</caption>
	           <tr>
	              <th>Temps / Aspect</th>
	              <th>Forme de verbe</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.26">
<table border="1">
	  			<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« voir / regarder »</langData>
</caption>
	  			<tr>
	  				<th>Sujet</th>
	  				<th>1ère</th>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusif</th>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusif</th>
</xsl:if>
	  				<th>2ème</th>
	  				<th>3ème</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  		</table>
</tablenumbered>
</xsl:if>
	  	
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='yes' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.28">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« voir / regarder »</langData>
</caption>
	        	<tr>
	              <th>Sujet</th>
	              <th>1ère Sing</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>1ère Pl</th>
</xsl:if>
	              <th>2ème Sing</th>
	              <th>2ème Pl</th>
	              <th>3ème Sing</th>
	              <th>3ème Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	     
	  </section3>
	      
	      <section3 id="sVerbParadigmsIrregular">
	      	<secTitle>Les paradigmes pour quelques verbes irréguliers</secTitle>
	      	<p>
<xsl:text>Voici les paradigmes pour trois verbes irréguliers : </xsl:text>
<object type="tComment">Vous devrez ajouter les formes dans chaque case. Vous pouvez changer les verbes s’ils n’existent pas dans votre langue ou s’ils ne sont pas irréguliers. Notez que « venir » peut être « aller vers le point de référence », et « aller » peut indiquer « aller, sans indication de direction » ou « s’éloigner du point de référence » dans votre langue.  
	      		<xsl:choose>
	      			<xsl:when test="//pron/@dependentPron='yes'"> Vous pouvez supprimer quelques colonnes si le tableau est trop large en pdf.</xsl:when>
	      			<xsl:when test="//pron/@dependentPron='no'"> Puisqu’en votre langue les verbes ne changent pas pour un sujet différent, les paradigmes sont assez simples. Peut-être aurez-vous besoin d’ajouter des colonnes pour autres changements qui sont marqués dans les verbes.</xsl:when>
	      		</xsl:choose>
</object>
</p>

	      	<xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.6">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« etre »</langData>
</caption>
	           <tr>
	              <th>Temps / Aspect</th>
	              <th>Forme de verbe</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.8">
<table border="1">
	  			<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« etre »</langData>
</caption>	  			<tr>
	  				<th>Sujet</th>
	  				<th>1ère</th>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusif</th>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusif</th>
</xsl:if>
	  				<th>2ème</th>
	  				<th>3ème</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  		</table>
</tablenumbered>
</xsl:if>
	  	
	     <xsl:if test="normalize-space(//pron/@pronounNumber)='yes' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.10">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« etre »</langData>
</caption>
	        	<tr>
	              <th>Sujet</th>
	              <th>1ère Sing</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>1ère Pl</th>
</xsl:if>
	              <th>2ème Sing</th>
	              <th>2ème Pl</th>
	              <th>3ème Sing</th>
	              <th>3ème Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	     
	     <xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.12">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« venir »</langData>
</caption>
	        	<tr>
	              <th>Temps / Aspect</th>
	              <th>Forme de verbe</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.14">
<table border="1">
	  			<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« venir »</langData>
</caption>
	  			<tr>
	  				<th>Sujet</th>
	  				<th>1ère</th>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusif</th>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusif</th>
</xsl:if>
	  				<th>2ème</th>
	  				<th>3ème</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  		</table>
</tablenumbered>
</xsl:if>
	  	
	     <xsl:if test="normalize-space(//pron/@pronounNumber)='yes' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.16">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« venir »</langData>
</caption>
	        	<tr>
	              <th>Sujet</th>
	              <th>1ère Sing</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>1ère Pl</th>
</xsl:if>
	              <th>2ème Sing</th>
	              <th>2ème Pl</th>
	              <th>3ème Sing</th>
	              <th>3ème Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	     
	     <xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.18">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« aller »</langData>
</caption>
	        	<tr>
	              <th>Temps / Aspect</th>
	              <th>Forme de verbe</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.20">
<table border="1">
	  			<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« aller »</langData>
</caption>
	  			<tr>
	  				<th>Sujet</th>
	  				<th>1ère</th>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusif</th>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusif</th>
</xsl:if>
	  				<th>2ème</th>
	  				<th>3ème</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	  			</tr>
</xsl:if>
	  		</table>
</tablenumbered>
</xsl:if>
	  	
	     <xsl:if test="normalize-space(//pron/@pronounNumber)='yes' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.22">
<table border="1">
	        	<caption>
<xsl:text>Paradigme du verbe qui signifie </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>« aller »</langData>
</caption>
	        	<tr>
	              <th>Sujet</th>
	              <th>1ère Sing</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>1ère Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>1ère Pl</th>
</xsl:if>
	              <th>2ème Sing</th>
	              <th>2ème Pl</th>
	              <th>3ème Sing</th>
	              <th>3ème Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Présent</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Passé</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Non Futur</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Temps</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Complétif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuatif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrefactuel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habituel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imparfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Parfait</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potentiel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progressif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Intentionnel</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Statif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Irréel</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Autre Aspect</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjonctif</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
</xsl:if>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORME</langData>
</td>
	           </tr>
</xsl:if>
	        </table>
</tablenumbered>
</xsl:if>
	     
      
	      </section3>
	   </section2>
	   
	   <section2 id="sIPProDrop">
	   	<secTitle>Les sujets omis</secTitle>
			<p contentType="ctComparativeIntro">
<xsl:text>Certaines langues s’appellent les langues « à sujet nul » (=« pro-drop »), parce qu’elles admettent qu’un sujet et / ou un objet manque, ou qu’il ne soit pas exprimé dans la position syntaxique normale. Par exemple, en espagnol l’équivalent de </xsl:text>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>« j’achète un livre »</xsl:text>
</gloss>
<xsl:text> est </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Compro un libro</langData>
<xsl:text> plutôt qu’avec la présence du pronom sujet : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Yo compro un libro</langData>
<xsl:text>.  On ne fait pas cela en anglais, ni en français, sauf pour les impératifs. (On traitera le phénomène de l’omission du sujet des infinitifs dans les propositions subordonnées dans la section </xsl:text>
<sectionRef sec="sComp" />
<xsl:text>.) </xsl:text>
</p>
			<p contentType="ctComparativeIntro">
<xsl:text>
					Certaines langues ne sont pas vraiment des langues « à sujet nul », mais au moins certains des pronoms au moins sont des clitiques qui se rattacher au verbe. Quand ceci se passe, il n’y a pas ni ronom ni syntagme nominal dans la position du sujet ; ainsi la phrase paraît la même que celle d’une langue authentiquement « à sujet nul ». </xsl:text>
</p>
	      <p contentType="ctPracticalIntro">
<xsl:text>
	         	Les langues « à sujet nul » (‘pro-drop’) admettent qu’un sujet et / ou un objet manque, ou qu’il ne soit pas exprimé dans la position syntaxique normale. Dans certaines langues, certains des pronoms au moins sont des clitiques qui se rattachent au verbe. Quand ceci se passe, il n’y a pas ni pronom ni syntagme nominal dans la position du sujet ; ainsi la phrase paraît la même que celle d’une langue authentiquement « à sujet nul ».</xsl:text>
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
<xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/proDropImp/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no'">
<xsl:text>l’omission du sujet (‘pro-drop’) est admise dans tous les types de phrases. </xsl:text>
	            <xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
	            	<xsl:text>  L’omission de l’objet (‘pro-drop’) </xsl:text>
	            <xsl:choose>
	            	<xsl:when test="//ip/@proDropObject='no'">n’est pas admise</xsl:when>
	            	<xsl:when test="//ip/@proDropObject='yes'">est également admise</xsl:when>
	            </xsl:choose>
	            <xsl:text>.  </xsl:text>
	         </xsl:if>
	         </xsl:if>
<xsl:if test="normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropImp/@checked)='no'">
<xsl:text>le sujet semble omis lorsque des pronoms dépendants (des clitiques pronominaux) se rattachent au verbe ; cependant, il ne s’agit pas d’une véritable langue ‘pro-drop’.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/proDropImp/@checked)='no'">
<xsl:text>l’omission du sujet (pro-drop) est admise dans tous les types de phrases et il y a également des clitiques pronominaux qui se rattachent au verbe.  </xsl:text>
	            <xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
	            	<xsl:text>  L’omission de l’objet (‘pro-drop’) </xsl:text>
	            	<xsl:choose>
	            		<xsl:when test="//ip/@proDropObject='no'">n’est pas admise</xsl:when>
	            		<xsl:when test="//ip/@proDropObject='yes'">est également admise</xsl:when>
	            	</xsl:choose>
	            <xsl:text>.  </xsl:text>
	         </xsl:if>
	         </xsl:if>
<xsl:if test="normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropOther/@checked)='no'">
<xsl:text>l’omission du sujet (pro-drop) n’est pas admise.  Le sujet doit être explicite mis à part dans les impératifs.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/proDropClitic/@checked)='no'">
<xsl:text>l’omission du sujet (pro-drop) est admise dans tous les types de phrases, y compris dans les impératifs. </xsl:text>
	            <xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
	            	<xsl:text>  L’omission de l’objet </xsl:text>
	            	<xsl:choose>
	            		<xsl:when test="//ip/@proDropObject='no'">n’est pas admise</xsl:when>
	            		<xsl:when test="//ip/@proDropObject='yes'">est également admise</xsl:when>
	            	</xsl:choose>
	            <xsl:text>.  </xsl:text>
	         </xsl:if>
	         </xsl:if>
<xsl:if test="normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>le sujet semble omis lorsque des pronoms dépendants (des clitiques pronominaux) se rattachent au verbe ; cependant, il ne s’agit pas d’une véritable langue ‘pro-drop’.  L’omission (pro-drop) du sujet est admise dans les impératifs.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>L’omission du sujet est admise dans tous les types de phrases, y compris dans les impératifs, et il y a aussi des clitiques pronominaux qui peuvent se rattacher au verbe.  </xsl:text>
	            <xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
	            	<xsl:text>  L’omission (pro-drop) de l’objet </xsl:text>
	            	<xsl:choose>
	            		<xsl:when test="//ip/@proDropObject='no'">n’est pas admise</xsl:when>
	            		<xsl:when test="//ip/@proDropObject='yes'">est également admise</xsl:when>
	            	</xsl:choose>
	            <xsl:text>.  </xsl:text>
	         </xsl:if>
	         </xsl:if>
<xsl:if test="normalize-space(//ip/proDropNone/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropOther/@checked)='no' and normalize-space(//ip/proDropImp/@checked)='no'">
<xsl:text>l’omission du sujet (pro-drop) n’est pas admise.  Le sujet doit être explicite, même dans les impératifs.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropOther/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropImp/@checked)='no'">
<xsl:text>l’omission du sujet est seulement admise ___</xsl:text>
<xsl:value-of select="//ip/proDropOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropOther/@checked)='yes' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>l’omission du sujet est admise ___</xsl:text>
<xsl:value-of select="//ip/proDropOther" />
<xsl:text> ainsi que dans les impératifs.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropOther/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='yes' or normalize-space(//ip/proDropOther/@checked)='yes' and normalize-space(//ip/proDropClitic/@checked)='yes'">
<xsl:text>  l’omission du sujet est aussi admise ___</xsl:text>
<xsl:value-of select="//ip/proDropOther" />
<xsl:text>.</xsl:text>
</xsl:if>
</p>
		   <xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
<p>
<xsl:text>  Voici des phrases qui illustrent le pro-drop :</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
<example num="xV.IPProDrop.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/proDropExample" />
<xsl:with-param name="sExNumber">xV.IPProDrop.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>				
				<xsl:if test="normalize-space(//ip/proDropClitic/@checked)='yes'">
<p>
<xsl:text>  Voici quelques phrases qui semblent illustrer le pro-drop à cause des pronoms clitiques rattachés au verbe :</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//ip/proDropClitic/@checked)='yes'">
<example num="xV.IPProDrop.18">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/cliticPnExample" />
<xsl:with-param name="sExNumber">xV.IPProDrop.18</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>	
	      <xsl:if test="normalize-space(//ip/proDropOther/@checked)='yes'">
<p>
<xsl:text>  Voici quelques phrases en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> dans lesquelles le sujet est omis :</xsl:text>
</p>
</xsl:if>
	      <xsl:if test="normalize-space(//ip/proDropOther/@checked)='yes'">
<example num="xV.IPProDrop.22">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/proDropOtherExample" />
<xsl:with-param name="sExNumber">xV.IPProDrop.22</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>	
	      
	   	<p>
<xsl:text>Voir la section </xsl:text>
<sectionRef sec="sIPImp" />
<xsl:text> pour des exemples d’impératifs.</xsl:text>
</p>

		</section2>
		<section2 id="sIPAux">
			<secTitle>Auxiliaires</secTitle>
			<p>
<xsl:text>Il y a plusieurs types d’éléments auxiliaires verbaux, comprenant les mots auxiliaires, mais également les auxiliaires non-finis, de mouvements et d’ autres types.</xsl:text>
</p>
		   
		   <section3 id="sIPAuxPositive">
		   	<secTitle>Mots auxiliaires</secTitle>
		   
		   <p contentType="ctPracticalIntro">
<xsl:text>
		   	Les éléments auxiliaires qui sont écrits comme mots indépendants expriment certains types de flexion verbale.</xsl:text>
</p>
		      <p contentType="ctComparativeIntro">
<xsl:text>
		      	Certaines langues ont des éléments auxiliaires qui sont des mots indépendants ; quelques-unes admettent plus d’un élément auxiliaire avant le verbe principal. Voici des exemples de phrases transitives en français : </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le garçon a mangé la banane</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le garçon va manger la banane</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le garçon a pu manger la banane</langData>
<xsl:text> et </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Le garçon aurait pu manger la banane</langData>
<xsl:text>.  Dans d’autres langues tous ces sens sont communiqués par la flexion verbale.</xsl:text>
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
					<xsl:when test="//ip/@aux='no'">, il n’y a pas d’auxiliaires</xsl:when>
					<xsl:when test="//ip/@aux='yes'">, il y a des auxiliaires</xsl:when>
				</xsl:choose>
<xsl:text> écrits comme des mots indépendants.  </xsl:text>
<xsl:if test="normalize-space(//ip/@aux)='yes'">
					<xsl:text>Un auxiliaire est </xsl:text>
					<xsl:choose>
						<xsl:when test="//ip/@auxRequired='no'">facultatif</xsl:when>
						<xsl:when test="//ip/@auxRequired='no'">obligatoire</xsl:when>
					</xsl:choose>
					<xsl:text> et  </xsl:text>
					<xsl:choose>
						<xsl:when test="//ip/@auxMany='no'">un seul est possible</xsl:when>
						<xsl:when test="//ip/@auxMany='yes'">plus d’un peuvent se trouver</xsl:when>
					</xsl:choose>
					<xsl:text> dans une seule proposition. </xsl:text>
					<xsl:if test="normalize-space(//typology/@wordOrder)='VSO'">
						<xsl:text> Après un auxiliaire, l’ordre normal VSO </xsl:text>
						<xsl:choose>
							<xsl:when test="//ip/@auxOrder='yes'">est maintenu.  L’ordre est Aux V S O.</xsl:when>
							<xsl:when test="//ip/@auxOrder='no'">peut changer et le sujet est placé directement après l’auxiliaire et avant le verbe.  L’ordre dans ces propositions est Aux S V O.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
					<xsl:if test="normalize-space(//typology/@wordOrder)='OSV'">
						<xsl:text> Avant un auxiliaire l’ordre normal O S V </xsl:text>
						<xsl:choose>
							<xsl:when test="//ip/@auxOrder='yes'">est maintenu.  L’ordre est O S V Aux.</xsl:when>
							<xsl:when test="//ip/@auxOrder='no'">peut changer et le sujet est placé directement après le verbe et avant l’auxiliaire.  L’ordre dans ces propositions est O V S Aux.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
				</xsl:if>
</p>
			<xsl:if test="normalize-space(//ip/@aux)='yes'">
<p>
<xsl:text>Voici quelques exemples d’auxiliaires en </xsl:text>
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
			<xsl:if test="normalize-space(//ip/@aux)='yes'">
<example num="xV.IPAux.IPAuxPositive.12">
<table border="1">
					<tr>
						<th>Mots auxiliaires</th>
						<th>Glose</th>
					</tr>
					<tr>
<xsl:for-each select="//ip/auxiliaryExample/form[1]">
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
<xsl:for-each select="//ip/auxiliaryExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/auxiliaryExample/form[position() &gt; 1]">
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
			<xsl:if test="normalize-space(//ip/@aux)='yes'">
<p>
<xsl:text>Voici des phrases qui incluent ces auxiliaires :</xsl:text>
</p>
</xsl:if>
			
				<xsl:if test="normalize-space(//ip/@aux)='yes'">
<example num="xV.IPAux.IPAuxPositive.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/auxExample" />
<xsl:with-param name="sExNumber">xV.IPAux.IPAuxPositive.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
		   </section3>
		   <section3 id="sIPAuxNonfinite">
		   	<secTitle>Auxiliaire non-fini</secTitle>	   
		   <p contentType="ctPracticalIntro">
<xsl:text>Le marqueur non-fini peut aussi fonctionner comme auxiliaire s’il s’écrit comme un mot indépendant. </xsl:text>
</p>
		      <p contentType="ctComparativeIntro">
<xsl:text>Le mot non-fini </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>to</langData>
<xsl:text> utilisé en anglais dans les propositions subordonnées fonctionne comme un auxiliaire, puisqu’il se trouve dans la même position et qu’il peut être placé avant d’autres auxiliaires. Voyez par exemple, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The boy would like to have eaten the banana</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> (Le garçon aurait aimé avoir mangé la banane)</xsl:text>
</gloss>
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
<xsl:text></xsl:text>
<xsl:choose>
					<xsl:when test="//ip/@auxNonfinite='none'">, il n’y a pas de marqueur pour les propositions non-finies. </xsl:when>
					<xsl:when test="//ip/@auxNonfinite='no'">, la caractéristique non-fini est uniquement marquée comme un élément du verbe. </xsl:when>
					<xsl:when test="//ip/@auxNonfinite='yes'">, il existe quelques marqueurs de type auxiliaire non-fini écrits comme des mots indépendants.  </xsl:when>
				</xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//ip/@auxNonfinite)='yes'">
					<xsl:text>Un mot auxiliaire non-fini est </xsl:text>
					<xsl:choose>
						<xsl:when test="//ip/@auxNonfiniteRequired='no'">facultatif</xsl:when>
						<xsl:when test="//ip/@auxNonfiniteRequired='no'">obligatoire</xsl:when>
					</xsl:choose>
					<xsl:text> dans les propositions subordonnées non-finies. </xsl:text>
					<xsl:if test="normalize-space(//typology/@wordOrder)='VSO'">
						<xsl:text> Après un auxiliaire non-fini, l’ordre normal VSO  </xsl:text>
						<xsl:choose>
							<xsl:when test="//ip/@auxNonfiniteOrder='yes'">est maintenu.  L’ordre est Aux  V S O.</xsl:when>
							<xsl:when test="//ip/@auxNonfiniteOrder='no'">peut changer changer et le sujet est placé directement après l’auxiliaire et avant le verbe.  L’ordre dans ces propositions est Aux S V O.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
					<xsl:if test="normalize-space(//typology/@wordOrder)='OSV'">
						<xsl:text> Avant un auxiliaire non-fini, l’ordre normal OSV </xsl:text>
						<xsl:choose>
							<xsl:when test="//ip/@auxOrder='yes'">est maintenu.  L’ordre est O S V Aux.</xsl:when>
							<xsl:when test="//ip/@auxOrder='no'">peut changer et le sujet est placé directement après le verbe et avant l’auxiliaire.  L’ordre dans ces propositions est O V S Aux.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
				</xsl:if>
</p>
			<xsl:if test="normalize-space(//ip/@auxNonfinite)='yes'">
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
<xsl:text>, le(s) marqueur(s) auxiliaire(s) non-fini(s) est / sont le(s) suivant(s) :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//ip/@auxNonfinite)='yes'">
<example num="xV.IPAux.IPAuxNonfinite.12">
<table border="1">
					<tr>
						<th>Marqueur auxiliaire non-fini</th>
						<th>Glose</th>
					</tr>
					<tr>
<xsl:for-each select="//ip/auxiliaryNonfiniteExample/form[1]">
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
<xsl:otherwise>marqueur non-fini dans des propositions subordonnées</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//ip/auxiliaryNonfiniteExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/auxiliaryNonfiniteExample/form[position() &gt; 1]">
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
<xsl:otherwise>marqueur non-fini dans des propositions subordonnées</xsl:otherwise>
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
			<xsl:if test="normalize-space(//ip/@auxNonfinite)='yes'">
<p>
<xsl:text>Voici quelques exemples de propositions non-finies qui comprennent ces auxiliaires non-finis :</xsl:text>
</p>
</xsl:if>
			
			<xsl:if test="normalize-space(//ip/@auxNonfinite)='yes'">
<example num="xV.IPAux.IPAuxNonfinite.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/auxNonfiniteExample" />
<xsl:with-param name="sExNumber">xV.IPAux.IPAuxNonfinite.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
		   </section3>
		   <section3 id="sIPAuxOther">
		   	<secTitle>Autres types d’auxiliaires</secTitle>
		  		   
		   <p contentType="ctPracticalIntro">
<xsl:text>D’autres mots également peuvent fonctionner comme des auxiliaires, tels que les auxiliaires de mouvement ou des marqueurs empruntés. </xsl:text>
</p>
		      <p contentType="ctComparativeIntro">
<xsl:text>Certaines langues ont d’autres mots qui fonctionnent comme des auxiliaires, tels que les auxiliaires de mouvement ou les marqueurs empruntés qui partagent le même sujet et les mêmes compléments que le verbe principal.</xsl:text>
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
					<xsl:when test="//ip/@auxOther='no'"> il n’y a pas d’auxiliaires</xsl:when>
					<xsl:when test="//ip/@auxOther='yes'"> il y a quelques auxiliaires</xsl:when>
				</xsl:choose>
<xsl:text> de ce type qui sont écrits comme des mots indépendants.  </xsl:text>
<xsl:if test="normalize-space(//ip/@auxOther)='yes'">
					<xsl:if test="normalize-space(//typology/@wordOrder)='VSO'">
						<xsl:text> Après un de ces auxiliaires l’ordre habituel VSO </xsl:text>
						<xsl:choose>
							<xsl:when test="//ip/@auxOtherOrder='yes'">est maintenu.  L’ordre dans ces propositions est Aux  V S O.</xsl:when>
							<xsl:when test="//ip/@auxOtherOrder='no'">peut changer et le sujet est placé directement après l’auxiliaire et avant le verbe.  L’ordre dans ces propositions est Aux S V O.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
					<xsl:if test="normalize-space(//typology/@wordOrder)='OSV'">
						<xsl:text> Avant un de ces auxiliaires l’ordre habituel OSV   </xsl:text>
						<xsl:choose>
							<xsl:when test="//ip/@auxOrder='yes'">est maintenu.  L’ordre dans ces propositions est  O S V Aux.</xsl:when>
							<xsl:when test="//ip/@auxOrder='no'">peut changer et le sujet est placé directement après le verbe et avant l’auxiliaire.  L’ordre dans ces propositions est O V S Aux.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
				</xsl:if>
</p>
			<xsl:if test="normalize-space(//ip/@auxOther)='yes'">
<p>
<xsl:text>Voici les autres auxiliaires en </xsl:text>
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
			<xsl:if test="normalize-space(//ip/@auxOther)='yes'">
<example num="xV.IPAux.IPAuxOther.12">
<table border="1">
					<tr>
						<th>Autres mots auxiliaires</th>
						<th>Glose</th>
					</tr>
					<tr>
<xsl:for-each select="//ip/auxiliaryOtherExample/form[1]">
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
<xsl:for-each select="//ip/auxiliaryOtherExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/auxiliaryOtherExample/form[position() &gt; 1]">
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
			<xsl:if test="normalize-space(//ip/@auxOther)='yes'">
<p>
<xsl:text>Voici quelques exemples de phrases qui contiennent ces autres auxiliaires :</xsl:text>
</p>
</xsl:if>
			
			<xsl:if test="normalize-space(//ip/@auxOther)='yes'">
<example num="xV.IPAux.IPAuxOther.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/auxOtherExample" />
<xsl:with-param name="sExNumber">xV.IPAux.IPAuxOther.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
		   </section3>	
		</section2>
<section2 id="sVCompounds">
	<secTitle>Composés verbaux</secTitle>
	<p>
<xsl:text>Les verbes peuvent se combiner avec d’autres verbes, ou avec des noms ou d’autres catégories de mots pour former des composés verbaux. Ces composés fonctionnent toujours comme des verbes, quoiqu’ils aient pu changer de valence, par exemple, en passant de transitif à intransitif. Des exemples des types les plus fréquents seront donnés ici.</xsl:text>
</p>
   
	<xsl:if test="normalize-space(//ip/@heartCompound)='yes'">
<p>
<xsl:text>Dans une série spéciale de composés verbaux, tous les verbes contiennent le nom qui décrit le centre des émotions, comme par exemple le coeur ou le ventre.</xsl:text>
</p>
</xsl:if>
   <xsl:if test="normalize-space(//ip/@heartCompound)='yes'">
<example num="xV.VCompounds.8">
<table border="1">
      	<caption>
<xsl:text>Composés avec le centre des emotions</xsl:text>
</caption>
         <tr>
            <th>Composé</th>
            <th>Glose pour chaque racine</th>
            <th>Glose pour le composé</th>
         </tr>
         <tr>
<xsl:for-each select="//ip/heartCompoundExample/form[1]">
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
<xsl:for-each select="//ip/heartCompoundExample/form[1]">
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
<xsl:for-each select="//ip/heartCompoundExample/form[position() &gt; 1]">
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
	<xsl:if test="normalize-space(//ip/@bodypartCompound)='yes'">
<p>
<xsl:text>Dans une </xsl:text>
<xsl:if test="normalize-space(//ip/@heartCompound)='yes'">
<xsl:text>autre </xsl:text>
</xsl:if>
<xsl:text>série spéciale de composés verbaux, les verbes contiennent le nom d’une partie du corps</xsl:text>
<xsl:if test="normalize-space(//ip/@heartCompound)='yes'">
<xsl:text> autre que le centre des émotions</xsl:text>
</xsl:if>
<xsl:text>.</xsl:text>
</p>
</xsl:if>
   <xsl:if test="normalize-space(//ip/@bodypartCompound)='yes'">
<example num="xV.VCompounds.12">
<table border="1">
      	<caption>
<xsl:text>Composés avec une partie du corps</xsl:text>
</caption> 
         <tr>
            <th>Composé</th>
            <th>Glose pour chaque racine</th>
            <th>Glose pour le composé</th>
         </tr>
         <tr>
<xsl:for-each select="//ip/bodypartCompoundExample/form[1]">
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
<xsl:for-each select="//ip/bodypartCompoundExample/form[1]">
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
<xsl:for-each select="//ip/bodypartCompoundExample/form[position() &gt; 1]">
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
   <xsl:if test="normalize-space(//ip/@heartCompound)='yes' or normalize-space(//ip/@bodypartCompound)='yes'">
<example num="xV.VCompounds.14">
<table border="1">
      	<caption>
<xsl:text>Autres composés verbaux et nominaux</xsl:text>
</caption> 
         <tr>
            <th>Composé</th>
            <th>Glose pour chaque racine</th>
            <th>Glose pour le composé</th>
         </tr>
         <tr>
<xsl:for-each select="//ip/verbNCompoundExample/form[1]">
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
<xsl:for-each select="//ip/verbNCompoundExample/form[1]">
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
<xsl:for-each select="//ip/verbNCompoundExample/form[position() &gt; 1]">
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
   <xsl:if test="normalize-space(//ip/@heartCompound)='no' and normalize-space(//ip/@bodypartCompound)='no'">
<example num="xV.VCompounds.16">
<table border="1">
      	<caption>
<xsl:text>Composés verbaux et nominaux</xsl:text>
</caption> 
         <tr>
            <th>Composé</th>
            <th>Glose pour chaque racine</th>
            <th>Glose pour le composé</th>
         </tr>
         <tr>
<xsl:for-each select="//ip/verbNCompoundExample/form[1]">
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
<xsl:for-each select="//ip/verbNCompoundExample/form[1]">
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
<xsl:for-each select="//ip/verbNCompoundExample/form[position() &gt; 1]">
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
   
	<p>
<xsl:text>Voici quelques exemples de ces formés d’un verbe et d’un nom utilisés dans des phrases :</xsl:text>
</p>
   <example num="xV.VCompounds.20">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/verbNCompoundSentExample" />
<xsl:with-param name="sExNumber">xV.VCompounds.20</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
   
	<p>
<xsl:text>Voici quelques composés formés d’un verbe et d’une autre catégorie autre que le nom :</xsl:text>
</p>
   <example num="xV.VCompounds.24">
<table border="1">
      	<caption>
<xsl:text>Composés verbaux autres que les composés avec des noms</xsl:text>
</caption>
         <tr>
            <th>Composé</th>
            <th>Glose pour chaque racine</th>
            <th>Glose pour le composé</th>
         </tr>
         <tr>
<xsl:for-each select="//ip/verbOtherCompoundExample/form[1]">
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
<xsl:for-each select="//ip/verbOtherCompoundExample/form[1]">
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
<xsl:for-each select="//ip/verbOtherCompoundExample/form[position() &gt; 1]">
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
	<p>
<xsl:text>Voici quelques exemples de ces composés formés d’un verbe et d’un non-substantif :</xsl:text>
</p>
   <example num="xV.VCompounds.28">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/verbOtherCompoundSentExample" />
<xsl:with-param name="sExNumber">xV.VCompounds.28</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
	<p contentType="ctPracticalIntro">
<xsl:text>Certaines expressions idiomatiques sont formées d’un verbe et d’un autre mot qui, ensemble, expriment une notion qui n’est pas  la somme des deux mots indépendants. Voici quelques exemples d’expressions idiomatiques en </xsl:text>
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
	<p contentType="ctComparativeIntro">
<xsl:text>À part les composés écrits en un seul mot, il existe des expressions idiomatiques formées d’un verbe et d’un autre mot qui, ensemble, expriment une notion différente de la somme des deux mots pris indépendamment. Voici quelques exemples d’expressions idiomatiques en </xsl:text>
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
   <example num="xV.VCompounds.34">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//ip/verbIdiomExample" />
<xsl:with-param name="sExNumber">xV.VCompounds.34</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</section2>
		   
		
	</section1>
	
		
		
		
	
	
		
	
	
		
	
	
		
	
   
      
   
   
      
   
	
		
	
	
      
   
   
      
   
   
		
	
	
		
	
	
		
	
	
		
	
   
      
   
   
		
	
   
      
   
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
   
      
   
	
		
	
	
		
	
   
      
   
   
		
	
	
		
	
	
		
	
	
		
	
   
      
   
   
      
   
	
		
	
	
      
   
	
		
	
	
      
   
   
      
   
   
      
   
   
      
   
   
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
      
   
   
      
   
   
      
   
   
      
   
   
      
   
   
      
   
	
		
	
	

	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
   
   
      
   
   
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
      
   
      
   
   
   
		
	
	
		
	
	
		
	
   
	
		
	
	
		
	
   
      
   
   
      
      
      
      
      
   
   
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
	
	
		
	
	
		
	
	
		
	
	
		
	
	
		
	
   
      
   
   
      
   
   
      
   
   
      
   
   
      
   
   
      
   
	
		
	
	
      
   
   
      
      
      
   
   
      
      
      
   
	
		
		
		
	
	
		
		
		
	
	
		
	
</xsl:template>
</xsl:stylesheet>
