<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="focus">
   <section1 id="sFocus">
	  <secTitle>Topic and Focus Constructions</secTitle>
	  <p contentType="ctPracticalIntro">
<xsl:text>
		 This section considers two types of constructions which draw attention to a particular element.  Since topics occur outside of focus constructions and have greater scope, they will be considered first.  It is possible for a single sentence to have both a topic and a focused phrase.</xsl:text>
</p>
      <p contentType="ctComparativeIntro">
<xsl:text>
         This section considers two types of constructions which draw attention to a particular element.  Since topics occur outside of focus constructions and have greater scope, they will be considered first.  The example </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>As for Bill, soccer he plays __ best</langData>
<xsl:text> shows that a single sentence may have both a topic and a focused phrase.  In this case, the topic </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Bill</langData>
<xsl:text> is introduced by the topic marker </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>as for</langData>
<xsl:text>, then the focused phrase </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>soccer</langData>
<xsl:text>, which has been moved out of its regular place in the sentence follows.</xsl:text>
</p>
   <section2 id="sFocusTopics">
		 <secTitle>Topics and Topic Markers</secTitle>
		 <p contentType="ctPracticalIntro">
<xsl:text>
			As defined here, topic constructions consist of a topic phrase followed by a complete sentence or question and usually set apart by punctuation.  Certain markers may be used to set off topics. </xsl:text>
</p>
      <p contentType="ctComparativeIntro">
<xsl:text>
         As defined here, topic constructions consist of a topic phrase followed by a complete sentence or question and usually set apart by punctuation.  Certain markers may be used to set off topics, as shown in the following English examples: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>As for John, I think he will make a good doctor</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Speaking of Jill, where is she?</langData>
</p>
      
		 <xsl:if test="normalize-space(//focus/@topic)='no'">
<p>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> does not allow topic phrases. </xsl:text>
</p>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@topic)='yes'">
<p>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> has topic phrases which occur </xsl:text>
<xsl:choose>
			   <xsl:when test="//focus/@topicPos='before'">before</xsl:when>
			   <xsl:when test="//focus/@topicPos='after'">after</xsl:when>
			   <xsl:when test="//focus/@topicPos='unknown'">_______</xsl:when>
            </xsl:choose>
<xsl:text> the main sentence or question.   Some examples include:</xsl:text>
</p>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@topic)='yes'">
<example num="xFocus.FocusTopics.12">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//focus/topicExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(normalize-space(//focus/topicExample))" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and normalize-space($sExampleValue) != ''">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//focus/topicExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(normalize-space(//focus/topicExample))" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xFocus.FocusTopics.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xFocus.FocusTopics.12.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoWordGloss" />
<xsl:call-template name="DoMorphemeGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@topic)='yes'">
<p>
<xsl:text>As the examples show, the topic phrase in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> is </xsl:text>
<xsl:choose>
			   <xsl:when test="//focus/@topicMarker='no'">not marked by a topic marker.  Only the position in the sentence and possibly punctuation distinguish the topic phrase.</xsl:when>
			   <xsl:when test="//focus/@topicMarker='yesWord'">marked by certain words or phrases.</xsl:when>
			   <xsl:when test="//focus/@topicMarker='yesClitic'">marked by one or more clitics which attach to the topic phrase.  These clitics are: </xsl:when>
			   <xsl:when test="//focus/@topicMarker='yesAffix'">marked by one or more affixes which attach to the head noun in the topic phrase.  These affixes are: </xsl:when>
			</xsl:choose>
<xsl:if test="normalize-space(//focus/@topic)='yes' and normalize-space(//focus/@topicMarker)='yesWord'">
<xsl:text>The topic markers occur </xsl:text>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerAfter/@checked)='no' and normalize-space(//focus/topicMarkerBoth/@checked)='no'">
<xsl:text>before</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='no' and normalize-space(//focus/topicMarkerAfter/@checked)='yes' and normalize-space(//focus/topicMarkerBoth/@checked)='no'">
<xsl:text>after</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='no' and normalize-space(//focus/topicMarkerAfter/@checked)='no' and normalize-space(//focus/topicMarkerBoth/@checked)='yes'">
<xsl:text>on both sides of</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerAfter/@checked)='yes' and normalize-space(//focus/topicMarkerBoth/@checked)='no'">
<xsl:text>on either side of</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerAfter/@checked)='no' and normalize-space(//focus/topicMarkerBoth/@checked)='yes'">
<xsl:text>before or on both sides of</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='no' and normalize-space(//focus/topicMarkerAfter/@checked)='yes' and normalize-space(//focus/topicMarkerBoth/@checked)='yes'">
<xsl:text>after or on both sides of</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerAfter/@checked)='yes' and normalize-space(//focus/topicMarkerBoth/@checked)='yes'">
<xsl:text>on either side or on both sides of</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/topicMarkerOther/@checked)='no'">
<xsl:text> the topic phrase.  </xsl:text>
			   </xsl:if>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='no' and normalize-space(//focus/topicMarkerAfter/@checked)='no' and normalize-space(//focus/topicMarkerBoth/@checked)='no' and normalize-space(//focus/topicMarkerOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//focus/topicMarkerOther" />
<xsl:text>.  </xsl:text>
			   </xsl:if>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerOther/@checked)='yes' or normalize-space(//focus/topicMarkerAfter/@checked)='yes' and normalize-space(//focus/topicMarkerOther/@checked)='yes' or normalize-space(//focus/topicMarkerBoth/@checked)='yes' and normalize-space(//focus/topicMarkerOther/@checked)='yes'">
<xsl:text> the topic phrase and may also occur ___</xsl:text>
<xsl:value-of select="//focus/topicMarkerOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
			   <xsl:text> A topic marker is </xsl:text>
<xsl:choose>
				  <xsl:when test="//focus/@topicMarkerRequired='no'">optional</xsl:when>
				  <xsl:when test="//focus/@topicMarkerRequired='yes'">required</xsl:when>
</xsl:choose>
			   <xsl:text> whenever there is a topic phrase.  The topic markers are:</xsl:text>
			</xsl:if>
</p>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@topic)='yes' and normalize-space(//focus/@topicMarker)='yesWord'">
<example num="xFocus.FocusTopics.16">
<table border="1">
			   <tr>
				  <th>Topic Markers</th>
				  <th>Gloss</th>
			   </tr>
			   <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//focus/topicMarkerExample),'.','')" />
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
      <xsl:if test="normalize-space(//focus/@topic)='yes' and normalize-space(//focus/@topicMarker)='yesClitic'">
<example num="xFocus.FocusTopics.18">
<table border="1">
            <tr>
               <th>Topic Marker Clitics</th>
               <th>Gloss</th>
            </tr>
            <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//focus/topicMarkerCliticExample),'.','')" />
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
      <xsl:if test="normalize-space(//focus/@topic)='yes' and normalize-space(//focus/@topicMarker)='yesAffix'">
<example num="xFocus.FocusTopics.20">
<table border="1">
            <tr>
               <th>Topic Marker Affixes</th>
               <th>Gloss</th>
            </tr>
            <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//focus/topicMarkerAffixExample),'.','')" />
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
   </section2>

	  <section2 id="sFocusFocus">
		 <secTitle>Focused Phrases and Focus Markers</secTitle>
		 <p contentType="ctPracticalIntro">
<xsl:text>Focus constructions also have a nominal phrase which occurs either first or last and may be set off by punctuation.  However, in contrast to topics, the phrase in focus is moved from its normal position in the sentence, leaving a gap.  Certain markers may be used to mark the focused phrase.</xsl:text>
</p>
	     <p contentType="ctComparativeIntro">
<xsl:text>Focus constructions also have a nominal phrase which occurs either first or last and may be set off by punctuation  However, in contrast to topics, the phrase in focus is moved from its normal position in the sentence, leaving a gap. Certain markers, such as </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>only</langData>
<xsl:text> in English, may be used to mark the focused phrase.  Focus constructions are not used frequently in SVO languages, since the subject is usually in focus and is already first in the normal order.  Languages with other word orders, such as VSO languages, may make extensive use of focus constructions.  English examples of focus constructions include: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Girls, I like __</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Soccer, Bill plays __ best</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Only that boy, Jerry hit  __ </langData>
<xsl:text>.</xsl:text>
</p>
	     
		 <xsl:if test="normalize-space(//focus/@focus)='no'">
<p>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> does not allow a focused phrase to be moved before or after the rest of the sentence out of its normal position. </xsl:text>
</p>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@focus)='yes'">
<p>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> has focused phrases which occur </xsl:text>
<xsl:choose>
			   <xsl:when test="//focus/@focusPos='before'">before</xsl:when>
			   <xsl:when test="//focus/@focusPos='after'">after</xsl:when>
			   <xsl:when test="//focus/@focusPos='unknown'">_______</xsl:when>
            </xsl:choose>
<xsl:text> the rest of the sentence.   Some examples include:</xsl:text>
</p>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@focus)='yes'">
<example num="xFocus.FocusFocus.12">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//focus/focusExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(normalize-space(//focus/focusExample))" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and normalize-space($sExampleValue) != ''">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//focus/focusExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(normalize-space(//focus/focusExample))" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xFocus.FocusFocus.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xFocus.FocusFocus.12.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">lVernacular</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoWordGloss" />
<xsl:call-template name="DoMorphemeGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@focus)='yes'">
<p>
<xsl:text>As the examples show, the focused phrase in </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='en'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='en'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> is </xsl:text>
<xsl:choose>
			   <xsl:when test="//focus/@focusMarker='no'">not marked by a focus marker.  Only the position in the sentence and possibly punctuation distinguish the focused phrase.</xsl:when>
			   <xsl:when test="//focus/@focusMarker='yesWord'">marked by certain words or phrases. </xsl:when>
			   <xsl:when test="//focus/@focusMarker='yesClitic'">marked by one or more clitics which attach to the focused phrase.  These clitics are:</xsl:when>
			   <xsl:when test="//focus/@focusMarker='yesAffix'">marked by one or more affixes which attach to the heand noun in the focused phrase.  These affixes are:</xsl:when>
			</xsl:choose>
<xsl:if test="normalize-space(//focus/@focus)='yes' and normalize-space(//focus/@focusMarker)='yesWord'">
<xsl:text>The focus markers occur </xsl:text>
			   <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='yes' and normalize-space(//focus/topicMarkerAfter/@checked)='no' and normalize-space(//focus/topicMarkerBoth/@checked)='no'">
<xsl:text>before</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/topicMarkerBefore/@checked)='no' and normalize-space(//focus/focusMarkerAfter/@checked)='yes' and normalize-space(//focus/focusMarkerBoth/@checked)='no'">
<xsl:text>after</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='no' and normalize-space(//focus/focusMarkerAfter/@checked)='no' and normalize-space(//focus/focusMarkerBoth/@checked)='yes'">
<xsl:text>on both sides of</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='yes' and normalize-space(//focus/focusMarkerAfter/@checked)='yes' and normalize-space(//focus/focusMarkerBoth/@checked)='no'">
<xsl:text>on either side of</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='yes' and normalize-space(//focus/focusMarkerAfter/@checked)='no' and normalize-space(//focus/focusMarkerBoth/@checked)='yes'">
<xsl:text>before or on both sides of</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='no' and normalize-space(//focus/focusMarkerAfter/@checked)='yes' and normalize-space(//focus/focusMarkerBoth/@checked)='yes'">
<xsl:text>after or on both sides of</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='yes' and normalize-space(//focus/focusMarkerAfter/@checked)='yes' and normalize-space(//focus/focusMarkerBoth/@checked)='yes'">
<xsl:text>on either side or on both sides of</xsl:text>
</xsl:if>
			   <xsl:if test="normalize-space(//focus/focusMarkerOther/@checked)='no'">
<xsl:text> the focused phrase.  </xsl:text>
			   </xsl:if>
			   <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='no' and normalize-space(//focus/focusMarkerAfter/@checked)='no' and normalize-space(//focus/focusMarkerBoth/@checked)='no' and normalize-space(//focus/focusMarkerOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//focus/focusMarkerOther" />
<xsl:text>.  </xsl:text>
			   </xsl:if>
			   <xsl:if test="normalize-space(//focus/focusMarkerBefore/@checked)='yes' and normalize-space(//focus/focusMarkerOther/@checked)='yes' or normalize-space(//focus/focusMarkerAfter/@checked)='yes' and normalize-space(//focus/focusMarkerOther/@checked)='yes' or normalize-space(//focus/focusMarkerBoth/@checked)='yes' and normalize-space(//focus/focusMarkerOther/@checked)='yes'">
<xsl:text> the focused phrase and may also occur ___</xsl:text>
<xsl:value-of select="//focus/focusMarkerOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
			   <xsl:text> A focus marker is </xsl:text>
<xsl:choose>
				  <xsl:when test="//focus/@focusMarkerRequired='no'">optional</xsl:when>
				  <xsl:when test="//focus/@focusMarkerRequired='yes'">required</xsl:when>
</xsl:choose>
			   <xsl:text> whenever there is a focused phrase.  The focus markers are:</xsl:text>
			</xsl:if>
</p>
</xsl:if>
		 <xsl:if test="normalize-space(//focus/@focus)='yes' and normalize-space(//focus/@focusMarker)='yesWord'">
<example num="xFocus.FocusFocus.16">
<table border="1">
			   <tr>
				  <th>Focus Markers</th>
				  <th>Gloss</th>
			   </tr>
			   <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//focus/focusMarkerExample),'.','')" />
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
	     <xsl:if test="normalize-space(//focus/@focus)='yes' and normalize-space(//focus/@focusMarker)='yesClitic'">
<example num="xFocus.FocusFocus.18">
<table border="1">
	           <tr>
	              <th>Focus Marker Clitics</th>
	              <th>Gloss</th>
	           </tr>
	           <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//focus/focusMarkerCliticExample),'.','')" />
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
	     <xsl:if test="normalize-space(//focus/@focus)='yes' and normalize-space(//focus/@focusMarker)='yesAffix'">
<example num="xFocus.FocusFocus.20">
<table border="1">
	           <tr>
	              <th>Focus Marker Affixes</th>
	              <th>Gloss</th>
	           </tr>
	           <xsl:variable name="sExampleValue0.0">
<xsl:value-of select="translate(string(//focus/focusMarkerAffixExample),'.','')" />
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
	     

	  </section2>

   </section1>
   
	  
   
   
	  
   
   
	  
	  
	  
   
   
      
      
      
   
   
      
      
      
   
   
	  
	  
	  
   

   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
   
	  
   
   
	  
   
   
	  
	  
	  
   
   
      
      
      
   
   
      
      
      
   
   
	  
	  
	  
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   

</xsl:template>
</xsl:stylesheet>
