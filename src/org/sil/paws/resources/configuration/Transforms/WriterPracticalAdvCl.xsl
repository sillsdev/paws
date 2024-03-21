<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="advcl">
    <section1 id="sAdvCl">
        <secTitle>Adverbial Clauses</secTitle>
        <p>
<xsl:text>This section considers the complements that can follow temporal and reason adverbs, which were introduced in sections </xsl:text>
<sectionRef sec="sAdvPTemporal" />
<xsl:text> and </xsl:text>
<sectionRef sec="sAdvPReason" />
<xsl:text>.  All of these adverbial clauses act the same as simple adverbs, so they will be considered adverbial phrases with the appropriate type of complement.  Adverbial clauses may normally occur either sentence-initially or sentence-finally.</xsl:text>
</p>
        <section2 id="sAdvClTemporal">
            <secTitle>Complements of Temporal Adverbs</secTitle>
            <p contentType="ctComparativeIntro">
<xsl:text>English examples of temporal adverbs with complements used in full sentences include: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[Since then], John has been moody</langData>
<xsl:text>; </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John has been home [since last week]</langData>
<xsl:text>; </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[Since John has been home from the hospital] he is doing better</langData>
<xsl:text>; </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John is feeling fine [now that he is home from the hospital</langData>
<xsl:text>; </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The dog followed Sue everywhere [when she returned from college]</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[When she returned from college], the dog followed Sue everywhere</langData>
<xsl:text>. These examples show that particular temporal adverbs allow certain types of complements.  For example, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>since</langData>
<xsl:text> can be followed by another temporal adverb or by a temporal nominal phrase or it may have a sentential complement.  The temporal adverb </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>when</langData>
<xsl:text> also takes a finite sentential complement, whereas </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>now</langData>
<xsl:text> has a finite clausal complement with a complementizer.</xsl:text>
</p>
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
<xsl:text>, the temporal adverbs allow complements similar to those discussed in section </xsl:text>
<sectionRef sec="sComp" />
<xsl:text>.  The complements occur </xsl:text>
<xsl:choose>
                    <xsl:when test="//advcl/@advOrNPPos='before'">before</xsl:when>
                    <xsl:when test="//advcl/@advOrNPPos='after'">after</xsl:when>
                    <xsl:when test="//advcl/@advOrNPPos='either'">on either side of</xsl:when>
                    <xsl:when test="//advcl/@advOrNPPos='unknown'">_______</xsl:when>
                </xsl:choose>
<xsl:text> the temporal adverb.  Examples of temporal adverbial clauses included in full sentences are:</xsl:text>
</p>
            <example num="xAdvCl.AdvClTemporal.8">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//advcl/tempSentExample" />
<xsl:with-param name="sExNumber">xAdvCl.AdvClTemporal.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
        </section2>
        <section2 id="sAdvClReason">
            <secTitle>Complements of Reason Adverbs</secTitle>
            <p contentType="ctComparativeIntro">
<xsl:text>Adverbial phrases or clauses which express reason or purpose consist of adverbs which stand alone, such as </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>therefore</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>so</langData>
<xsl:text> (which are sometimes considered sentential conjunctions), along with those that take various types of complement clauses.  English examples of reason or purpose adverbs which take clausal complements include: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John rushed to the hospital [because Sue was in an accident</langData>
<xsl:text>; </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>[Since Jill said that she likes him], Joe smiles all the time</langData>
<xsl:text>; </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Bill rushed to the airport [so that he could see Kay before she left]</langData>
<xsl:text>; </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The troops threw grenades at the enemy [in order to escape]</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The troops threw grenades at the enemy [in order for the prisoners to escape]</langData>
<xsl:text>.  In the examples, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>because</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>since</langData>
<xsl:text> take only finite sentential complements and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>so</langData>
<xsl:text> takes a finite clausal complement with a complementizer.  In contrast, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>in order</langData>
<xsl:text> takes either a nonfinite sentential complement with a pro-dropped subject or a nonfinite clausal complement with a complementizer.  This is the same set of complements as shown for </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>like</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>hate</langData>
<xsl:text> in section </xsl:text>
<sectionRef sec="sComp" />
<xsl:text>.</xsl:text>
</p>
           <p contentType="ctPracticalIntro">
<xsl:text>Adverbial phrases or clauses which express reason or purpose consist of adverbs which stand alone, such as </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>therefore</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>so</langData>
<xsl:text> (which are sometimes considered sentential conjunctions), along with those that take various types of complement clauses similar to those discussed for verbs in section </xsl:text>
<sectionRef sec="sComp" />
<xsl:text>.</xsl:text>
</p>
           <p>
<xsl:text>Examples of reason or purpose adverbial clauses in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, included in full sentences are:</xsl:text>
</p>
            <example num="xAdvCl.AdvClReason.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//advp/reasonExample" />
<xsl:with-param name="sExNumber">xAdvCl.AdvClReason.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
        </section2>
    </section1>
</xsl:template>
</xsl:stylesheet>
