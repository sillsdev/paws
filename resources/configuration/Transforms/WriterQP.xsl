<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="qp">
	<section1 id="sQP">
		<secTitle>Quantifiers and Quantifier Phrases</secTitle>
		<p>
<xsl:text>Quantifiers can show up in various places in a nominal phrase. Most languages have four sets of quantifiers:</xsl:text>
</p>
		<ul>
			<li>
				<xsl:text>Those meaning </xsl:text>
				<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>all</langData>
				<xsl:text> or </xsl:text>
				<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not</langData>
				<xsl:text>, which modify the whole nominal phrase,</xsl:text>
			</li>
			<li>
				<xsl:text>quantifiers such as </xsl:text>
				<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>some</langData>
				<xsl:text> or </xsl:text>
				<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>no</langData>
				<xsl:text>, which do not co-occur with any other modifers except adjectives,</xsl:text>
			</li>
			<li>
				<xsl:text>other quantifiers such as </xsl:text>
				<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>many</langData>
				<xsl:text>
or </xsl:text>
				<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>few</langData>
				<xsl:text>, and</xsl:text>
			</li>
			<li>
				<xsl:text>numbers.</xsl:text>
			</li>
		</ul>
		<p>
<xsl:text>Each type will be considered in turn.
</xsl:text>
</p>
		<section2 id="sQPAll">
			<secTitle>Quantifiers which modify the whole nominal phrase</secTitle>
			<p>
<xsl:text>Quantifiers meaning </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>all</langData>
<xsl:text> or </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not</langData>
<xsl:text> seem to be a category of their
own.  They usually occur first (or last) in a nominal phrase, in a position distinct from
the other quantifiers but in the same place as degree words
like </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>only</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>just</langData>
<xsl:text> (which can also act as focus markers, to be discussed in section </xsl:text>
<sectionRef sec="sFocus" />
<xsl:text>) and words that mean the same as </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>almost</langData>
<xsl:text> (which can also co-occur with </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>all</langData>
<xsl:text>), so we will refer to them as special degree words.</xsl:text>
</p>

  <p>
<xsl:text>First, we will look at the positive forms which modify the whole nominal phrase, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>all five children</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>only Sue’s three children</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>nearly all John’s young children</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>just this many children</langData>
<xsl:text>.</xsl:text>
</p>

			<xsl:if test="normalize-space(//qp/@npDegree)='no'">
<p>
<xsl:text>In </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, these are not expressed as separate words which modify the whole nominal phrase.  Instead, they all attach to another word in the nominal phrase.  The positive special degree elements are </xsl:text>
<xsl:choose>
					<xsl:when test="//qp/@npDegreeType='proclitic'">phrasal proclitics which attach to the front of whatever word begins the nominal phrase.</xsl:when>
					<xsl:when test="//qp/@npDegreeType='enclitic'">phrasal enclitics which attach to the end of whatever word ends the nominal phrase.</xsl:when>
					<xsl:when test="//qp/@npDegreeType='clitic'">phrasal clitics which attach either to the front of whatever word begins the nominal phrase or to the end of whatever word ends the nominal phrase.</xsl:when>
					<xsl:when test="//qp/@npDegreeType='prefix'">prefixes which attach to the head noun of the nominal phrase.</xsl:when>
					<xsl:when test="//qp/@npDegreeType='suffix'">suffixes which attach to the head noun of the nominal phrase.</xsl:when>
					<xsl:when test="//qp/@npDegreeType='affix'">either prefixes or suffixes which attach to the head noun of the nominal phrase.</xsl:when>
				</xsl:choose>
<xsl:text></xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@npDegree)='some'">
<p>
<xsl:text>In </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, some are separate words but some of these are not expressed as separate words which modify the whole nominal phrase.  Instead, some of the positive special degree elements are </xsl:text>
<xsl:choose>
				 <xsl:when test="//qp/@npDegreeType='proclitic'">phrasal proclitics which attach to the front of whatever word begins the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeType='enclitic'">phrasal enclitics which attach to the end of whatever word ends the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeType='clitic'">phrasal clitics which attach either to the front of whatever word begins the nominal phrase or to the end of whatever word ends the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeType='prefix'">prefixes which attach to the head noun of the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeType='suffix'">suffixes which attach to the head noun of the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeType='affix'">either prefixes or suffixes which attach to the head noun of the nominal phrase.</xsl:when>
			  </xsl:choose>
<xsl:text>  The positive special degree elements which are expressed as separate words occur </xsl:text>
<xsl:choose>
				 <xsl:when test="//qp/@npDegreePos='before'">before</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='after'">after</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='either'">on either side (but not both sides) of</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='eitherOrBoth'">on either side or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='beforeOrBoth'">before or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='afterOrBoth'">after or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='both'">on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='unknown'">_______</xsl:when>
			  </xsl:choose>
<xsl:text> the rest of the nominal phrase.  </xsl:text>
<xsl:if test="normalize-space(//qp/@npDegreeEither)='unrestricted' and normalize-space(//qp/@npDegreePos)!='before' and normalize-space(//qp/@npDegreePos)!='after'">
				 <xsl:text>All of these words can occur on either side of the nominal phrase.</xsl:text>
			  </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//qp/@npDegreeEither)='restricted' and normalize-space(//qp/@npDegreePos)!='before' and normalize-space(//qp/@npDegreePos)!='after'">
				 <xsl:text>There are restrictions as to which of these words can occur on each side of the nominal phrase.  </xsl:text>
			  </xsl:if>
</p>
</xsl:if>

		   <xsl:if test="normalize-space(//qp/@npDegree)='yes'">
<p>
<xsl:text>In </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, the positive special degree elements are expressed as separate words which modify the whole nominal phrase.    They  occur </xsl:text>
<xsl:choose>
				 <xsl:when test="//qp/@npDegreePos='before'">before</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='after'">after</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='either'">on either side (but not both sides) of</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='eitherOrBoth'">on either side or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='beforeOrBoth'">before or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='afterOrBoth'">after or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='both'">on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreePos='unknown'">_______</xsl:when>
			  </xsl:choose>
<xsl:text> the rest of the nominal phrase.  </xsl:text>
<xsl:if test="normalize-space(//qp/@npDegreeEither)='unrestricted' and normalize-space(//qp/@npDegreePos)!='before' and normalize-space(//qp/@npDegreePos)!='after'">
				 <xsl:text>All of these words can occur on either side of the nominal phrase.</xsl:text>
			  </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//qp/@npDegreeEither)='restricted' and normalize-space(//qp/@npDegreePos)!='before' and normalize-space(//qp/@npDegreePos)!='after'">
				 <xsl:text>There are restrictions as to which of these words can occur on each side of the nominal phrase.  </xsl:text>
			  </xsl:if>
</p>
</xsl:if>
			  <p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> positive nominal phrase examples include:</xsl:text>
</p>
		   <example num="xQP.QPAll.16">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//qp/example" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(normalize-space(//qp/example))" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and normalize-space($sExampleValue) != ''">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//qp/example" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(normalize-space(//qp/example))" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xQP.QPAll.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xQP.QPAll.16.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoMorphemeGloss" />
<xsl:call-template name="DoWordGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>

		   <p>
<xsl:text>Now turning to the negative element meaning </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not</langData>
<xsl:text> when it modifies a nominal phrase.  Note that </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not</langData>
<xsl:text> can occur in place of or before these other special degree words, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not the children</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not all five children</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not just this many children</langData>
<xsl:text> or </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not only Sue’s three children</langData>
<xsl:text>.</xsl:text>
</p>

		   <xsl:if test="normalize-space(//qp/@npDegreeNeg)='none'">
<p>
<xsl:text>In </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, there does not seem to be any way to express </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not</langData>
<xsl:text> as modifying a whole nominal phrase.</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@npDegreeNeg)='no'">
<p>
<xsl:text>In </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, these are not expressed as separate words which modify the whole nominal phrase.  Instead, they all attach to another word in the nominal phrase.  The negative special degree elements are </xsl:text>
<xsl:choose>
				 <xsl:when test="//qp/@npDegreeNegType='proclitic'">phrasal proclitics which attach to the front of whatever word begins the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegType='enclitic'">phrasal enclitics which attach to the end of whatever word ends the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegType='clitic'">phrasal clitics which attach either to the front of whatever word begins the nominal phrase or to the end of whatever word ends the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegType='prefix'">prefixes which attach to the head noun of the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegType='suffix'">suffixes which attach to the head noun of the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegType='affix'">either prefixes or suffixes which attach to the head noun of the nominal phrase.</xsl:when>
			  </xsl:choose>
<xsl:text></xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@npDegreeNeg)='some'">
<p>
<xsl:text>In </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, some are separate words but some of these are not expressed as separate words which modify the whole nominal phrase.  Instead, some of the negative special degree elements are </xsl:text>
<xsl:choose>
				 <xsl:when test="//qp/@npDegreeNegType='proclitic'">phrasal proclitics which attach to the front of whatever word begins the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegType='enclitic'">phrasal enclitics which attach to the end of whatever word ends the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegType='clitic'">phrasal clitics which attach either to the front of whatever word begins the nominal phrase or to the end of whatever word ends the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegType='prefix'">prefixes which attach to the head noun of the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegType='suffix'">suffixes which attach to the head noun of the nominal phrase.</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegType='affix'">either prefixes or suffixes which attach to the head noun of the nominal phrase.</xsl:when>
			  </xsl:choose>
<xsl:text>  The negative special degree elements which are expressed as separate words occur </xsl:text>
<xsl:choose>
				 <xsl:when test="//qp/@npDegreeNegPos='before'">before</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='after'">after</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='either'">on either side (but not both sides) of</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='eitherOrBoth'">on either side or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='beforeOrBoth'">before or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='afterOrBoth'">after or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='both'">on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='unknown'">_______</xsl:when>
			  </xsl:choose>
<xsl:text> the rest of the nominal phrase.  </xsl:text>
<xsl:if test="normalize-space(//qp/@npDegreeNegEither)='unrestricted' and normalize-space(//qp/@npDegreeNegPos)!='before' and normalize-space(//qp/@npDegreeNegPos)!='after'">
				 <xsl:text>All of these words can occur on either side of the nominal phrase.</xsl:text>
			  </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//qp/@npDegreeNegEither)='restricted' and normalize-space(//qp/@npDegreeNegPos)!='before' and normalize-space(//qp/@npDegreeNegPos)!='after'">
				 <xsl:text>There are restrictions as to which of these words can occur on each side of the nominal phrase.  </xsl:text>
			  </xsl:if>
</p>
</xsl:if>

		   <xsl:if test="normalize-space(//qp/@npDegreeNeg)='yes'">
<p>
<xsl:text>In </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, the negative special degree elements are expressed as separate words which modify the whole nominal phrase.    They  occur </xsl:text>
<xsl:choose>
				 <xsl:when test="//qp/@npDegreeNegPos='before'">before</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='after'">after</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='either'">on either side (but not both sides) of</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='eitherOrBoth'">on either side or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='beforeOrBoth'">before or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='afterOrBoth'">after or on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='both'">on both sides of</xsl:when>
				 <xsl:when test="//qp/@npDegreeNegPos='unknown'">_______</xsl:when>
			  </xsl:choose>
<xsl:text> the rest of the nominal phrase.  </xsl:text>
<xsl:if test="normalize-space(//qp/@npDegreeNegEither)='unrestricted' and normalize-space(//qp/@npDegreeNegPos)!='before' and normalize-space(//qp/@npDegreeNegPos)!='after'">
				 <xsl:text>All of these words can occur on either side of the nominal phrase.</xsl:text>
			  </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//qp/@npDegreeNegEither)='restricted' and normalize-space(//qp/@npDegreeNegPos)!='before' and normalize-space(//qp/@npDegreeNegPos)!='after'">
				 <xsl:text>There are restrictions as to which of these words can occur on each side of the nominal phrase.  </xsl:text>
			  </xsl:if>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@npDegreeNeg)!='none'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> negative nominal phrase examples not including the positive special degree elements are:</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@npDegreeNeg)!='none'">
<example num="xQP.QPAll.30">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//qp/negExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(normalize-space(//qp/negExample))" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and normalize-space($sExampleValue) != ''">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//qp/negExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(normalize-space(//qp/negExample))" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xQP.QPAll.30</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xQP.QPAll.30.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoMorphemeGloss" />
<xsl:call-template name="DoWordGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
</xsl:if>

			<xsl:if test="normalize-space(//qp/@npDegreeNeg)!='none' and normalize-space(//qp/@npDegreeNegCooccur)='no'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> does not allow the negative special degree elements to co-occur with the positive special degree words in a single nominal phrase.</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@npDegreeNeg)!='none' and normalize-space(//qp/@npDegreeNegCooccur)='yes'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> allows the word(s) meaning </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not</langData>
<xsl:text> to co-occur with the positive special degree words in a single nominal phrase. </xsl:text>
<xsl:if test="normalize-space(//qp/@npDegreeNegCooccur)='yes' and normalize-space(//qp/@npDegreeNeg)='yes' or normalize-space(//qp/@npDegreeNegCooccur)='yes' and normalize-space(//qp/@npDegreeNeg)='some'">
<xsl:text> The negative special degree words occur </xsl:text>
				<xsl:choose>
					<xsl:when test="//qp/@npDegreeNegNPPos='before'">before</xsl:when>
					<xsl:when test="//qp/@npDegreeNegNPPos='after'">after</xsl:when>
					<xsl:when test="//qp/@npDegreeNegNPPos='either'">on either side (but not both sides) of</xsl:when>
					<xsl:when test="//qp/@npDegreeNegNPPos='eitherOrBoth'">on either side or on both sides of</xsl:when>
					<xsl:when test="//qp/@npDegreeNegNPPos='beforeOrBoth'">before or on both sides of</xsl:when>
					<xsl:when test="//qp/@npDegreeNegNPPos='afterOrBoth'">after or on both sides of</xsl:when>
					<xsl:when test="//qp/@npDegreeNegNPPos='both'">on both sides of</xsl:when>
					<xsl:when test="//qp/@npDegreeNegNPPos='unknown'">_______</xsl:when>
				</xsl:choose>
			   <xsl:text> the rest of the nominal phrase (including the positive special degree words).  </xsl:text>
</xsl:if>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@npDegreeNeg)!='none' and normalize-space(//qp/@npDegreeNegCooccur)='yes'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> negative nominal phrase examples which include the positive special degree elements are:</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@npDegreeNeg)!='none' and normalize-space(//qp/@npDegreeNegCooccur)='yes'">
<example num="xQP.QPAll.38">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//qp/negCooccurExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(normalize-space(//qp/negCooccurExample))" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and normalize-space($sExampleValue) != ''">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//qp/negCooccurExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(normalize-space(//qp/negCooccurExample))" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xQP.QPAll.38</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xQP.QPAll.38.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoMorphemeGloss" />
<xsl:call-template name="DoWordGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
</xsl:if>
		   <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@npDegreeClassifier)='yes'">
<p>
<xsl:text>The following chart summarizes how all the special degree elements are expressed in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  The forms shown in the chart are the roots; each one may surface with the apropriate classifier attached.</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' or normalize-space(//qp/@npDegreeClassifier)!='yes'">
<p>
<xsl:text>The following chart summarizes how all the special degree elements are expressed in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>:</xsl:text>
</p>
</xsl:if>
		   <example num="xQP.QPAll.44">
<table border="1">
				 <tr>
					<th>
					   <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
					</th>
					<th>Gloss</th>
				 </tr>
				 <xsl:variable name="sExampleValue0">
<xsl:value-of select="translate(string(//qp/all),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0" select="string-length(normalize-space($sExampleValue0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0 != 0 and $sExampleValue0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
					   <xsl:text>all</xsl:text>
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
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
					   <xsl:text>all</xsl:text>
					</td>
</tr>
</xsl:otherwise>
</xsl:choose>
				 <xsl:variable name="sExampleValue1">
<xsl:value-of select="translate(string(//qp/almost),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength1" select="string-length(normalize-space($sExampleValue1))" />
<xsl:choose>
<xsl:when test="$iExampleLength1 != 0 and $sExampleValue1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
					   <xsl:text>almost</xsl:text>
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
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
					   <xsl:text>almost</xsl:text>
					</td>
</tr>
</xsl:otherwise>
</xsl:choose>
				 <xsl:variable name="sExampleValue2">
<xsl:value-of select="translate(string(//qp/only),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength2" select="string-length(normalize-space($sExampleValue2))" />
<xsl:choose>
<xsl:when test="$iExampleLength2 != 0 and $sExampleValue2 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue2" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue2" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength2" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
					   <xsl:text>only or just</xsl:text>
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
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
					   <xsl:text>only or just</xsl:text>
					</td>
</tr>
</xsl:otherwise>
</xsl:choose>
				 <xsl:if test="normalize-space(//qp/@npDegreeNeg)!='none'">
<xsl:variable name="sExampleValue3">
<xsl:value-of select="translate(string(//qp/not),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength3" select="string-length(normalize-space($sExampleValue3))" />
<xsl:choose>
<xsl:when test="$iExampleLength3 != 0 and $sExampleValue3 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue3" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue3" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength3" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
					   <xsl:text>not</xsl:text>
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
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
					   <xsl:text>not</xsl:text>
					</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
			  </table>
</example>
		   <xsl:if test="normalize-space(//qp/@npDegreeNeg)!='none'">
<p>
<xsl:text>See section </xsl:text>
<sectionRef sec="sNegNominal" />
<xsl:text> for examples of the negative elements used in sentences and discussion of the negation constructions in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.</xsl:text>
</p>
</xsl:if>
		</section2>
		<section2 id="sQPDeterminers">
			<secTitle>Quantifiers which do not co-occur with Determiners</secTitle>
			<p>
<xsl:text>The second set includes quantifiers like </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>some</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>every</langData>
<xsl:text>, and  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>no</langData>
<xsl:text>, which do not allow any other articles, demonstratives or possessors in the nominal phrase.</xsl:text>
</p>
			   <p>
<xsl:text>Some English examples of nominal phrases including the positive quantifiers are </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>some sad children</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>almost every little girl that I see</langData>
<xsl:text>.  Ungrammatical examples such as </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>*every the bad boy</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>*those some boys</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute> *Sue’s some sad children</langData>
<xsl:text> illustrate that these quantifiers do not co-occur with articles, demonstratives or possessors.  Note that an example like </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>some of the children</langData>
<xsl:text> is grammatical, but this is a case of </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>some</langData>
<xsl:text> as the head of the nominal phrase, with a partitive phrase </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>of the children</langData>
<xsl:text> modifying it, which will be covered in section </xsl:text>
<sectionRef sec="sPron" />
<xsl:text>.  Because they take the place of articles, demonstratives and possessors, we will treat these quantifiers as determiners which stand alone.</xsl:text>
</p>
			<xsl:if test="normalize-space(//qp/@determiner)='no' or normalize-space(//qp/@determiner)='attaches'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> does not have a separate set of positive quantifiers which act as the only determiner in the nominal phrase.  The positive notions of </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>some</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>every</langData>
<xsl:text> are either like </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>all</langData>
<xsl:text> above or like the quantifiers which may co-occur with articles, demonstratives and/or possessors to be treated in the next section.</xsl:text>
</p>
</xsl:if>

			<xsl:if test="normalize-space(//qp/@determiner)='yes' or normalize-space(//qp/@determiner)='some'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> has positive quantifiers which are written as separate words and act as the only determiner in the nominal phrase.  They occur </xsl:text>
<xsl:choose>
				  <xsl:when test="//qp/@determinerPos='before'">before</xsl:when>
				  <xsl:when test="//qp/@determinerPos='after'">after</xsl:when>
				  <xsl:when test="//qp/@determinerPos='either'">on either side (but not both sides) of</xsl:when>
				  <xsl:when test="//qp/@determinerPos='eitherOrBoth'">on either side or on both sides of</xsl:when>
				  <xsl:when test="//qp/@determinerPos='beforeOrBoth'">before or on both sides of</xsl:when>
				  <xsl:when test="//qp/@determinerPos='afterOrBoth'">after or on both sides of</xsl:when>
				  <xsl:when test="//qp/@determinerPos='both'">on both sides of</xsl:when>
				  <xsl:when test="//qp/@determinerPos='unknown'">_______</xsl:when>
			   </xsl:choose>
<xsl:text> the head noun.  </xsl:text>
<xsl:if test="normalize-space(//qp/@determinerEither)='unrestricted' and normalize-space(//qp/@determinerPos)!='before' and normalize-space(//qp/@determinerPos)!='after'">
				  <xsl:text>All of the positive quantifier determiners can occur on either side of the noun.</xsl:text>
			   </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//qp/@determinerEither)='restricted' and normalize-space(//qp/@determinerPos)!='before' and normalize-space(//qp/@determinerPos)!='after'">
				  <xsl:text>There are restrictions as to which of these positive quantifier determiners can occur on each side of the noun.</xsl:text>
			   </xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@determiner)='yes' or normalize-space(//qp/@determiner)='some'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> examples of positive quantifier determiners in full nominal phrases include:</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@determiner)='yes' or normalize-space(//qp/@determiner)='some'">
<example num="xQP.QPDeterminers.14">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//qp/determinerNPExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(normalize-space(//qp/determinerNPExample))" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and normalize-space($sExampleValue) != ''">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//qp/determinerNPExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(normalize-space(//qp/determinerNPExample))" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xQP.QPDeterminers.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xQP.QPDeterminers.14.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoMorphemeGloss" />
<xsl:call-template name="DoWordGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
</xsl:if>

		   <p>
<xsl:text>Turning to the negative quantifier determiner meaning </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>no</langData>
<xsl:text>.  Examples are </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>no little children</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>no big boys</langData>
<xsl:text>.  Note that </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>no</langData>
<xsl:text> contrasts with </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not</langData>
<xsl:text> from the previous section in that </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>no</langData>
<xsl:text> cannot occur with articles, demonstratives or possessors, as illustrated by </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>*no the children</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>*no those books</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>*no Sue’s two friendly dogs</langData>
<xsl:text>.</xsl:text>
</p>
		   <xsl:if test="normalize-space(//qp/@determinerNeg)='no'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> does not have a separate negaitive quantifier which acts as the only determiner in the nominal phrase.  The negative notion of </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>no</langData>
<xsl:text> is like </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not</langData>
<xsl:text> in the previous section.</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@determinerNeg)='attaches'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> does not have a separate negaitive quantifier which acts as the only determiner in the nominal phrase.  The negative notion of </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>no</langData>
<xsl:text> is expressed by a clitic or affix that attaches to another word in the nominal phrase, like </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not</langData>
<xsl:text> in the previous section.</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@determinerNeg)='none' and normalize-space(//qp/@npDegreeNeg)='none'">
<p>
<xsl:text>Just as there was not any way to express the negative special degree element </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>not</langData>
<xsl:text> in the previous section, there is not any way to express </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>no</langData>
<xsl:text> when it is modifying a nominal phrase in this language.</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@determinerNeg)='yes' or normalize-space(//qp/@determinerNeg)='some'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> has negative quantifiers which are written as separate words and act as the only determiner in the nominal phrase.  They occur </xsl:text>
<xsl:choose>
				 <xsl:when test="//qp/@determinerNegPos='before'">before</xsl:when>
				 <xsl:when test="//qp/@determinerNegPos='after'">after</xsl:when>
				 <xsl:when test="//qp/@determinerNegPos='either'">on either side (but not both sides) of</xsl:when>
				 <xsl:when test="//qp/@determinerNegPos='eitherOrBoth'">on either side or on both sides of</xsl:when>
				 <xsl:when test="//qp/@determinerNegPos='beforeOrBoth'">before or on both sides of</xsl:when>
				 <xsl:when test="//qp/@determinerNegPos='afterOrBoth'">after or on both sides of</xsl:when>
				 <xsl:when test="//qp/@determinerNegPos='both'">on both sides of</xsl:when>
				 <xsl:when test="//qp/@determinerNegPos='unknown'">_______</xsl:when>
			  </xsl:choose>
<xsl:text> the head noun.  </xsl:text>
<xsl:if test="normalize-space(//qp/@determinerNegEither)='unrestricted' and normalize-space(//qp/@determinerNegPos)!='before' and normalize-space(//qp/@determinerNegPos)!='after'">
				 <xsl:text>All of the negative quantifier determiners can occur on either side of the noun.</xsl:text>
			  </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//qp/@determinerNegEither)='restricted' and normalize-space(//qp/@determinerNegPos)!='before' and normalize-space(//qp/@determinerNegPos)!='after'">
				 <xsl:text>There are restrictions as to which of these negative quantifier determiners can occur on each side of the noun.</xsl:text>
			  </xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>

			<xsl:if test="normalize-space(//qp/@determinerNeg)='yes' or normalize-space(//qp/@determinerNeg)='some'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> examples of negative quantifier determiners in full nominal phrases include:</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@determinerNeg)='yes' or normalize-space(//qp/@determinerNeg)='some'">
<example num="xQP.QPDeterminers.28">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//qp/determinerNegNPExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(normalize-space(//qp/determinerNegNPExample))" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and normalize-space($sExampleValue) != ''">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//qp/determinerNegNPExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(normalize-space(//qp/determinerNegNPExample))" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xQP.QPDeterminers.28</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xQP.QPDeterminers.28.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoMorphemeGloss" />
<xsl:call-template name="DoWordGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
</xsl:if>

		   <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@determinerClassifier)='yes' and normalize-space(//qp/@determiner)='yes' or normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@determinerClassifier)='yes' and normalize-space(//qp/@determiner)='some' or normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@determinerClassifier)='yes' and normalize-space(//qp/@determinerNeg)='yes' or normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@determinerClassifier)='yes' and normalize-space(//qp/@determinerNeg)='some'">
<p>
<xsl:text>The following chart summarizes how the quantifier determiners are expressed in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  The forms shown in the chart are the roots; each one may surface with the apropriate classifier attached.</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' and normalize-space(//qp/@determiner)='yes' or normalize-space(//qp/@determinerClassifier)!='yes' and normalize-space(//qp/@determiner)='yes' or normalize-space(//typology/@classifier)!='yesAgr' and normalize-space(//qp/@determiner)='some' or normalize-space(//qp/@determinerClassifier)!='yes' and normalize-space(//qp/@determiner)='some' or normalize-space(//typology/@classifier)!='yesAgr' and normalize-space(//qp/@determinerNeg)='yes' or normalize-space(//qp/@determinerClassifier)!='yes' and normalize-space(//qp/@determinerNeg)='yes' or normalize-space(//typology/@classifier)!='yesAgr' and normalize-space(//qp/@determinerNeg)='some' or normalize-space(//qp/@determinerClassifier)!='yes' and normalize-space(//qp/@determinerNeg)='some'">
<p>
<xsl:text>The following chart summarizes how the quantifier determiners are expressed in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>:</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@determiner)='yes' or normalize-space(//qp/@determiner)='some' or normalize-space(//qp/@determinerNeg)='yes' or normalize-space(//qp/@determinerNeg)='some'">
<example num="xQP.QPDeterminers.34">
<table border="1">
				 <tr>
					<th>Type</th>
					<th>Quantifier Determiners</th>
					<th>Gloss</th>
				 </tr>
				 <xsl:if test="normalize-space(//qp/@determiner)='yes' or normalize-space(//qp/@determiner)='some'">
<xsl:variable name="sExampleValue0">
<xsl:value-of select="translate(string(//qp/determinerExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0" select="string-length(normalize-space($sExampleValue0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0 != 0 and $sExampleValue0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left" rowspan="1">
					   <xsl:text>positive</xsl:text>
					</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
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
					   <xsl:text>positive</xsl:text>
					</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
				 <xsl:if test="normalize-space(//qp/@determinerNeg)='yes' or normalize-space(//qp/@determinerNeg)='some'">
<xsl:variable name="sExampleValue1">
<xsl:value-of select="translate(string(//qp/determinerNegExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength1" select="string-length(normalize-space($sExampleValue1))" />
<xsl:choose>
<xsl:when test="$iExampleLength1 != 0 and $sExampleValue1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left" rowspan="1">
					   <xsl:text>negative</xsl:text>
					</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
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
					   <xsl:text>negative</xsl:text>
					</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
			  </table>
</example>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@determinerNeg)='yes' or normalize-space(//qp/@determinerNeg)='some'">
<p>
<xsl:text>See section </xsl:text>
<sectionRef sec="sNegNominal" />
<xsl:text> for examples of the negative elements used in sentences and discussion of the negation constructions in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.</xsl:text>
</p>
</xsl:if>
		</section2>
		<section2 id="sQPOtherQuantifiers">
			<secTitle>Other Quantifiers and Degree words</secTitle>
			<p>
<xsl:text>Other quantifiers, like </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>many</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>much</langData>
<xsl:text>, and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>few</langData>
<xsl:text>, come
in a different position in the nominal phrase.  In English,
this is after an article, demonstrative or possessor and
before an adjective and noun, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John’s many black dogs.</langData>
<xsl:text>.
Further, these quantifiers can be modified by degree words
such as </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>very</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>so</langData>
<xsl:text>, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>very many dogs</langData>
<xsl:text> or </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>so much
waste</langData>
<xsl:text>.</xsl:text>
</p>
			<xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@quantifierClassifier)='yes'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> has the following quantifiers of this type.  The forms shown in the chart are the roots; each one may surface with the apropriate classifier attached.</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' or normalize-space(//qp/@quantifierClassifier)!='yes'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> has the following quantifiers of this type:</xsl:text>
</p>
</xsl:if>
		   <example num="xQP.QPOtherQuantifiers.10">
<table border="1">
					<tr>
						<th>Quantifiers</th>
						<th>Gloss</th>
					</tr>
					<xsl:variable name="sExampleValue0">
<xsl:value-of select="translate(string(//qp/quantifierExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0" select="string-length(normalize-space($sExampleValue0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0 != 0 and $sExampleValue0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
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
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
				</table>
</example>
			<xsl:if test="normalize-space(//qp/@degree)='no'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> does not have any degree words which modify the quantifiers.</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@degree)='yes'">
<p>
<xsl:text></xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> has degree words which can modify the quantifiers.  These degree words occur </xsl:text>
<xsl:choose>
					<xsl:when test="//qp/@degreePos='before'">before</xsl:when>
					<xsl:when test="//qp/@degreePos='after'">after</xsl:when>
					<xsl:when test="//qp/@degreePos='either'">on either side (but not both sides) of</xsl:when>
					<xsl:when test="//qp/@degreePos='eitherOrBoth'">on either side or on both sides of</xsl:when>
					<xsl:when test="//qp/@degreePos='beforeOrBoth'">before or on both sides of</xsl:when>
					<xsl:when test="//qp/@degreePos='afterOrBoth'">after or on both sides of</xsl:when>
					<xsl:when test="//qp/@degreePos='both'">on both sides of</xsl:when>
					<xsl:when test="//qp/@degreePos='unknown'">_______</xsl:when>
				</xsl:choose>
<xsl:text> the quantifier.  </xsl:text>
<xsl:if test="normalize-space(//qp/@degree)='yes' and normalize-space(//qp/@degreeEitherRestricted)='unrestricted' and normalize-space(//qp/@degreePos)!='before' and normalize-space(//qp/@degreePos)!='after'">
					<xsl:text>All of the degree words can occur on either side of the quantifier.</xsl:text>
				</xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//qp/@degree)='yes' and normalize-space(//qp/@degreeEitherRestricted)='restricted' and normalize-space(//qp/@degreePos)!='before' and normalize-space(//qp/@degreePos)!='after'">
					<xsl:text>There are restrictions as to which of these degree words can occur on each side of the quantifier.</xsl:text>
				</xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@degreeClassifier)='yes' and normalize-space(//qp/@degree)='yes'">
<p>
<xsl:text>The roots for the degree words than can modify quantifiers in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> are shown here.  Each one may surface with the apropriate classifier attached.</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' and normalize-space(//qp/@degree)='yes' or normalize-space(//qp/@degreeClassifier)!='yes' and normalize-space(//qp/@degree)='yes'">
<p>
<xsl:text>The degree words than can modify quantifiers in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> are:</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//qp/@degree)='yes'">
<example num="xQP.QPOtherQuantifiers.20">
<table border="1">
				  <tr>
					 <th>Degree Words which modify Quantifiers</th>
					 <th>Gloss</th>
				  </tr>
				  <xsl:variable name="sExampleValue0">
<xsl:value-of select="translate(string(//qp/degreeWordExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0" select="string-length(normalize-space($sExampleValue0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0 != 0 and $sExampleValue0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore" />
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
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
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
			   </table>
</example>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@degree)='yes'">
<p>
<xsl:text>Examples showing the degree words modifying a quantifier are:</xsl:text>
</p>
</xsl:if>
		   <xsl:if test="normalize-space(//qp/@degree)='yes'">
<example num="xQP.QPOtherQuantifiers.24">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//qp/degreeExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(normalize-space(//qp/degreeExample))" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and normalize-space($sExampleValue) != ''">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//qp/degreeExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(normalize-space(//qp/degreeExample))" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xQP.QPOtherQuantifiers.24</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xQP.QPOtherQuantifiers.24.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoMorphemeGloss" />
<xsl:call-template name="DoWordGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
</xsl:if>
		</section2>
		<section2 id="sQPNumbers">
			<secTitle>Numbers</secTitle>
			<p>
<xsl:text>Numbers cannot be modified by the
degree words like the quantifiers can, though they occur in the same
position.  Cardinal numbers can, however, be modified by
ordinal numbers and by </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>next</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>last</langData>
<xsl:text>, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the first twenty boys</langData>
<xsl:text> or
</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the next one hundred years</langData>
<xsl:text>.  Ordinal numbers and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>next</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>last</langData>
<xsl:text> can also modify nouns directly, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the third girl</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the last boy</langData>
<xsl:text>.</xsl:text>
</p>
			<section3 id="sQPNumbersCardinal">
				<secTitle>Cardinal Numbers</secTitle>
				<xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@numberClassifier)='yes'">
<p>
<xsl:text>The basic forms for the cardinal numbers are given in the following chart.  Each one may surface with the apropriate classifier attached.</xsl:text>
</p>
</xsl:if>
			   <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' or normalize-space(//qp/@numberClassifier)!='yes'">
<p>
<xsl:text>The basic forms for the cardinal numbers are given in the following chart:</xsl:text>
</p>
</xsl:if>
			   <example num="xQP.QPNumbers.QPNumbersCardinal.8">
<table border="1">
						<tr>
							<th>Count</th>
							<th>Cardinal Numbers</th>
							<th>Gloss</th>
						</tr>
						<xsl:variable name="sExampleValue0">
<xsl:value-of select="translate(string(//qp/cardinalNumbers1to10),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0" select="string-length(normalize-space($sExampleValue0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0 != 0 and $sExampleValue0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left" rowspan="1">
<xsl:text>1 through 10</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
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
<xsl:text>1 through 10</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
						<xsl:variable name="sExampleValue1">
<xsl:value-of select="translate(string(//qp/cardinalNumbers11to20),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength1" select="string-length(normalize-space($sExampleValue1))" />
<xsl:choose>
<xsl:when test="$iExampleLength1 != 0 and $sExampleValue1 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue1" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength1" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left" rowspan="1">
<xsl:text>11 through 20</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
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
<xsl:text>11 through 20</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
						<xsl:variable name="sExampleValue2">
<xsl:value-of select="translate(string(//qp/cardinalNumbers30to100),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength2" select="string-length(normalize-space($sExampleValue2))" />
<xsl:choose>
<xsl:when test="$iExampleLength2 != 0 and $sExampleValue2 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue2" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue2" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength2" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left" rowspan="1">
<xsl:text>30 through 100 (by tens)</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
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
<xsl:text>30 through 100 (by tens)</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
					</table>
</example>
				<p>
<xsl:text>Larger cardinal numbers can be compounds which may be
written as separate words, such as </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>one hundred thirty three</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>four thousand and three</langData>
<xsl:text> or </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>six thousand one hundred and thirty three</langData>
<xsl:text>.
Examples of compound numbers in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> include:</xsl:text>
</p>
				<example num="xQP.QPNumbers.QPNumbersCardinal.12">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//qp/cardinalCompoundExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(normalize-space(//qp/cardinalCompoundExample))" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and normalize-space($sExampleValue) != ''">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//qp/cardinalCompoundExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(normalize-space(//qp/cardinalCompoundExample))" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xQP.QPNumbers.QPNumbersCardinal.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xQP.QPNumbers.QPNumbersCardinal.12.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoMorphemeGloss" />
<xsl:call-template name="DoWordGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
				<p>
<xsl:text>Based on the position of the unit number and any conjunctions, cardinal numbers in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> are </xsl:text>
<xsl:choose>
						<xsl:when test="//qp/@cardinalHead='before'">left-</xsl:when>
						<xsl:when test="//qp/@cardinalHead='after'">right-</xsl:when>
					</xsl:choose>
<xsl:text>headed.
</xsl:text>
</p>
			</section3>
			<section3 id="sQPNumbersOrdinal">
				<secTitle>Ordinal Numbers</secTitle>
				<p>
<xsl:text>In </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, ordinal numbers </xsl:text>
<xsl:choose>
						<xsl:when test="//qp/@ordinalFormation='affix'">are formed by adding an affix to the cardinal number.</xsl:when>
						<xsl:when test="//qp/@ordinalFormation='independent'">are all independent syntactic words, distinct from the cardinal numbers.</xsl:when>
						<xsl:when test="//qp/@ordinalFormation='both'">may be formed by adding an affix to the cardinal number, but some forms are independent syntactic words.</xsl:when>
					</xsl:choose>
</p>
			   <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@numberClassifier)='yes'">
<p>
<xsl:text>The basic forms for the first ten ordinal numbers are given in the following chart.  Each one may surface with the apropriate classifier attached.</xsl:text>
</p>
</xsl:if>
			   <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' or normalize-space(//qp/@numberClassifier)!='yes'">
<p>
<xsl:text>The basic forms for the first ten ordinal numbers are given in the following chart:</xsl:text>
</p>
</xsl:if>
			   <example num="xQP.QPNumbers.QPNumbersOrdinal.10">
<table border="1">
						<tr>
							<th>Count</th>
							<th>Ordinal Numbers</th>
							<th>Gloss</th>
						</tr>
						<xsl:variable name="sExampleValue0">
<xsl:value-of select="translate(string(//qp/ordinalNumbers),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength0" select="string-length(normalize-space($sExampleValue0))" />
<xsl:choose>
<xsl:when test="$iExampleLength0 != 0 and $sExampleValue0 != ' '">
<xsl:variable name="sCalculatedRows">
<xsl:call-template name="CalculateRows">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
</xsl:call-template>
</xsl:variable>
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue0" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="$iExampleLength0" />
</xsl:with-param>
<xsl:with-param name="columnsBefore">
<td align="left" rowspan="1">
<xsl:text>first through tenth</xsl:text>
</td>
</xsl:with-param>
<xsl:with-param name="columnsAfter">
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
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
<xsl:text>first through tenth</xsl:text>
</td>
<td>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
<td align="left">
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>ENTER GLOSS</xsl:text>
</gloss>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
					</table>
</example>
				<p>
<xsl:text>When the ordinal numbers in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> modify a cardinal number, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the first twenty boys</langData>
<xsl:text>, they occur </xsl:text>
<xsl:choose>
						<xsl:when test="//qp/@ordinalPos='before'">before</xsl:when>
						<xsl:when test="//qp/@ordinalPos='after'">after</xsl:when>
						<xsl:when test="//qp/@ordinalPos='either'">on either side (but not both sides) of</xsl:when>
						<xsl:when test="//qp/@ordinalPos='eitherOrBoth'">on either side or on both sides of</xsl:when>
						<xsl:when test="//qp/@ordinalPos='beforeOrBoth'">before or on both sides of</xsl:when>
						<xsl:when test="//qp/@ordinalPos='afterOrBoth'">after or on both sides of</xsl:when>
						<xsl:when test="//qp/@ordinalPos='both'">on both sides of</xsl:when>
						<xsl:when test="//qp/@ordinalPos='unknown'">_______</xsl:when>
					</xsl:choose>
<xsl:text> the cardinal number.  </xsl:text>
<xsl:if test="normalize-space(//qp/@ordinalEitherRestricted)='unrestricted' and normalize-space(//qp/@ordinalPos)!='before' and normalize-space(//qp/@ordinalPos)!='after' and normalize-space(//qp/@ordinalPos)!='unknown'">
						<xsl:text>All of the ordinal numbers can occur on either side of the cardinal number.</xsl:text>
					</xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//qp/@ordinalEitherRestricted)='restricted' and normalize-space(//qp/@ordinalPos)!='before' and normalize-space(//qp/@ordinalPos)!='after'">
						<xsl:text>There are restrictions as to which of the ordinal numbers can occur on each side of the cardinal number.</xsl:text>
					</xsl:if>
<xsl:text></xsl:text>
</p>
				<p>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> examples of the use of ordinal numbers and the modifiers meaning “last” or “next” within a nominal phrase include:</xsl:text>
</p>
				<example num="xQP.QPNumbers.QPNumbersOrdinal.16">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//qp/ordinalExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(normalize-space(//qp/ordinalExample))" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and normalize-space($sExampleValue) != ''">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//qp/ordinalExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(normalize-space(//qp/ordinalExample))" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xQP.QPNumbers.QPNumbersOrdinal.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xQP.QPNumbers.QPNumbersOrdinal.16.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoMorphemeGloss" />
<xsl:call-template name="DoWordGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
			</section3>
		</section2>
	</section1>
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
	

   
	  
	  
	  
	  
	  
	  
	  
	  
   
   
	  
	  
	  
	  
	  
   
   
	  
	  
	  
	  
	  
   
   
	  
	  
	  
   
   
	  
	  
	  
   
   
	  
   
   
	  
   
   
	  
	  
	  
	  
	  
   
   
	  
	  
	  
	  
	  
   
   
	  
	  
	  
	  
	  
	  
	  
   

	
		
	
	
		
	
	
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
	
	
		
	
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   

	
		
	

	
		
		
		
		
		
	
	
		
		
		
		
		
	

	
		
		
		
		
		
	
	
		
		
		
		
		
	
	
		
		
		
	
	
		
		
		
	


   
	  
	  
	  
   
   
	  
	  
	  
   
   
	  
	  
	  
	  
		  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
   
   
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
   
   
	  
	  
	  
   
   
	  
	  
	  
   
   
	  
	  
	  
	  
		 
	  
   
	  
	  
	  
	  
	  
	  
	  
   
   
	  
	  
	  
   
   
	  
	  
	  
   
   
	  
	  
	  
	  
	  
	  
	  
   
</xsl:template>
</xsl:stylesheet>
