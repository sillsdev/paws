<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="relcl">
   <section1 id="sRelCl">
      <secTitle>Relative Clauses</secTitle>
      <p contentType="ctComparativeIntro">
<xsl:text>Relative clauses normally modify a head noun and have one of four structures: like a complement clause headed by the verbal complementizer </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>that</langData>
<xsl:text>, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the man that came to the meeting late</langData>
<xsl:text>; like a content question with </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>who</langData>
<xsl:text> or </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>which</langData>
<xsl:text> fronted, as in </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>the man who came to the meeting late</langData>
<xsl:text>; (or for some languages other than English) like a complement clause but with a special relative marker occurring in the complementizer position, or possibly with two markers which occur on each sides of the relative clause; (or for some languages other than English) like a regular sentence with a relative marker attached to the verb.</xsl:text>
</p>
      <p contentType="ctPracticalIntro">
<xsl:text>Relative clauses normally modify a head noun and have one of four structures: like a complement clause with the normal verbal complementizer; like a content question with an interrogative word fronted; like a complement clause but with a special relative marker; or like a regular sentence with a relative marker attached to the verb.</xsl:text>
</p>
      <xsl:if test="normalize-space(//relcl/@exist)='no'">
<p>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> does not have any type of relative clause.</xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@exist)='yes'">
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
<xsl:text>, relative clauses occur </xsl:text>
<xsl:choose>
               <xsl:when test="//relcl/@clausePos='before'">before</xsl:when>
               <xsl:when test="//relcl/@clausePos='after'">after</xsl:when>
               <xsl:when test="//relcl/@clausePos='either'">on either side of</xsl:when>
               <xsl:when test="//relcl/@clausePos='unknown'"> _______ </xsl:when>
            </xsl:choose>
<xsl:text> the head noun as shown in the following examples:</xsl:text>
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
<xsl:text>The </xsl:text>
</xsl:if>
         <xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Some of the </xsl:text>
</xsl:if>
<xsl:text>relative clauses in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
              <xsl:text> are like a complement clause which uses the normal verbal complementizer.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPRel/@checked)='yes'">
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='no' and normalize-space(//relcl/relTypeIP/@checked)='no' and normalize-space(//relcl/relTypeOther/@checked)='no'">
<xsl:text>The </xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='yes'">
<xsl:text>Other </xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Some of the </xsl:text>
</xsl:if>
<xsl:text>relative clauses in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
            <xsl:text> are like a complement clause with special relative markers.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPWh/@checked)='yes'">
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='no' and normalize-space(//relcl/relTypeIP/@checked)='no' and normalize-space(//relcl/relTypeOther/@checked)='no'">
<xsl:text>The </xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes'">
<xsl:text>Other </xsl:text>
</xsl:if>
            <xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Some of the </xsl:text>
</xsl:if>
<xsl:text>relative clauses in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
            <xsl:text> are like a content question with an interrogative word fronted.  </xsl:text>
<xsl:choose>
               <xsl:when test="//relcl/@whAndComp='no'">Only the fronted interrogative word occurs in this type of relative clause; there is no relative marker.</xsl:when>  
               <xsl:when test="//relcl/@whAndComp='yes'">A relative marker and the fronted interrogative word are both required in this type of relative clause. </xsl:when>
               <xsl:when test="//relcl/@whAndComp='optional'">A relative marker may optionally occur along with the fronted interrogative word in this type of relative clause. </xsl:when>
            </xsl:choose>
</xsl:if>
<xsl:if test="normalize-space(//relcl/@relWord)='some'">
<xsl:text>Some of the </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/@relWord)!='some'">
<xsl:text>The </xsl:text>
</xsl:if>
<xsl:text>relative markers or complementizers </xsl:text>
<xsl:choose>
            <xsl:when test="//relcl/@relWord='yes'">are written as independent words.  </xsl:when>
            <xsl:when test="//relcl/@relWord='some'">are written as independent words but some attach </xsl:when>
            <xsl:when test="//relcl/@relWord='no'">attach </xsl:when>
         </xsl:choose>
<xsl:choose>
            <xsl:when test="//relcl/@relCliticPos='before'">to the beginning of the first word in the sentence part of the relative clause as a phrasal proclitic. These clitics are:</xsl:when>
            <xsl:when test="//relcl/@relCliticPos='after'">to the end of the final word in the sentence part of the relative clause as a phrasal enclitic. These clitics are:</xsl:when>
            <xsl:when test="//relcl/@relCliticPos='both'">on both sides to surround the sentence part of the relative clause as a phrasal clitics. These clitics are:</xsl:when>
            <xsl:when test="//relcl/@relCliticPos='unknown'">to the ________ in the sentence part of the relative clause as a phrasal clitic. These clitics are:</xsl:when>
         </xsl:choose>
</p>
</xsl:if>     
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//comp/@comp)!='no' and normalize-space(//relcl/@relWord)!='yes' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/@relWord)!='yes' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/@whAndComp)!='no' and normalize-space(//relcl/@relWord)!='yes'">
<example num="xRelCl.16">
<table border="1">
            <tr>
               <th>Relative Marker Clitics</th>
               <th>Gloss</th>
            </tr>
            <tr>
<xsl:for-each select="//relcl/relCliticExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ENTER GLOSS</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//relcl/relCliticExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//relcl/relCliticExample/form[position() &gt; 1]">
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
<xsl:otherwise>ENTER GLOSS</xsl:otherwise>
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
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//comp/@comp)!='no' and normalize-space(//relcl/@relWord)!='no' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/@relWord)!='no' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/@whAndComp)!='no' and normalize-space(//relcl/@relWord)!='no'">
<p>
<xsl:text>The relative marker words occur </xsl:text>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='yes' and normalize-space(//relcl/relWordAfter/@checked)='no' and normalize-space(//relcl/relWordBoth/@checked)='no'">
<xsl:text>before</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='no' and normalize-space(//relcl/relWordAfter/@checked)='yes' and normalize-space(//relcl/relWordBoth/@checked)='no'">
<xsl:text>after</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='no' and normalize-space(//relcl/relWordAfter/@checked)='no' and normalize-space(//relcl/relWordBoth/@checked)='yes'">
<xsl:text>on both sides of</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='yes' and normalize-space(//relcl/relWordAfter/@checked)='yes' and normalize-space(//relcl/relWordBoth/@checked)='no'">
<xsl:text>on either side of</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='yes' and normalize-space(//relcl/relWordAfter/@checked)='no' and normalize-space(//relcl/relWordBoth/@checked)='yes'">
<xsl:text>before or on both sides of</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='no' and normalize-space(//relcl/relWordAfter/@checked)='yes' and normalize-space(//relcl/relWordBoth/@checked)='yes'">
<xsl:text>after or on both sides of</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='yes' and normalize-space(//relcl/relWordAfter/@checked)='yes' and normalize-space(//relcl/relWordBoth/@checked)='yes'">
<xsl:text>on either side or on both sides of</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordOther/@checked)='no'">
<xsl:text> the sentence part of the relative clause.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='no' and normalize-space(//relcl/relWordAfter/@checked)='no' and normalize-space(//relcl/relWordBoth/@checked)='no' and normalize-space(//relcl/relWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//relcl/relWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relWordBefore/@checked)='yes' and normalize-space(//relcl/relWordOther/@checked)='yes' or normalize-space(//relcl/relWordAfter/@checked)='yes' and normalize-space(//relcl/relWordOther/@checked)='yes' or normalize-space(//relcl/relWordBoth/@checked)='yes' and normalize-space(//relcl/relWordOther/@checked)='yes'">
<xsl:text> the sentence part of the relative clause and may also occur ___</xsl:text>
<xsl:value-of select="//relcl/relWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>The relative marker words are: </xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//comp/@comp)!='no' and normalize-space(//relcl/@relWord)!='no' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/@relWord)!='no' or normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/@whAndComp)!='no' and normalize-space(//relcl/@relWord)!='no'">
<example num="xRelCl.20">
<table border="1">
               <tr>
                  <th>Relative Marker Words</th>
                  <th>Gloss</th>
               </tr>
               <tr>
<xsl:for-each select="//relcl/relWordExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ENTER GLOSS</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//relcl/relWordExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//relcl/relWordExample/form[position() &gt; 1]">
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
<xsl:otherwise>ENTER GLOSS</xsl:otherwise>
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
         
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='no' and normalize-space(//relcl/relTypeOther/@checked)='no'">
<xsl:text>The </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' or normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes'">
<xsl:text>Other </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Some of the </xsl:text>
</xsl:if>
<xsl:text>relative clauses in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> are like a regular sentence with a special relative marker attached to the verb.  The relative affix is:</xsl:text>
</p>
</xsl:if>
         <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeIPRel/@checked)='yes'">
<example num="xRelCl.24">
<table border="1">
               <tr>
                  <th>Relative Affix</th>
                  <th>Gloss</th>
               </tr>
               <tr>
<xsl:for-each select="//relcl/relAffixExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ENTER GLOSS</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//relcl/relAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//relcl/relAffixExample/form[position() &gt; 1]">
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
<xsl:otherwise>ENTER GLOSS</xsl:otherwise>
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
         
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='no' and normalize-space(//relcl/relTypeIP/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='no'">
<xsl:text>The </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes' or normalize-space(//relcl/relTypeIPRel/@checked)='yes' and normalize-space(//relcl/relTypeIP/@checked)='yes'">
<xsl:text>Other </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='no' and normalize-space(//relcl/relTypeIP/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>Some of the </xsl:text>
</xsl:if>
<xsl:text>relative clauses in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> are like a regular sentence modifying the head noun, with no special marking.  </xsl:text>
</p>
</xsl:if>
      
      <xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='no' and normalize-space(//relcl/relTypeCPWh/@checked)='no' and normalize-space(//relcl/relTypeCPRel/@checked)='no' and normalize-space(//relcl/relTypeIPRel/@checked)='no' and normalize-space(//relcl/relTypeIP/@checked)='no' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>The relative clauses in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
            <xsl:text> are formed by ___</xsl:text>
<xsl:value-of select="//relcl/relTypeOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//relcl/relTypeCPComp/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes' or normalize-space(//relcl/relTypeCPWh/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes' or normalize-space(//relcl/relTypeCPRel/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes' or normalize-space(//relcl/relTypeIPRel/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes' or normalize-space(//relcl/relTypeIP/@checked)='yes' and normalize-space(//relcl/relTypeOther/@checked)='yes'">
<xsl:text>There are also relative clauses which are formed by ___</xsl:text>
<xsl:value-of select="//relcl/relTypeOther" />
<xsl:text>.</xsl:text>
</xsl:if>
</p>
</xsl:if>    
      
      <xsl:if test="normalize-space(//relcl/@exist)='yes'">
<p>
<xsl:text>Full sentence examples of the above relative clauses include:</xsl:text>
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
<xsl:text>Some languages also allow a relative clause to occur by itself as a nominal phrase without a head noun to modify, usually called “headless” relative clauses.  For example, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Julie brought [the food that we ate today]</langData>
<xsl:text> has a full relative clause in the object position, while </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Julie brought [what we ate today]</langData>
<xsl:text> has a headless relative clause as the object.</xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@exist)='yes'">
<p contentType="ctPracticalIntro">
<xsl:text>In “headless” relative clauses, a relative clause occurs by itself as a nominal phrase, without a head noun to modify.</xsl:text>
</p>
</xsl:if>
      
      <xsl:if test="normalize-space(//relcl/@exist)='yes'">
<p>
<xsl:text> </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> </xsl:text>
<xsl:choose>
            <xsl:when test="//relcl/@headless='no'">requires a head noun to be present in all relative clauses, so no headless relative clauses are allowed.</xsl:when>
            <xsl:when test="//relcl/@headless='yes'">allows a head noun to be missing in relative clauses, so headless relative clauses are allowed.</xsl:when>
         </xsl:choose>
<xsl:text> </xsl:text>
</p>
</xsl:if>
      <xsl:if test="normalize-space(//relcl/@headless)='yes' and normalize-space(//relcl/@exist)='yes'">
<p>
<xsl:text>Examples of headless relative clauses included in full sentences include:</xsl:text>
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
