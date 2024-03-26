<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="adjp">
    <section1 id="sAdjP">
        <secTitle>Los adjetivos</secTitle>
        <p>
<xsl:text>En esta sección se consideran los adjetivos calificativos, los números y otros cuantificadores, los artículos y los adjetivos demostrativos. Las posiciones permitidas para estos elementos dentro de la frase nominal se tratarán en la sección </xsl:text>
<sectionRef sec="sNP" />
<xsl:text>.
</xsl:text>
</p>
  <section2 id="sAdjQual">
      <secTitle>Adjetivos calificativos</secTitle>
     <p contentType="ctPracticalIntro">
<xsl:text>Los adjetivos calificativos expresan tamaño, color, edad, textura, forma o cualidad. En esta sección se tratan los adjetivos que modifican a sustantivos, en contraste con los adjetivos que actúan como predicados que se tratarán en la sección </xsl:text>
<sectionRef sec="sIPCop" />
<xsl:text>.</xsl:text>
</p>
     <p contentType="ctComparativeIntro">
<xsl:text>Los adjetivos calificativos expresan tamaño, color, edad, textura, forma o cualidad.  Una característica de adjetivos calificativos en muchas lenguas es que se permite más de una frase adjetival modificar a un sustantivo.  También, el orden de los adjetivos puede cambir en general (con un cambio pequeño en el significado debido a los cambios en ámbito o alcance de cada adjetivo).  Por ejemplo, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>hard dull brass rods</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘las barras de cobre amarillo pálido duras’</xsl:text>
</gloss>
<xsl:text> contra </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>dull hard brass rods</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘las barras de cobre amarillo duras pálidas’</xsl:text>
</gloss>
<xsl:text> contra </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>brass hard dull rods</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘las barras pálidas duras de cobre amarillo’</xsl:text>
</gloss>
<xsl:text>.</xsl:text>
</p>
     <p contentType="ctComparativeIntro">
<xsl:text>En esta sección se tratan los adjetivos que modifican a sustantivos, en contraste que los adjetivos que funcionan como predicados.  Las oraciones con adjetivos predicativos se cubren en la sección </xsl:text>
<sectionRef sec="sIPCop" />
<xsl:text>.</xsl:text>
</p>
     
     <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//adjp/@adjectiveClassifier)='yes'">
<p>
<xsl:text>Algunos ejemplos en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> de las raíces de adjetivos calificativos que expresan tamaño, color, edad, textura, forma o cualidad se presentan en el siguiente.cuadro.
        Cada una puede presentarse con el clasificador apropiado.</xsl:text>
</p>
</xsl:if>              
     <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' or normalize-space(//adjp/@adjectiveClassifier)!='yes'">
<p>
<xsl:text>Algunos ejemplos en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> de adjetivos calificativos que expresan tamaño, color, edad, textura, forma o cualidad se presentan en el siguiente cuadro:</xsl:text>
</p>
</xsl:if>              
     <example num="xAdjP.AdjQual.14">
<table border="1">
           <tr>
              <th>Adjetivos calificativos</th>
              <th>Glosa</th>
           </tr>
           <tr>
<xsl:for-each select="//adjp/example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//adjp/example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//adjp/example/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
     
     <p contentType="ctComparativeIntro">
<xsl:text>Los adjetivos calificativos también pueden modificarse.  Algunos ejemplos en español son:
          </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>muy grande</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>verdaderamente azul</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>extremadamente grande</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>muy bien construida</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>olvidado muy fácilmente</langData>
<xsl:text>.  No pueden proporcionarse todas las combinaciones de palabras debido a la semántica y a otras consideraciones, pero en general parece que ciertas palabras de grado y adverbios de manera o frases adverbiales pueden modificar a los adjetivos. </xsl:text>
</p>
      <xsl:if test="normalize-space(//adjp/@modifiers)='no'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> los adjetivos no pueden ser modificados ni intensificados. </xsl:text>
</p>
</xsl:if>
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersDegree/@checked)='yes'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> se permite que ciertas palabras de grado modifiquen a los adjetivos. Las palabras de grado se presentan </xsl:text>
<xsl:if test="normalize-space(//adjp/degreeBefore/@checked)='yes' and normalize-space(//adjp/degreeAfter/@checked)='no' and normalize-space(//adjp/degreeBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/degreeBefore/@checked)='no' and normalize-space(//adjp/degreeAfter/@checked)='yes' and normalize-space(//adjp/degreeBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/degreeBefore/@checked)='no' and normalize-space(//adjp/degreeAfter/@checked)='no' and normalize-space(//adjp/degreeBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/degreeBefore/@checked)='yes' and normalize-space(//adjp/degreeAfter/@checked)='yes' and normalize-space(//adjp/degreeBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/degreeBefore/@checked)='yes' and normalize-space(//adjp/degreeAfter/@checked)='no' and normalize-space(//adjp/degreeBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/degreeBefore/@checked)='no' and normalize-space(//adjp/degreeAfter/@checked)='yes' and normalize-space(//adjp/degreeBoth/@checked)='yes'">
<xsl:text>después o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/degreeBefore/@checked)='yes' and normalize-space(//adjp/degreeAfter/@checked)='yes' and normalize-space(//adjp/degreeBoth/@checked)='yes'">
<xsl:text>de cualquier lado o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/degreeOther/@checked)='no'">
<xsl:text> del adjetivo.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/degreeBefore/@checked)='no' and normalize-space(//adjp/degreeAfter/@checked)='no' and normalize-space(//adjp/degreeBoth/@checked)='no' and normalize-space(//adjp/degreeOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//adjp/degreeOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/degreeBefore/@checked)='yes' and normalize-space(//adjp/degreeOther/@checked)='yes' or normalize-space(//adjp/degreeAfter/@checked)='yes' and normalize-space(//adjp/degreeOther/@checked)='yes' or normalize-space(//adjp/degreeBoth/@checked)='yes' and normalize-space(//adjp/degreeOther/@checked)='yes'">
<xsl:text> del adjetivo y también pueden presentarse ___</xsl:text>
<xsl:value-of select="//adjp/degreeOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//adjp/@adjectiveDegreeClassifier)='yes' and normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersDegree/@checked)='yes'">
<xsl:text>Las raíces de las palabras de grado que pueden modificar a los adjetivos calificativos se muestran aquí.  Cada palabra de grado puede presentarse con el clasificador apropiado.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' and normalize-space(//adjp/@modifiers)='yes' or normalize-space(//adjp/@adjectiveDegreeClassifier)!='yes' and normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersDegree/@checked)='yes'">
<xsl:text>Las palabras de grado que pueden modificar a los adjetivos calificativos se muestran aquí:</xsl:text>
</xsl:if>
</p>
</xsl:if>
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersDegree/@checked)='yes'">
<example num="xAdjP.AdjQual.22">
<table border="1">
           <tr>
              <th>Palabras de grado</th>
              <th>Glosa</th>
           </tr>
           <tr>
<xsl:for-each select="//adjp/adjectiveDegreeExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//adjp/adjectiveDegreeExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//adjp/adjectiveDegreeExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersDegree/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de adjetivos calificativos con palabras de grado que los modifican son:</xsl:text>
</p>
</xsl:if>          
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersDegree/@checked)='yes'">
<example num="xAdjP.AdjQual.26">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//adjp/adjectiveDegreePhraseExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQual.26</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>                 

     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersManner/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersDegree/@checked)='yes'">
<xsl:text>Además,</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/modifiersDegree/@checked)='no'">
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:text> se permite que adverbios de modo modifiquen a los adjetivos.  Estos modificadores se presentan </xsl:text>
<xsl:if test="normalize-space(//adjp/mannerBefore/@checked)='yes' and normalize-space(//adjp/mannerAfter/@checked)='no' and normalize-space(//adjp/mannerBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/mannerBefore/@checked)='no' and normalize-space(//adjp/mannerAfter/@checked)='yes' and normalize-space(//adjp/mannerBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/mannerBefore/@checked)='no' and normalize-space(//adjp/mannerAfter/@checked)='no' and normalize-space(//adjp/mannerBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/mannerBefore/@checked)='yes' and normalize-space(//adjp/mannerAfter/@checked)='yes' and normalize-space(//adjp/mannerBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/mannerBefore/@checked)='yes' and normalize-space(//adjp/mannerAfter/@checked)='no' and normalize-space(//adjp/mannerBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/mannerBefore/@checked)='no' and normalize-space(//adjp/mannerAfter/@checked)='yes' and normalize-space(//adjp/mannerBoth/@checked)='yes'">
<xsl:text>después o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/mannerBefore/@checked)='yes' and normalize-space(//adjp/mannerAfter/@checked)='yes' and normalize-space(//adjp/mannerBoth/@checked)='yes'">
<xsl:text>de cualquier lado o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/mannerOther/@checked)='no'">
<xsl:text> del adjetivo.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/mannerBefore/@checked)='no' and normalize-space(//adjp/mannerAfter/@checked)='no' and normalize-space(//adjp/mannerBoth/@checked)='no' and normalize-space(//adjp/mannerOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//adjp/mannerOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/mannerBefore/@checked)='yes' and normalize-space(//adjp/mannerOther/@checked)='yes' or normalize-space(//adjp/mannerAfter/@checked)='yes' and normalize-space(//adjp/mannerOther/@checked)='yes' or normalize-space(//adjp/mannerBoth/@checked)='yes' and normalize-space(//adjp/mannerOther/@checked)='yes'">
<xsl:text> del adjetivo y también pueden presentarse ___</xsl:text>
<xsl:value-of select="//adjp/mannerOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text> Algunos ejemplos de adjetivos calificativos con adverbios de modo que los modifican son:</xsl:text>
</p>
</xsl:if>          
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersManner/@checked)='yes'">
<example num="xAdjP.AdjQual.30">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//adjp/adjectiveMannerPhraseExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQual.30</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>            

     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersAttaches/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//adjp/modifiersDegree/@checked)='yes' or normalize-space(//adjp/modifiersManner/@checked)='yes'">
<xsl:text>Además,</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/modifiersDegree/@checked)='no' and normalize-space(//adjp/modifiersManner/@checked)='no'">
<xsl:text>En el </xsl:text>
           <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:text> hay afijos o clíticos que se unen a un adjetivo calificativo para intensificarlo.  Los afijos o clíticos de grado que pueden modificar a los adjetivos calificativos son:</xsl:text>
</p>
</xsl:if>
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersAttaches/@checked)='yes'">
<example num="xAdjP.AdjQual.34">
<table border="1">
           <tr>
              <th>Afijos o clíticos de grado</th>
              <th>Glosa</th>
           </tr>
           <tr>
<xsl:for-each select="//adjp/adjectiveDegreeAffixPhraseExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//adjp/adjectiveDegreeAffixPhraseExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//adjp/adjectiveDegreeAffixPhraseExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersAttaches/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de adjetivos calificativos con afijos o clíticos de grado son:</xsl:text>
</p>
</xsl:if>
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersAttaches/@checked)='yes'">
<example num="xAdjP.AdjQual.38">
<table border="1">
           <tr>
              <th>Adjetivos calificativos intensificados</th>
              <th>Glosa</th>
           </tr>
           <tr>
<xsl:for-each select="//adjp/adjectivePhraseAffixExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//adjp/adjectivePhraseAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//adjp/adjectivePhraseAffixExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
     
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersRedup/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//adjp/modifiersDegree/@checked)='yes' or normalize-space(//adjp/modifiersManner/@checked)='yes' or normalize-space(//adjp/modifiersAttaches/@checked)='yes'">
<xsl:text>Además,</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/modifiersDegree/@checked)='no' and normalize-space(//adjp/modifiersManner/@checked)='no' and normalize-space(//adjp/modifiersAttaches/@checked)='no'">
<xsl:text>En el </xsl:text>
           <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:text> los adjetivos utilizan reduplicación para intensificar el significado del adjetivo calificativo.  Algunos ejemplos de adjetivos calificativos con reduplicación son</xsl:text>
</p>
</xsl:if>
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersRedup/@checked)='yes'">
<example num="xAdjP.AdjQual.42">
<table border="1">
           <tr>
              <th>Adjetivos calificativos reduplicados</th>
              <th>Glosa</th>
           </tr>
           <tr>
<xsl:for-each select="//adjp/adjectiveDegreeRedupExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//adjp/adjectiveDegreeRedupExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//adjp/adjectiveDegreeRedupExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
     
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersOther/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//adjp/modifiersDegree/@checked)='yes' or normalize-space(//adjp/modifiersManner/@checked)='yes' or normalize-space(//adjp/modifiersAttaches/@checked)='yes' or normalize-space(//adjp/modifiersRedup/@checked)='yes'">
<xsl:text>Además,</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//adjp/modifiersDegree/@checked)='no' and normalize-space(//adjp/modifiersManner/@checked)='no' and normalize-space(//adjp/modifiersAttaches/@checked)='no' and normalize-space(//adjp/modifiersRedup/@checked)='no'">
<xsl:text>En el </xsl:text>
           <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:text> los adjetivos pueden ser modificados o intensificados por  ___</xsl:text>
<xsl:value-of select="//adjp/modifiersOther" />
<xsl:text>.  Algunos ejemplos son:</xsl:text>
</p>
</xsl:if>
     <xsl:if test="normalize-space(//adjp/@modifiers)='yes' and normalize-space(//adjp/modifiersOther/@checked)='yes'">
<example num="xAdjP.AdjQual.46">
<table border="1">
           <tr>
              <th>Adjetivos modificados o intensificados</th>
              <th>Glosa</th>
           </tr>
           <tr>
<xsl:for-each select="//adjp/adjectiveDegreeOtherExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//adjp/adjectiveDegreeOtherExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//adjp/adjectiveDegreeOtherExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
   
            <section2 id="sAdjNumbers">
                <secTitle>Los números</secTitle>
               <p contentType="ctPracticalIntro">
<xsl:text>Hay dos tipos de números: los números cardinales para contar y los números ordinales para mostrar posición o sucesión. </xsl:text>
</p>
               <p contentType="ctComparativeIntro">
<xsl:text>Hay dos tipos de números: los números cardinales para contar y los números ordinales para mostrar posición o sucesión. Los números no se pueden modificar con las palabras de grado como se puede hacer los adjetivos calificativos y los cuantificadores, aunque se presentan usualmente en la misma posición que los cuantificadores. Sin embargo, los números cardinales se pueden modificar con los números ordinales y los adjetivos </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>siguiente</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>último</langData>
<xsl:text>, como en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>los primeros veinte muchachos</langData>
<xsl:text> o
                    </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>los siguinetes cientos años</langData>
<xsl:text>.  Los números ordinales y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>siguiente</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>último</langData>
<xsl:text> pueden también modificar a sustantivos directamente, como en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>la tercera muchacha</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>el último muchacho</langData>
<xsl:text>.  </xsl:text>
</p>
                <section3 id="sQPNumbersCardinal">
                    <secTitle>Números cardinales</secTitle>
                   <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@numberClassifier)='yes'">
<p>
<xsl:text>Las formas básicas para los números cardinales se dan en el cuadro siguiente.  Cada uno puede presentarse con el clasificador apropiado.</xsl:text>
</p>
</xsl:if>
                   <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' or normalize-space(//qp/@numberClassifier)!='yes'">
<p>
<xsl:text>Las formas básicas para los números cardinales se presentan en el siguiente cuadro:</xsl:text>
</p>
</xsl:if>
                   <example num="xAdjP.AdjNumbers.QPNumbersCardinal.8">
<table border="1">
                             <tr>
                                <th>Glosa</th>
                                 <th>Números cardinales</th>
                             </tr>
                           <tr>
<xsl:for-each select="//qp/cardinalNumbers1/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>1</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers1/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers1/form[position() &gt; 1]">
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
<xsl:otherwise>1</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers2/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>2</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers2/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers2/form[position() &gt; 1]">
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
<xsl:otherwise>2</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers3/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>3</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers3/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers3/form[position() &gt; 1]">
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
<xsl:otherwise>3</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers4/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>4</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers4/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers4/form[position() &gt; 1]">
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
<xsl:otherwise>4</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers5/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>5</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers5/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers5/form[position() &gt; 1]">
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
<xsl:otherwise>5</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers6/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>6</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers6/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers6/form[position() &gt; 1]">
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
<xsl:otherwise>6</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers7/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>7</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers7/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers7/form[position() &gt; 1]">
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
<xsl:otherwise>7</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers8/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>8</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers8/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers8/form[position() &gt; 1]">
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
<xsl:otherwise>8</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers9/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>9</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers9/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers9/form[position() &gt; 1]">
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
<xsl:otherwise>9</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers10/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>10</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers10/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers10/form[position() &gt; 1]">
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
<xsl:otherwise>10</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers11/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>11</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers11/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers11/form[position() &gt; 1]">
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
<xsl:otherwise>11</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers12/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>12</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers12/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers12/form[position() &gt; 1]">
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
<xsl:otherwise>12</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers13/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>13</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers13/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers13/form[position() &gt; 1]">
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
<xsl:otherwise>13</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers14/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>14</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers14/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers14/form[position() &gt; 1]">
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
<xsl:otherwise>14</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers15/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>15</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers15/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers15/form[position() &gt; 1]">
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
<xsl:otherwise>15</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers16/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>16</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers16/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers16/form[position() &gt; 1]">
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
<xsl:otherwise>16</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers17/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>17</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers17/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers17/form[position() &gt; 1]">
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
<xsl:otherwise>17</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers18/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>18</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers18/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers18/form[position() &gt; 1]">
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
<xsl:otherwise>18</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers19/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>19</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers19/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers19/form[position() &gt; 1]">
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
<xsl:otherwise>19</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers20/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>20</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers20/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers20/form[position() &gt; 1]">
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
<xsl:otherwise>20</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers30/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>30</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers30/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers30/form[position() &gt; 1]">
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
<xsl:otherwise>30</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers40/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>40</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers40/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers40/form[position() &gt; 1]">
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
<xsl:otherwise>40</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers50/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>50</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers50/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers50/form[position() &gt; 1]">
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
<xsl:otherwise>50</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers60/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>60</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers60/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers60/form[position() &gt; 1]">
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
<xsl:otherwise>60</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers70/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>70</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers70/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers70/form[position() &gt; 1]">
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
<xsl:otherwise>70</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers80/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>80</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers80/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers80/form[position() &gt; 1]">
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
<xsl:otherwise>80</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers90/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>90</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers90/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers90/form[position() &gt; 1]">
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
<xsl:otherwise>90</xsl:otherwise>
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
<xsl:for-each select="//qp/cardinalNumbers100/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>100</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/cardinalNumbers100/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/cardinalNumbers100/form[position() &gt; 1]">
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
<xsl:otherwise>100</xsl:otherwise>
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
<xsl:text>Algunos ejemplos de frases nominales que contienen diferentes números cardinales con un sustantivo son:</xsl:text>
</p>
                   <example num="xAdjP.AdjNumbers.QPNumbersCardinal.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/cardinalExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjNumbers.QPNumbersCardinal.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
                   <p contentType="ctPracticalIntro">
<xsl:text>Los números cardinales más grandes pueden ser compuestos que se pueden escribir como palabras independientes. Algunos ejemplos de números compuestos en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> son:</xsl:text>
</p>
                   <p contentType="ctComparativeIntro">
<xsl:text>Los números cardinales más grandes pueden ser compuestos que se pueden escribir como palabras independientes, por ejemplo, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>ciento treinta y tres</langData>
<xsl:text> o </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>seis mil ciento treinta y tres</langData>
<xsl:text>.  
                            Algunos ejemplos de números compuestos en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> son:</xsl:text>
</p>
                    <example num="xAdjP.AdjNumbers.QPNumbersCardinal.18">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/cardinalCompoundExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjNumbers.QPNumbersCardinal.18</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
                   <p>
<xsl:text>De acuerdo con los ejemplos, la posición del número de unidad y de cualquier conjunción en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> es la </xsl:text>
<xsl:choose>
                            <xsl:when test="//qp/@cardinalHead='initial'">primera o en la parte inicial</xsl:when>
                           <xsl:when test="//qp/@cardinalHead='final'">última o en la parte final</xsl:when>
                        </xsl:choose>
<xsl:text> del número compuesto. 
                        </xsl:text>
</p>
                </section3>
                <section3 id="sQPNumbersOrdinal">
                    <secTitle>Números ordinales</secTitle>
                   <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@numberClassifier)='yes'">
<p>
<xsl:text>Las raíces para los primeros diez números ordinales y las palabras que significan </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>siguiente</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>último</langData>
<xsl:text> se presentan en el siguiente cuadro.  Cada forma puede presentarse con el clasificador apropiado.</xsl:text>
</p>
</xsl:if>
                   <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' or normalize-space(//qp/@numberClassifier)!='yes'">
<p>
<xsl:text>Las formas básicas para los primeros diez números ordinales y las palabras que significan </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>siguiente</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>último</langData>
<xsl:text> se presentan en el siguiente cuadro:</xsl:text>
</p>
</xsl:if>
                   
                   <example num="xAdjP.AdjNumbers.QPNumbersOrdinal.8">
<table border="1">
                         <tr>
                            <th>Glosa</th>
                            <th>Números ordinales</th>
                         </tr>
                         <tr>
<xsl:for-each select="//qp/ordinalNumbers1/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>primero</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalNumbers1/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalNumbers1/form[position() &gt; 1]">
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
<xsl:otherwise>primero</xsl:otherwise>
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
<xsl:for-each select="//qp/ordinalNumbers2/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>segundo</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalNumbers2/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalNumbers2/form[position() &gt; 1]">
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
<xsl:otherwise>segundo</xsl:otherwise>
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
<xsl:for-each select="//qp/ordinalNumbers3/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>tercero</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalNumbers3/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalNumbers3/form[position() &gt; 1]">
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
<xsl:otherwise>tercero</xsl:otherwise>
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
<xsl:for-each select="//qp/ordinalNumbers4/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>cuarto</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalNumbers4/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalNumbers4/form[position() &gt; 1]">
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
<xsl:otherwise>cuarto</xsl:otherwise>
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
<xsl:for-each select="//qp/ordinalNumbers5/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>quinto</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalNumbers5/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalNumbers5/form[position() &gt; 1]">
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
<xsl:otherwise>quinto</xsl:otherwise>
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
<xsl:for-each select="//qp/ordinalNumbers6/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>sexto</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalNumbers6/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalNumbers6/form[position() &gt; 1]">
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
<xsl:otherwise>sexto</xsl:otherwise>
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
<xsl:for-each select="//qp/ordinalNumbers7/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>séptimo</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalNumbers7/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalNumbers7/form[position() &gt; 1]">
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
<xsl:otherwise>séptimo</xsl:otherwise>
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
<xsl:for-each select="//qp/ordinalNumbers8/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>octavo</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalNumbers8/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalNumbers8/form[position() &gt; 1]">
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
<xsl:otherwise>octavo</xsl:otherwise>
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
<xsl:for-each select="//qp/ordinalNumbers9/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>noveno</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalNumbers9/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalNumbers9/form[position() &gt; 1]">
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
<xsl:otherwise>noveno</xsl:otherwise>
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
<xsl:for-each select="//qp/ordinalNumbers10/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>décimo</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalNumbers10/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalNumbers10/form[position() &gt; 1]">
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
<xsl:otherwise>décimo</xsl:otherwise>
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
<xsl:for-each select="//qp/nextExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>siguiente</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/nextExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/nextExample/form[position() &gt; 1]">
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
<xsl:otherwise>siguiente</xsl:otherwise>
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
<xsl:for-each select="//qp/lastExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>último</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/lastExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/lastExample/form[position() &gt; 1]">
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
<xsl:otherwise>último</xsl:otherwise>
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
                   <xsl:if test="normalize-space(//qp/ordinalAffix/@checked)='yes'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, </xsl:text>
<xsl:if test="normalize-space(//qp/ordinalAffix/@checked)='yes' and normalize-space(//qp/ordinalIndependent/@checked)='yes' or normalize-space(//qp/ordinalAffix/@checked)='yes' and normalize-space(//qp/ordinalWord/@checked)='yes' or normalize-space(//qp/ordinalAffix/@checked)='yes' and normalize-space(//qp/ordinalOther/@checked)='yes'">
<xsl:text>algunos de los números ordinales se forman agregando un afijo al número cardinal. El afijo es:</xsl:text>
</xsl:if>
</p>
</xsl:if>
                   <xsl:if test="normalize-space(//qp/ordinalAffix/@checked)='yes'">
<example num="xAdjP.AdjNumbers.QPNumbersOrdinal.12">
<table border="1">
                         <tr>
                            <th>Afijo ordinal</th>
                            <th>Glosa</th>
                         </tr>
                         <tr>
<xsl:for-each select="//qp/ordinalAffixExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalAffixExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalAffixExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
                   <xsl:if test="normalize-space(//qp/ordinalWord/@checked)='yes'">
<p>
<xsl:if test="normalize-space(//qp/ordinalAffix/@checked)='no'">
<xsl:text>En el </xsl:text>
                         <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
                         <xsl:text>, </xsl:text>
                         <xsl:if test="normalize-space(//qp/ordinalWord/@checked)='yes' and normalize-space(//qp/ordinalIndependent/@checked)='yes' or normalize-space(//qp/ordinalAffix/@checked)='yes' and normalize-space(//qp/ordinalWord/@checked)='yes' or normalize-space(//qp/ordinalWord/@checked)='yes' and normalize-space(//qp/ordinalOther/@checked)='yes'">
<xsl:text> algunos de </xsl:text>
</xsl:if>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalAffix/@checked)='yes'">
<xsl:text>Algunos de </xsl:text>
</xsl:if>
<xsl:text>los números ordinales se forman de frases en que una palabra ordinal se presenta </xsl:text>
<xsl:if test="normalize-space(//qp/ordinalWordBefore/@checked)='yes' and normalize-space(//qp/ordinalWordAfter/@checked)='no' and normalize-space(//qp/ordinalWordBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalWordBefore/@checked)='no' and normalize-space(//qp/ordinalWordAfter/@checked)='yes' and normalize-space(//qp/ordinalWordBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalWordBefore/@checked)='no' and normalize-space(//qp/ordinalWordAfter/@checked)='no' and normalize-space(//qp/ordinalWordBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalWordBefore/@checked)='yes' and normalize-space(//qp/ordinalWordAfter/@checked)='yes' and normalize-space(//qp/ordinalWordBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalWordBefore/@checked)='yes' and normalize-space(//qp/ordinalWordAfter/@checked)='no' and normalize-space(//qp/ordinalWordBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalWordBefore/@checked)='no' and normalize-space(//qp/ordinalWordAfter/@checked)='yes' and normalize-space(//qp/ordinalWordBoth/@checked)='yes'">
<xsl:text>después o en ambos lados </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalWordBefore/@checked)='yes' and normalize-space(//qp/ordinalWordAfter/@checked)='yes' and normalize-space(//qp/ordinalWordBoth/@checked)='yes'">
<xsl:text>de cualquier lado o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalWordOther/@checked)='no'">
<xsl:text> del número cardinal.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalWordBefore/@checked)='no' and normalize-space(//qp/ordinalWordAfter/@checked)='no' and normalize-space(//qp/ordinalWordBoth/@checked)='no' and normalize-space(//qp/ordinalWordOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//qp/ordinalWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalWordBefore/@checked)='yes' and normalize-space(//qp/ordinalWordOther/@checked)='yes' or normalize-space(//qp/ordinalWordAfter/@checked)='yes' and normalize-space(//qp/ordinalWordOther/@checked)='yes' or normalize-space(//qp/ordinalWordBoth/@checked)='yes' and normalize-space(//qp/ordinalWordOther/@checked)='yes'">
<xsl:text> del número cardinal y también puede presentarse ___ </xsl:text>
<xsl:value-of select="//qp/ordinalWordOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>La palabra ordinal es:</xsl:text>
</p>
</xsl:if>
                   <xsl:if test="normalize-space(//qp/ordinalWord/@checked)='yes'">
<example num="xAdjP.AdjNumbers.QPNumbersOrdinal.16">
<table border="1">
                         <tr>
                            <th>Palabra ordinal</th>
                            <th>Glosa</th>
                         </tr>
                         <tr>
<xsl:for-each select="//qp/ordinalWordExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/ordinalWordExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/ordinalWordExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
                   <xsl:if test="normalize-space(//qp/ordinalAffix/@checked)='no' and normalize-space(//qp/ordinalIndependent/@checked)='yes' and normalize-space(//qp/ordinalWord/@checked)='no' and normalize-space(//qp/ordinalOther/@checked)='no'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, todos los números ordinales son palabras distintas de los números cardinales.  </xsl:text>
</p>
</xsl:if>
                   <xsl:if test="normalize-space(//qp/ordinalAffix/@checked)='no' and normalize-space(//qp/ordinalIndependent/@checked)='yes' and normalize-space(//qp/ordinalWord/@checked)='no' and normalize-space(//qp/ordinalOther/@checked)='yes'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, algunos de los números ordinales son palabras distintas de los números cardinales, y otros se forman con ___ </xsl:text>
<xsl:value-of select="//qp/ordinalOther" />
<xsl:text>.</xsl:text>
</p>
</xsl:if>
                   <xsl:if test="normalize-space(//qp/ordinalAffix/@checked)='yes' and normalize-space(//qp/ordinalIndependent/@checked)='yes' and normalize-space(//qp/ordinalOther/@checked)='no' or normalize-space(//qp/ordinalWord/@checked)='yes' and normalize-space(//qp/ordinalIndependent/@checked)='yes' and normalize-space(//qp/ordinalOther/@checked)='no'">
<p>
<xsl:text>Sin embargo, algunos de los números ordinales son palabras distintas de los números cardinales.  </xsl:text>
</p>
</xsl:if>
                   <xsl:if test="normalize-space(//qp/ordinalAffix/@checked)='yes' and normalize-space(//qp/ordinalIndependent/@checked)='yes' and normalize-space(//qp/ordinalOther/@checked)='yes' or normalize-space(//qp/ordinalWord/@checked)='yes' and normalize-space(//qp/ordinalIndependent/@checked)='yes' and normalize-space(//qp/ordinalOther/@checked)='yes'">
<p>
<xsl:text>Sin embargo, algunos de los números ordinales son palabras distintas de los números cardinales, y otros se forman con ___ </xsl:text>
<xsl:value-of select="//qp/ordinalOther" />
<xsl:text>.</xsl:text>
</p>
</xsl:if>
                   <p>
<xsl:text>Algunos ejemplos de números ordinales que modifican a un sustantivo en una frase nominal son:</xsl:text>
</p>
                   <example num="xAdjP.AdjNumbers.QPNumbersOrdinal.28">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/ordinalExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjNumbers.QPNumbersOrdinal.28</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
                   <xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='yes' or normalize-space(//qp/ordinalAfter/@checked)='yes' or normalize-space(//qp/ordinalBoth/@checked)='yes' or normalize-space(//qp/ordinalNumOther/@checked)='yes'">
<p>
<xsl:text>Cuando un número ordinal o una de las palabras que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>el siguiente</langData>
<xsl:text> o </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>el último</langData>
<xsl:text> modifica a un número cardinal, se presentan </xsl:text>
<xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='yes' and normalize-space(//qp/ordinalAfter/@checked)='no' and normalize-space(//qp/ordinalBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='no' and normalize-space(//qp/ordinalAfter/@checked)='yes' and normalize-space(//qp/ordinalBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='no' and normalize-space(//qp/ordinalAfter/@checked)='no' and normalize-space(//qp/ordinalBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='yes' and normalize-space(//qp/ordinalAfter/@checked)='yes' and normalize-space(//qp/ordinalBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='yes' and normalize-space(//qp/ordinalAfter/@checked)='no' and normalize-space(//qp/ordinalBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='no' and normalize-space(//qp/ordinalAfter/@checked)='yes' and normalize-space(//qp/ordinalBoth/@checked)='yes'">
<xsl:text>después o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='yes' and normalize-space(//qp/ordinalAfter/@checked)='yes' and normalize-space(//qp/ordinalBoth/@checked)='yes'">
<xsl:text>de cualquier lado o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalNumOther/@checked)='no'">
<xsl:text> del número cardinal.  Algunos ejemplos de frases nominales en que un número ordinal está modificando a un número cardinal y un sustantivo son:</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='no' and normalize-space(//qp/ordinalAfter/@checked)='no' and normalize-space(//qp/ordinalBoth/@checked)='no' and normalize-space(//qp/ordinalNumOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//qp/ordinalNumOther" />
<xsl:text>.   Algunos ejemplos de frases nominales en que un número ordinal está modificando a un número cardinal y un sustantivo son:</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='yes' and normalize-space(//qp/ordinalNumOther/@checked)='yes' or normalize-space(//qp/ordinalAfter/@checked)='yes' and normalize-space(//qp/ordinalNumOther/@checked)='yes' or normalize-space(//qp/ordinalBoth/@checked)='yes' and normalize-space(//qp/ordinalNumOther/@checked)='yes'">
<xsl:text> del número cardinal and may also occur  ___</xsl:text>
<xsl:value-of select="//qp/ordinalNumOther" />
<xsl:text>.   Algunos ejemplos de frases nominales en que un número ordinal modifica a un número cardinal y a un sustantivo son:</xsl:text>
</xsl:if>
</p>
</xsl:if>
                   <xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='yes' or normalize-space(//qp/ordinalAfter/@checked)='yes' or normalize-space(//qp/ordinalBoth/@checked)='yes' or normalize-space(//qp/ordinalNumOther/@checked)='yes'">
<example num="xAdjP.AdjNumbers.QPNumbersOrdinal.32">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/ordinalCardinalExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjNumbers.QPNumbersOrdinal.32</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
                   <xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='yes' or normalize-space(//qp/ordinalAfter/@checked)='yes' or normalize-space(//qp/ordinalBoth/@checked)='yes' or normalize-space(//qp/ordinalNumOther/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos del uso de los modificadores que significan </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>el siguiente</langData>
<xsl:text> o </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>el último</langData>
<xsl:text> dentro de una frase nominal son: </xsl:text>
</p>
</xsl:if>
                   <xsl:if test="normalize-space(//qp/ordinalBefore/@checked)='no' and normalize-space(//qp/ordinalAfter/@checked)='no' and normalize-space(//qp/ordinalBoth/@checked)='no' and normalize-space(//qp/ordinalNumOther/@checked)='no' and normalize-space(//qp/ordinalNumNowhere/@checked)='yes'">
<p>
<xsl:text>Los números ordinales o las palabras que sigifican </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>el siguiente</langData>
<xsl:text> o</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>el último</langData>
<xsl:text> no modifican a un número cardinal en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  
                      Algunos ejemplos de los modificadores que significan </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>el siguiente</langData>
<xsl:text> o </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>el último</langData>
<xsl:text>  dentro de una frase nominal son: </xsl:text>
</p>
</xsl:if>
                   <example num="xAdjP.AdjNumbers.QPNumbersOrdinal.38">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/nextlastNPExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjNumbers.QPNumbersOrdinal.38</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
            </section3>
            
        </section2>
        
        <section2 id="sAdjQP">
            <secTitle>Los cuantificadores</secTitle>
           <p contentType="ctPracticalIntro">
<xsl:text>Los cuantificadores pueden presentarse en varios lugares en una frase nominal, según su ámbito. A continuación se presentan tres sistemas de cuantificadores, seguidos de las construcciones partitivas.</xsl:text>
</p>
           <p contentType="ctComparativeIntro">
<xsl:text>Los cuantificadores pueden presentarse en varios lugares en una frase nominal,  según su ámbito. La mayoría de las lenguas tienen tres sistemas de cuantificadores además de números: esos de ámbito amplio que significan </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>todos</langData>
<xsl:text> que modifican la frase nominal completo, cuantificadores como  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>alguno</langData>
<xsl:text> o </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>cada</langData>
<xsl:text> que no se presentan con ningún otro modificador excepto con los adjetivos, y quantificadores de ámbito limitado, como </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>muchos</langData>
<xsl:text>
                 o </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>pocos.</langData>
<xsl:text>.  Cada tipo se considera en su orden correspondiete, seguido de las construcciones partitivas.
              </xsl:text>
</p>
         <section3 id="sQPAll">
             <secTitle>Cuantificadores que modifican a la frase nominal completa</secTitle>
            <p contentType="ctPracticalIntro">
<xsl:text>Los cuantificadores que significan </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>todos</langData>
<xsl:text> generalmente se presentan primero (o al final) en una frase nominal, en una posición distinta a la de los otros cuantificadores pero en el mismo lugar que algunas palabras de grado o indicadores de foco (véase la sección </xsl:text>
<sectionRef sec="sFocus" />
<xsl:text>).</xsl:text>
</p>
            <p contentType="ctComparativeIntro">
<xsl:text>Los cuantificadores que significan </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>todos</langData>
<xsl:text> parecen tener una categoría propia. Generalmente se presentan primero (o al final) en una frase nominal, en una posición distinta a la de los otros cuantificadores pero en el mismo lugar que algunas palabras de grado como </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>solamente</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>apenas</langData>
<xsl:text> (que también pueden funcionar igual que indicadores de foco, véase la sección </xsl:text>
<sectionRef sec="sFocus" />
<xsl:text>) y las palabras que significan lo mismo que </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>casi</langData>
<xsl:text> (lo que también puede presentarse con </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>todos</langData>
<xsl:text>).  Algunos ejemplos en español son:</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>todos los niños</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>solamente los tres niños de Susana</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>casi todos los niños pequeños de Juan</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>apenas este grupo de niños</langData>
<xsl:text>.</xsl:text>
</p>
            <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@npDegreeClassifier)='yes'">
<p>
<xsl:text>El siguiente cuadro presenta cómo los cuantificadores y palabras de grado de ámbito amplio que modifican a la frase nominal completa se expresan en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  Las raíces se muestran en el cuadro; cada una puede presentarse con el clasificador apropiado.</xsl:text>
</p>
</xsl:if>
            <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' or normalize-space(//qp/@npDegreeClassifier)!='yes'">
<p>
<xsl:text>El cuadro siguiente presenta cómo los cuantificadores y palabras de grado de ámbito amplio que modifican a la frase nominal completa se expresan en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>:</xsl:text>
</p>
</xsl:if>
            
            <example num="xAdjP.AdjQP.QPAll.12">
<table border="1">
                  <tr>
                     <th>Morfemas</th>
                     <th>Glosa</th>
                  </tr>
                  <tr>
<xsl:for-each select="//qp/all/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>todos</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/all/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/all/form[position() &gt; 1]">
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
<xsl:otherwise>todos</xsl:otherwise>
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
<xsl:for-each select="//qp/almost/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>casi</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/almost/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/almost/form[position() &gt; 1]">
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
<xsl:otherwise>casi</xsl:otherwise>
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
<xsl:for-each select="//qp/only/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>solamente o apenas</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/only/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/only/form[position() &gt; 1]">
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
<xsl:otherwise>solamente o apenas</xsl:otherwise>
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
            <xsl:if test="normalize-space(//qp/@npDegree)='yes' or normalize-space(//qp/@npDegree)='some'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:if test="normalize-space(//qp/@npDegree)='yes'">
<xsl:text>, estos se expresan como palabras independientes que modifican a la frase nominal completa.  Se presentan </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/@npDegree)='some'">
<xsl:text>, algunos de estos se expresan como palabras independientes que modifican a la frase nominal completa.  Se presentan </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='yes' and normalize-space(//qp/npDegreePosAfter/@checked)='no' and normalize-space(//qp/npDegreePosBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='no' and normalize-space(//qp/npDegreePosAfter/@checked)='yes' and normalize-space(//qp/npDegreePosBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='no' and normalize-space(//qp/npDegreePosAfter/@checked)='no' and normalize-space(//qp/npDegreePosBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='yes' and normalize-space(//qp/npDegreePosAfter/@checked)='yes' and normalize-space(//qp/npDegreePosBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='yes' and normalize-space(//qp/npDegreePosAfter/@checked)='no' and normalize-space(//qp/npDegreePosBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='no' and normalize-space(//qp/npDegreePosAfter/@checked)='yes' and normalize-space(//qp/npDegreePosBoth/@checked)='yes'">
<xsl:text>después o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='yes' and normalize-space(//qp/npDegreePosAfter/@checked)='yes' and normalize-space(//qp/npDegreePosBoth/@checked)='yes'">
<xsl:text>de cualquier lado o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosOther/@checked)='no'">
<xsl:text> del resto de la frase nominal.  </xsl:text>
               </xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='no' and normalize-space(//qp/npDegreePosAfter/@checked)='no' and normalize-space(//qp/npDegreePosBoth/@checked)='no' and normalize-space(//qp/NPDegreePosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//qp/npDegreePosOther" />
<xsl:text>.  </xsl:text>
               </xsl:if>
<xsl:if test="normalize-space(//qp/npDegreePosBefore/@checked)='yes' and normalize-space(//qp/npDegreePosOther/@checked)='yes' or normalize-space(//qp/npDegreePosAfter/@checked)='yes' and normalize-space(//qp/npDegreePosOther/@checked)='yes' or normalize-space(//qp/npDegreePosBoth/@checked)='yes' and normalize-space(//qp/npDegreePosOther/@checked)='yes'">
<xsl:text> del resto de la frase nominal y también pueden presentarse ___</xsl:text>
<xsl:value-of select="//qp/npDegreePosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
</p>
</xsl:if>
            <xsl:if test="normalize-space(//qp/@npDegree)='yes' or normalize-space(//qp/@npDegree)='some'">
<p>
<xsl:text>Algunos ejemplos de las palabras independientes en frases nominales son:</xsl:text>
</p>
</xsl:if>                        
            <example num="xAdjP.AdjQP.QPAll.18">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/example" />
<xsl:with-param name="sExNumber">xAdjP.AdjQP.QPAll.18</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>                 
            
            <xsl:if test="normalize-space(//qp/@npDegree)='no' or normalize-space(//qp/@npDegree)='some'">
<p>
<xsl:if test="normalize-space(//qp/@npDegree)='no'"> <xsl:text>En el </xsl:text>
                  <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
                  <xsl:text>, estos no se expresan como palabras independientes que modifican a la frase nominal completa.  Por el contrario, se unen como </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/@npDegree)='some'">
<xsl:text>Otros cuantificadores no se expresan como palabras independientes.  Por el contrario, se unen como </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='no'">
<xsl:text>proclíticos al inicio de cualquier palabra que comienza la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreeTypeProclitic/@checked)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypePrefix/@checked)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='no'">
<xsl:text>enclíticos al final de cualquier palabra que termina la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypePrefix/@checked)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='no'">
<xsl:text>&gt;clíticos al inicio de cualquier palabra que comienza la frase nominal o al final de cualquier palabra que termina la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreeTypeProclitic/@checked)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='no'">
<xsl:text>prefijos al sustantivo principal de la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreeTypeProclitic/@checked)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes'">
<xsl:text>sufijos al sustantivo principal de la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreeTypeProclitic/@checked)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes'">
<xsl:text>prefijos o sufijos al sustantivo principal de la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='no' or normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes' or normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes' or normalize-space(//qp/npDegreeTypeProclitic/@checked)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='no' or normalize-space(//qp/npDegreeTypeProclitic/@checked)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypePrefix/@checked)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes' or normalize-space(//qp/npDegreeTypeProclitic/@checked)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes' or normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes' or normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='no' or normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypePrefix/@checked)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes' or normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes'">
<xsl:text>clíticos al inicio o al final de la frase nominal, o como afijos al sustantivo principal de la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreeTypeProclitic/@checked)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='no' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//qp/npDegreeTypeOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes' or normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes' or normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes' or normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes'">
<xsl:text>  Otros se unen  ___</xsl:text>
<xsl:value-of select="//qp/npDegreeTypeOther" />  <xsl:text>.</xsl:text>
</xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>   
            <xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de los clíticos incluidos en frases nominales son:</xsl:text>
</p>
</xsl:if>
            <xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeProclitic/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeEnclitic/@checked)='yes'">
<example num="xAdjP.AdjQP.QPAll.24">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/npDegreeCliticExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQP.QPAll.24</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
            <xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' or normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de los afijos incluidos en frases nominales son:</xsl:text>
</p>
</xsl:if>
            <xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' or normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypePrefix/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeSuffix/@checked)='yes'">
<example num="xAdjP.AdjQP.QPAll.28">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/npDegreeAffixExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQP.QPAll.28</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
            <xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de los morfemas que se unen como se permite en frases nominales en el:</xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> son:</xsl:text>
</p>
</xsl:if>
            <xsl:if test="normalize-space(//qp/@npDegree)='no' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes' or normalize-space(//qp/@npDegree)='some' and normalize-space(//qp/npDegreeTypeOther/@checked)='yes'">
<example num="xAdjP.AdjQP.QPAll.32">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/npDegreeOtherExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQP.QPAll.32</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>     
            
                  
         </section3>
 
           <section3 id="sQPDeterminers">
                <secTitle>Cuantificadores que no se presentan con determinantes</secTitle>
                <p contentType="ctPracticalIntro">
<xsl:text>El segundo sistema incluye cuantificadores como </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>alguno</langData>
<xsl:text> y  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>cada</langData>
<xsl:text> que no permiten ningún otro artículo, demostrativo o posesivo en la frase nominal.</xsl:text>
</p>
              <p contentType="ctComparativeIntro">
<xsl:text>El segundo sistema incluye cuantificadores como </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>alguno</langData>
<xsl:text> y  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>cada</langData>
<xsl:text> que no permiten ningún otro artículo, demostrativo o posesivo en la frase nominal.  Algunos ejemplos en español en las frases incluyendo estos cuantificadores son </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>algunos niños tristes</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>casi cada niña que vea</langData>
<xsl:text>.  Ejemplos que no son gramaticales, como </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>*casi el muchacho malo</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>*estos algunos muchachos</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>*mis algunos hijos tristes</langData>
<xsl:text> muestran que estos cuantificadores no se presentan con los artículos, demostrativos ni posesivos.  Observe que un ejemplo como  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>algunos de los niños</langData>
<xsl:text> es gramatical, pero es un ejemplo de </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>algunos</langData>
<xsl:text> como el núcleo de la frase nominal, con una frase partitiva </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>de los niños</langData>
<xsl:text> modificándola, cuál fue cubierto en la sección </xsl:text>
<sectionRef sec="sPron" />
<xsl:text>. </xsl:text>
</p>
              <xsl:if test="normalize-space(//qp/@determinerClassifier)='yes' and normalize-space(//typology/@classifier)='yesAgr'">
<p>
<xsl:text>El cuadro siguiente presenta cómo los cuantificadores que funcionan igual que el único determinante de la frase nomina se expresan en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  Las formas en el cuadro son las raíces; cada cuantificador puede presentarse con el clasificador apropiado.</xsl:text>
</p>
</xsl:if>          
              <xsl:if test="normalize-space(//qp/@determinerClassifier)!='yes' and normalize-space(//typology/@classifier)!='yesAgr'">
<p>
<xsl:text>El cuadro siguiente presenta cómo los cuantificadores que funcionan al igual que el único determinante de la frase nomina se expresan en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>:</xsl:text>
</p>
</xsl:if>          
              <example num="xAdjP.AdjQP.QPDeterminers.12">
<table border="1">
                    <tr>
                       <th>Morfemas</th>
                       <th>Glosa</th>
                    </tr>
                    <tr>
<xsl:for-each select="//qp/some/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>alguno o algunos</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/some/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/some/form[position() &gt; 1]">
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
<xsl:otherwise>alguno o algunos</xsl:otherwise>
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
<xsl:for-each select="//qp/any/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>cualquier</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/any/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/any/form[position() &gt; 1]">
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
<xsl:otherwise>cualquier</xsl:otherwise>
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
<xsl:for-each select="//qp/every/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>cada</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/every/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/every/form[position() &gt; 1]">
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
<xsl:otherwise>cada</xsl:otherwise>
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
              <xsl:if test="normalize-space(//qp/@determinerType)='yes' or normalize-space(//qp/@determinerType)='some'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:if test="normalize-space(//qp/@determinerType)='yes'">
<xsl:text> estos se expresan como palabras independientes. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/@determinerType)='some'">
<xsl:text> algunos de estos se expresan como palabras independientes. </xsl:text>
</xsl:if>
<xsl:text>Algunos ejemplos que muestran su uso en frases nominales son:</xsl:text>
</p>
</xsl:if> 
              <xsl:if test="normalize-space(//qp/@determinerType)='yes' or normalize-space(//qp/@determinerType)='some'">
<example num="xAdjP.AdjQP.QPDeterminers.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/determinerExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQP.QPDeterminers.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>   
              <xsl:if test="normalize-space(//qp/@determinerType)='yes' or normalize-space(//qp/@determinerType)='some'">
<p>
<xsl:text>Como se ve en los ejemplos, </xsl:text>
<xsl:if test="normalize-space(//qp/@determiner)='yes'">
<xsl:text>estos cuantificadores no se presentan con ningún otro determinante.  Se presentan </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/@determiner)='some'">
<xsl:text>algunos de estos cuantificadores no se presentan con ningún otro determinante, pero otros se permiten y estos son igual que los cuantificadores de ámbito amplio cubiertos en la sección anterior o igaul que los cuantificadores de ámbito limitado que que serán descritos en la siguiente sección.  Estos que no se permiten ningún otro determinante se presentan </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/@determiner)='noAll'">
<xsl:text>estos cuantificadores se presentancon otros determinantes y son igual que los cuantificadores de ámbito amplio cubiertos en la sección anterior.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/@determiner)='noQ'">
<xsl:text>estos cuantificadores se presentan con otros determinantes y son igual que los cuantificadores de ámbito limitado que serán descritos en la siguiente sección. </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/@determiner)='yes' or normalize-space(//qp/@determiner)='some'">
                    <xsl:if test="normalize-space(//qp/determinerPosBefore/@checked)='yes' and normalize-space(//qp/determinerPosAfter/@checked)='no' and normalize-space(//qp/determinerPosBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
                    <xsl:if test="normalize-space(//qp/determinerPosBefore/@checked)='no' and normalize-space(//qp/determinerPosAfter/@checked)='yes' and normalize-space(//qp/determinerPosBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
                    <xsl:if test="normalize-space(//qp/determinerPosBefore/@checked)='no' and normalize-space(//qp/determinerPosAfter/@checked)='no' and normalize-space(//qp/determinerPosBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
                    <xsl:if test="normalize-space(//qp/determinerPosBefore/@checked)='yes' and normalize-space(//qp/determinerPosAfter/@checked)='yes' and normalize-space(//qp/determinerPosBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
                    <xsl:if test="normalize-space(//qp/determinerPosBefore/@checked)='yes' and normalize-space(//qp/determinerPosAfter/@checked)='no' and normalize-space(//qp/determinerPosBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
                    <xsl:if test="normalize-space(//qp/determinerPosBefore/@checked)='no' and normalize-space(//qp/determinerPosAfter/@checked)='yes' and normalize-space(//qp/determinerPosBoth/@checked)='yes'">
<xsl:text>después o en ambos lados</xsl:text>
</xsl:if>
                    <xsl:if test="normalize-space(//qp/determinerPosBefore/@checked)='yes' and normalize-space(//qp/determinerPosAfter/@checked)='yes' and normalize-space(//qp/determinerPosBoth/@checked)='yes'">
<xsl:text>de cualquier lado o en ambos lados</xsl:text>
</xsl:if>
                    <xsl:if test="normalize-space(//qp/determinerPosOther/@checked)='no'">
<xsl:text> del sustantivo principal.  </xsl:text>
                    </xsl:if>
                    <xsl:if test="normalize-space(//qp/determinerPosBefore/@checked)='no' and normalize-space(//qp/determinerPosAfter/@checked)='no' and normalize-space(//qp/determinerPosBoth/@checked)='no' and normalize-space(//qp/determinerPosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//qp/determinerPosOther" />
<xsl:text>.  </xsl:text>
                    </xsl:if>
                    <xsl:if test="normalize-space(//qp/determinerPosBefore/@checked)='yes' and normalize-space(//qp/determinerPosOther/@checked)='yes' or normalize-space(//qp/determinerPosAfter/@checked)='yes' and normalize-space(//qp/determinerPosOther/@checked)='yes' or normalize-space(//qp/determinerPosBoth/@checked)='yes' and normalize-space(//qp/determinerPosOther/@checked)='yes'">
<xsl:text> del sustantivo principal, y también pueden presentarse ___</xsl:text>
<xsl:value-of select="//qp/determinerPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
</xsl:if>
</p>
</xsl:if>
              
              <xsl:if test="normalize-space(//qp/@determinerType)='no' or normalize-space(//qp/@determinerType)='some'">
<p>
<xsl:if test="normalize-space(//qp/@determinerType)='no'"> <xsl:text>En el </xsl:text>
                    <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
                    <xsl:text> estos no se expresan como palabras independientes.  Por el contrario, se unen como </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/@determinerType)='some'">
<xsl:text>Otros no se expresan como palabras independientes.  Por el contrario, se unen como </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/determinerTypeProclitic/@checked)='yes' and normalize-space(//qp/determinerTypeEnclitic/@checked)='no' and normalize-space(//qp/determinerTypePrefix/@checked)='no' and normalize-space(//qp/determinerTypeSuffix/@checked)='no'">
<xsl:text>proclíticos al inicio de cualquier palabra que comienza la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/determinerTypeProclitic/@checked)='no' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes' and normalize-space(//qp/determinerTypePrefix/@checked)='no' and normalize-space(//qp/determinerTypeSuffix/@checked)='no'">
<xsl:text>enclíticos al final de cualquier palabra que termina la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/determinerTypeProclitic/@checked)='yes' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes' and normalize-space(//qp/determinerTypePrefix/@checked)='no' and normalize-space(//qp/determinerTypeSuffix/@checked)='no'">
<xsl:text>clíticos al inicio de cualquier palabra que comienza la frase nominal o al final de cualquier palabra que termina la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/determinerTypeProclitic/@checked)='no' and normalize-space(//qp/determinerTypeEnclitic/@checked)='no' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' and normalize-space(//qp/determinerTypeSuffix/@checked)='no'">
<xsl:text>prefijos al sustantivo principal de la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/determinerTypeProclitic/@checked)='no' and normalize-space(//qp/determinerTypeEnclitic/@checked)='no' and normalize-space(//qp/determinerTypePrefix/@checked)='no' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes'">
<xsl:text>sufijos al sustantivo principal de la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/determinerTypeProclitic/@checked)='no' and normalize-space(//qp/determinerTypeEnclitic/@checked)='no' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes'">
<xsl:text>prefijos o sufijos al sustantivo principal de la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/determinerTypeProclitic/@checked)='yes' and normalize-space(//qp/determinerTypeEnclitic/@checked)='no' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' and normalize-space(//qp/determinerTypeSuffix/@checked)='no' or normalize-space(//qp/determinerTypeProclitic/@checked)='yes' and normalize-space(//qp/determinerTypeEnclitic/@checked)='no' and normalize-space(//qp/determinerTypePrefix/@checked)='no' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes' or normalize-space(//qp/determinerTypeProclitic/@checked)='yes' and normalize-space(//qp/determinerTypeEnclitic/@checked)='no' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes' or normalize-space(//qp/determinerTypeProclitic/@checked)='no' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' and normalize-space(//qp/determinerTypeSuffix/@checked)='no' or normalize-space(//qp/determinerTypeProclitic/@checked)='no' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes' and normalize-space(//qp/determinerTypePrefix/@checked)='no' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes' or normalize-space(//qp/determinerTypeProclitic/@checked)='no' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes' or normalize-space(//qp/determinerTypeProclitic/@checked)='yes' and normalize-space(//qp/determinerTypeEnclitic/@checked)='no' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes' or normalize-space(//qp/determinerTypeProclitic/@checked)='yes' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' and normalize-space(//qp/determinerTypeSuffix/@checked)='no' or normalize-space(//qp/determinerTypeProclitic/@checked)='yes' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes' and normalize-space(//qp/determinerTypePrefix/@checked)='no' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes' or normalize-space(//qp/determinerTypeProclitic/@checked)='yes' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes'">
<xsl:text>clíticos al inicio o al final de la frase nominal, o como afijos al sustantivo principal de la frase nominal.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/determinerTypeProclitic/@checked)='no' and normalize-space(//qp/determinerTypeEnclitic/@checked)='no' and normalize-space(//qp/determinerTypePrefix/@checked)='no' and normalize-space(//qp/determinerTypeSuffix/@checked)='no' and normalize-space(//qp/determinerTypeOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//qp/determinerTypeOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/determinerTypeProclitic/@checked)='yes' and normalize-space(//qp/determinerTypeOther/@checked)='yes' or normalize-space(//qp/determinerTypeEnclitic/@checked)='yes' and normalize-space(//qp/determinerTypeOther/@checked)='yes' or normalize-space(//qp/determinerTypePrefix/@checked)='yes' and normalize-space(//qp/determinerTypeOther/@checked)='yes' or normalize-space(//qp/determinerTypeSuffix/@checked)='yes' and normalize-space(//qp/determinerTypeOther/@checked)='yes'">
<xsl:text>  Otros se unen ___</xsl:text>
<xsl:value-of select="//qp/determinerTypeOther" />  <xsl:text>.</xsl:text>
</xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>   
              <xsl:if test="normalize-space(//qp/@determinerType)='no' and normalize-space(//qp/determinerTypeProclitic/@checked)='yes' or normalize-space(//qp/@determinerType)='no' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes' or normalize-space(//qp/@determinerType)='some' and normalize-space(//qp/determinerTypeProclitic/@checked)='yes' or normalize-space(//qp/@determinerType)='some' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de los clíticos incluidos en frases nominales son:</xsl:text>
</p>
</xsl:if>
              <xsl:if test="normalize-space(//qp/@determinerType)='no' and normalize-space(//qp/determinerTypeProclitic/@checked)='yes' or normalize-space(//qp/@determinerType)='no' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes' or normalize-space(//qp/@determinerType)='some' and normalize-space(//qp/determinerTypeProclitic/@checked)='yes' or normalize-space(//qp/@determinerType)='some' and normalize-space(//qp/determinerTypeEnclitic/@checked)='yes'">
<example num="xAdjP.AdjQP.QPDeterminers.24">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/determinerCliticExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQP.QPDeterminers.24</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
              <xsl:if test="normalize-space(//qp/@determinerType)='no' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' or normalize-space(//qp/@determinerType)='no' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes' or normalize-space(//qp/@determinerType)='some' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' or normalize-space(//qp/@determinerType)='some' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de los afijos incluidos en frases nominales son:</xsl:text>
</p>
</xsl:if>
              <xsl:if test="normalize-space(//qp/@determinerType)='no' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' or normalize-space(//qp/@determinerType)='no' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes' or normalize-space(//qp/@determinerType)='some' and normalize-space(//qp/determinerTypePrefix/@checked)='yes' or normalize-space(//qp/@determinerType)='some' and normalize-space(//qp/determinerTypeSuffix/@checked)='yes'">
<example num="xAdjP.AdjQP.QPDeterminers.28">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/determinerAffixExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQP.QPDeterminers.28</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
              <xsl:if test="normalize-space(//qp/@determinerType)='no' and normalize-space(//qp/determinerTypeOther/@checked)='yes' or normalize-space(//qp/@determinerType)='some' and normalize-space(//qp/determinerTypeOther/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de los morfemas que se unen como se permite en frases nominales en el:</xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> son:</xsl:text>
</p>
</xsl:if>
              <xsl:if test="normalize-space(//qp/@determinerType)='no' and normalize-space(//qp/determinerTypeOther/@checked)='yes' or normalize-space(//qp/@determinerType)='some' and normalize-space(//qp/determinerTypeOther/@checked)='yes'">
<example num="xAdjP.AdjQP.QPDeterminers.32">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/determinerOtherExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQP.QPDeterminers.32</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>     
              
              
            </section3>
              <section3 id="sQPOtherQuantifiers">
                 <secTitle>Otros cuantificadores y palabras de grado</secTitle>
                 <p contentType="ctPracticalIntro">
<xsl:text>Otros cuantificadores se presentan adentro de la frase nominal mostrando su ámbito limitado.  Estos cuantificadores usualmente se pueden modificar con palabras de grado.</xsl:text>
</p>
                 <p contentType="ctComparativeIntro">
<xsl:text>Otros cuantificadores, como </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>muchos</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mucho</langData>
<xsl:text>, y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>poco</langData>
<xsl:text>, se presentan en diversas posiciones en la frase nominal mostrando su ámbito limitado. En español, estos cuantificadores se presentan después de un artículo, demostrativo o posesivo pronominal y antes del sustantivo, como en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>los muchos perros negros de Juan</langData>
<xsl:text> o </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>sus pocos libros</langData>
<xsl:text>. 
                         Además, estos cuantificadores usualmente se pueden modificar con palabras de grado como  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>muy</langData>
<xsl:text>, por ejemplo en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>muchisimos perros</langData>
<xsl:text> o </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>muy poca comida</langData>
<xsl:text>.</xsl:text>
</p>
                                 
                 <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@quantifierClassifier)='yes'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> se encuentran los siguientes cuantificadores de este tipo.  Las formas en el cuadro son las raíces; cada cuantificador puede presentarse con el clasificador apropiado.</xsl:text>
</p>
</xsl:if>
                 <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' or normalize-space(//qp/@quantifierClassifier)!='yes'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> se encuentran los siguientes cuantificadores de este tipo:</xsl:text>
</p>
</xsl:if>

                 <example num="xAdjP.AdjQP.QPOtherQuantifiers.12">
<table border="1">
                         <tr>
                             <th>Cuantificadores</th>
                             <th>Glosa</th>
                         </tr>
                        <tr>
<xsl:for-each select="//qp/many/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>muchos</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/many/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/many/form[position() &gt; 1]">
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
<xsl:otherwise>muchos</xsl:otherwise>
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
<xsl:for-each select="//qp/much/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>mucho</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/much/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/much/form[position() &gt; 1]">
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
<xsl:otherwise>mucho</xsl:otherwise>
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
<xsl:for-each select="//qp/few/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>poco</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/few/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/few/form[position() &gt; 1]">
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
<xsl:otherwise>poco</xsl:otherwise>
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
<xsl:for-each select="//qp/otherQ/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/otherQ/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/otherQ/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
                 
                 <xsl:if test="normalize-space(//qp/@degree)='no'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> los cuantificadores.no se modifican ni intensifican.</xsl:text>
</p>
</xsl:if>

                 <xsl:if test="normalize-space(//qp/@degree)='yes' or normalize-space(//qp/@degree)='some'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> hay </xsl:text>
<xsl:if test="normalize-space(//qp/@degree)='some'">
<xsl:text>algunas </xsl:text>
</xsl:if>
<xsl:text>palabras de grado que pueden modificar a los cuantificadores. Estas palabras de grado se presentan </xsl:text>
<xsl:if test="normalize-space(//qp/degreeBefore/@checked)='yes' and normalize-space(//qp/degreeAfter/@checked)='no' and normalize-space(//qp/degreeBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeBefore/@checked)='no' and normalize-space(//qp/degreeAfter/@checked)='yes' and normalize-space(//qp/degreeBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeBefore/@checked)='no' and normalize-space(//qp/degreeAfter/@checked)='no' and normalize-space(//qp/degreeBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeBefore/@checked)='yes' and normalize-space(//qp/degreeAfter/@checked)='yes' and normalize-space(//qp/degreeBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeBefore/@checked)='yes' and normalize-space(//qp/degreeAfter/@checked)='no' and normalize-space(//qp/degreeBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeBefore/@checked)='no' and normalize-space(//qp/degreeAfter/@checked)='yes' and normalize-space(//qp/degreeBoth/@checked)='yes'">
<xsl:text>después o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeBefore/@checked)='yes' and normalize-space(//qp/degreeAfter/@checked)='yes' and normalize-space(//qp/degreeBoth/@checked)='yes'">
<xsl:text>de cualquier lado o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeOther/@checked)='no'">
<xsl:text> del cuantificador.  </xsl:text>
                    </xsl:if>
<xsl:if test="normalize-space(//qp/degreeBefore/@checked)='no' and normalize-space(//qp/degreeAfter/@checked)='no' and normalize-space(//qp/degreeBoth/@checked)='no' and normalize-space(//qp/degreeOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//qp/degreeOther" />
<xsl:text>.  </xsl:text>
                    </xsl:if>
<xsl:if test="normalize-space(//qp/degreeBefore/@checked)='yes' and normalize-space(//qp/degreeOther/@checked)='yes' or normalize-space(//qp/degreeAfter/@checked)='yes' and normalize-space(//qp/degreeOther/@checked)='yes' or normalize-space(//qp/degreeBoth/@checked)='yes' and normalize-space(//qp/degreeOther/@checked)='yes'">
<xsl:text> del cuantificador, y algunas se presentan  ___</xsl:text>
<xsl:value-of select="//qp/degreeOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
</p>
</xsl:if>
                 <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@degreeClassifier)='yes' and normalize-space(//qp/@degree)='yes' or normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//qp/@degreeClassifier)='yes' and normalize-space(//qp/@degree)='some'">
<p>
<xsl:text>Las raíces para las palabras de grado que puede modificar a los cuantificadores en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> son mostrado aquí.  Cada palabra de grado puede presentarse con el clasificador apropiado.</xsl:text>
</p>
</xsl:if>
                 <xsl:if test="normalize-space(//typology/@classifier)!='yesAgr' and normalize-space(//qp/@degreeClassifier)!='yes' and normalize-space(//qp/@degree)='yes' or normalize-space(//typology/@classifier)!='yesAgr' and normalize-space(//qp/@degreeClassifier)!='yes' and normalize-space(//qp/@degree)='some'">
<p>
<xsl:text>Las palabras de grado que puede modificar a los cuantificadores en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> son:</xsl:text>
</p>
</xsl:if>
                 
                 <xsl:if test="normalize-space(//qp/@degree)='yes' or normalize-space(//qp/@degree)='some'">
<example num="xAdjP.AdjQP.QPOtherQuantifiers.22">
<table border="1">
                       <tr>
                          <th>Palabras de grado que pueden modificar a cuantificadores</th>
                          <th>Glosa</th>
                       </tr>
                       <tr>
<xsl:for-each select="//qp/degreeWordExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/degreeWordExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/degreeWordExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
                 <xsl:if test="normalize-space(//qp/@degree)='yes' or normalize-space(//qp/@degree)='some'">
<p>
<xsl:text>Algunos ejemplos de palabras de grado cuando modifican a cuantificadores en frases nominales son:</xsl:text>
</p>
</xsl:if>
                 <xsl:if test="normalize-space(//qp/@degree)='yes' or normalize-space(//qp/@degree)='some'">
<example num="xAdjP.AdjQP.QPOtherQuantifiers.26">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/degreeExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQP.QPOtherQuantifiers.26</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
                 
                 <xsl:if test="normalize-space(//qp/@degree)='attaches' or normalize-space(//qp/@degree)='some'">
<p>
<xsl:if test="normalize-space(//qp/@degree)='attaches'"> <xsl:text>En el </xsl:text>
                       <xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
                       <xsl:text> los elementos de grado no se expresan como palabras independientes.  Por el contrario, se unen al cuantificador como </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/@degree)='some'">
<xsl:text>Otros elementos de grado no se expresan como palabras independientes.  Por el contrario, se unen al cuantificador como </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeTypePrefix/@checked)='yes' and normalize-space(//qp/degreeTypeSuffix/@checked)='no'">
<xsl:text>prefijos.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeTypePrefix/@checked)='no' and normalize-space(//qp/degreeTypeSuffix/@checked)='yes'">
<xsl:text>sufijos.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeTypePrefix/@checked)='yes' and normalize-space(//qp/degreeTypeSuffix/@checked)='yes'">
<xsl:text>prefijos o sufijos.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeTypePrefix/@checked)='no' and normalize-space(//qp/degreeTypeSuffix/@checked)='no' and normalize-space(//qp/degreeTypeOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//qp/degreeTypeOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//qp/degreeTypePrefix/@checked)='yes' and normalize-space(//qp/degreeTypeOther/@checked)='yes' or normalize-space(//qp/degreeTypeSuffix/@checked)='yes' and normalize-space(//qp/degreeTypeOther/@checked)='yes'">
<xsl:text>  Otros se unen  ___</xsl:text>
<xsl:value-of select="//qp/degreeTypeOther" />  <xsl:text>.</xsl:text>
</xsl:if>
<xsl:text></xsl:text>
</p>
</xsl:if>   
                 <xsl:if test="normalize-space(//qp/@degree)='attaches' or normalize-space(//qp/@degree)='some'">
<p>
<xsl:text>Los afijos de grado que pueden modificar a cuantificadores son:</xsl:text>
</p>
</xsl:if>
                 
                 <xsl:if test="normalize-space(//qp/@degree)='attaches' or normalize-space(//qp/@degree)='some'">
<example num="xAdjP.AdjQP.QPOtherQuantifiers.32">
<table border="1">
                       <tr>
                          <th>Afijos de grado para cuantificadores</th>
                          <th>Glosa</th>
                       </tr>
                       <tr>
<xsl:for-each select="//qp/degreeAttachesExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/degreeAttachesExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/degreeAttachesExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
                 <xsl:if test="normalize-space(//qp/@degree)='attaches' or normalize-space(//qp/@degree)='some'">
<p>
<xsl:text>Algunos ejemplos de frases nominales con los afijos que modifican a un cuantificador son:</xsl:text>
</p>
</xsl:if>
                 <xsl:if test="normalize-space(//qp/@degree)='attaches' or normalize-space(//qp/@degree)='some'">
<example num="xAdjP.AdjQP.QPOtherQuantifiers.36">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/degreeAttachesNPExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQP.QPOtherQuantifiers.36</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
         </section3>
           <section3 id="sQPPartitive">
              <secTitle>Las construcciones partitivas</secTitle>
              <p contentType="ctPracticalIntro">
<xsl:text>Todos los cuantificadores, incluyendo los números, normalmente pueden presentarse en construcciones partitivas que se usan para indicar que se está hablando de solo una parte de un grupo más grande.  Los construcciones partitivas usualmente se expresan con una frase adposicional que modifica al cuantificador y esta frase indica el grupo o la cosa en total de la que se habla. En algunas lenguas, es una claúsula relativa la que indica el grupo en vez de una frase adposicional.
              </xsl:text>
</p>
              <p contentType="ctComparativeIntro">
<xsl:text>Todos los cuantificadores, incluyendo los números, normalmente pueden presentarse en construcciones partitivas que se usan para indicar que se está hablando de solo una parte de un grupo más grande. Algunos ejemplos son: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>algunos de los niños</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>varias de las niñas mayores</langData>
<xsl:text>,</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>muchas de las mujeres</langData>
<xsl:text>,</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>tanta del alimento</langData>
<xsl:text>y</xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>solamente diez de los chicos</langData>
<xsl:text>.  Como se ve en los ejemplos, las construcciones partitivas usualmente se expresan con una frase adposicional que modifica al cuantificador y esta frase indica el grupo o la cosa en total de la que se habla. En algunas lenguas, es una claúsula relativa que indica el grupo en vez de una frase adposicional.
                 </xsl:text>
</p>
              <p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, </xsl:text>
<xsl:choose>
                    <xsl:when test="//qp/@partitive='no'">una claúsula relativa en vez de una frase <xsl:choose>
                       <xsl:when test="//pp/@pPos='before'">preposicional </xsl:when>
                       <xsl:when test="//pp/@pPos='after'">posposicional </xsl:when>
                       <xsl:when test="//pp/@pPos='both'">adposicional </xsl:when>
                       <xsl:when test="//pp/@pPos='unknown'">adposicional </xsl:when>
                    </xsl:choose>indica el grupo.</xsl:when>
                    <xsl:when test="//qp/@partitive='other'">se utiliza ni una frase adposicional ni una claúsula relativa para indicar el significado partitivo. </xsl:when>
                    <xsl:when test="//qp/@partitive='yes'">una frase <xsl:choose>
                       <xsl:when test="//pp/@pPos='before'">preposicional </xsl:when>
                       <xsl:when test="//pp/@pPos='after'">posposicional </xsl:when>
                       <xsl:when test="//pp/@pPos='both'">adposicional </xsl:when>
                       <xsl:when test="//pp/@pPos='unknown'">adposicional </xsl:when>
                    </xsl:choose>que se presenta <xsl:choose>
                       <xsl:when test="//qp/@partitivePPPos='before'">antes</xsl:when>
                       <xsl:when test="//qp/@partitivePPPos='after'">después</xsl:when>
                       <xsl:when test="//qp/@partitivePPPos='either'">de cualquier lado</xsl:when>
                       <xsl:when test="//qp/@partitivePPPos='unknown'">______</xsl:when>
                    </xsl:choose>  del cuantificador indica el grupo.  La <xsl:choose>
                       <xsl:when test="//pp/@pPos='before'">preposición</xsl:when>
                       <xsl:when test="//pp/@pPos='after'">posposición</xsl:when>
                       <xsl:when test="//pp/@pPos='both'">preposicion o posposicion </xsl:when>
                       <xsl:when test="//pp/@pPos='unknown'">adposición</xsl:when>
                    </xsl:choose> especial usada en las frases partitivas es:</xsl:when>
                 </xsl:choose>
<xsl:if test="normalize-space(//qp/@partitive)='other'"> 
                    <xsl:text> Esta construcción es ___</xsl:text>
<xsl:value-of select="//qp/partitiveConstruction" />
                    <xsl:text>.   </xsl:text>
                 </xsl:if>
</p>      
              <xsl:if test="normalize-space(//qp/@partitive)='yes'">
<example num="xAdjP.AdjQP.QPPartitive.10">
<table border="1">
                    <tr>
                       <xsl:if test="normalize-space(//pp/@pPos)='before'">
<th>Preposición partitiva</th>
</xsl:if>
                       <xsl:if test="normalize-space(//pp/@pPos)='after'">
<th>Posposición partitiva</th>
</xsl:if>
                       <xsl:if test="normalize-space(//pp/@pPos)='both' or normalize-space(//pp/@pPos)='unknown'">
<th>Adposición partitiva</th>
</xsl:if>
                       <th>Glosa</th>
                    </tr>
                    <tr>
<xsl:for-each select="//qp/partitiveOf/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//qp/partitiveOf/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//qp/partitiveOf/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Algunos ejemplos que muestran cómo se expresan las construcciones partitivas en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> son:</xsl:text>
</p>
              <example num="xAdjP.AdjQP.QPPartitive.14">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//qp/partitiveQExample" />
<xsl:with-param name="sExNumber">xAdjP.AdjQP.QPPartitive.14</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
              <xsl:if test="normalize-space(//qp/@partitive)='no'">
<p>
<xsl:text>Véase la sección </xsl:text>
<sectionRef sec="sRelCl" />
<xsl:text> para información acreca de la estructura de las claúsulas relativas.</xsl:text>
</p>
</xsl:if>
           </section3>
           
     </section2>
     <section2 id="sAdjArtDem">
         <secTitle>Artículos y demostrativos</secTitle>
         <p contentType="ctComparativeIntro">
<xsl:text>En español, los artículos son los siguientes: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>un</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>una</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>el</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>la</langData>
<xsl:text>.  Los demostrativos en español son los siguientes: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>esto</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>ese</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>estos</langData>
<xsl:text>, y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>esos</langData>
<xsl:text>.  Algunos ejemplos simples son: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>un libro, una manzana, el libro, los libros, esta manzana</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>esos libros.</langData>
<xsl:text></xsl:text>
</p>
         <p>
<xsl:text>Algunas lenguas tienen solamente una categoría: los artículos o los demostrativos. Es posible que en un reducido número de lenguas ninguna de estas categorías se pueda expresar con palabras independientes. </xsl:text>
</p>
         <p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text></xsl:text>
<xsl:choose>
                 <xsl:when test="//np/@artAndDem='no'"> no hay artículos ni demostrativos que son palabras independientes.</xsl:when>
                 <xsl:when test="//np/@artAndDem='article'"> solamente hay artículos que son palabras independientes, ningún demostrativo.</xsl:when>
                 <xsl:when test="//np/@artAndDem='demonstrative'"> solamente hay demostrativos que son palabras independientes, ningún artículo.</xsl:when>
                 <xsl:when test="//np/@artAndDem='both'"> hay artículos y demostrativos que son palabras independientes.</xsl:when>
             </xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//np/@artAndDem)!='no'">
                 <xsl:text> En los </xsl:text>
                 <xsl:choose>
                     <xsl:when test="//np/@artAndDem='article'">artículos</xsl:when>
                     <xsl:when test="//np/@artAndDem='demonstrative'">demostrativos</xsl:when>
                     <xsl:when test="//np/@artAndDem='both'">artículos y demostrativos</xsl:when>
                 </xsl:choose>
                <xsl:text></xsl:text>
                 <xsl:if test="normalize-space(//np/@artAndDem)!='no' and normalize-space(//np/@artCase)='no'">
                     <xsl:text> no</xsl:text>
                 </xsl:if>
                 <xsl:text> se marca el caso.</xsl:text>
             </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//np/@artAndDem)!='no' and normalize-space(//np/@artDemClassifier)='yes'">
<xsl:text> Los </xsl:text>
              <xsl:choose>
                 <xsl:when test="//np/@artAndDem='article'">artículos</xsl:when>
                 <xsl:when test="//np/@artAndDem='demonstrative'">demostrativos</xsl:when>
                 <xsl:when test="//np/@artAndDem='both'">artículos y demostrativos</xsl:when>
              </xsl:choose>
              <xsl:text> se marcan con clasificadores para concordar con el sustantivo. Aquí solamente se muestran las raíces; cada una puede presentarse con el clasificador apropiado.</xsl:text>
           </xsl:if>
</p>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' or normalize-space(//np/@artAndDem)='both'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, </xsl:text>
<xsl:choose>
              <xsl:when test="//np/@artDefOnly='no'"> ambos los artículos definidos e indefinidos son palabras explícitas.</xsl:when>
              <xsl:when test="//np/@artDefOnly='yes'"> solamente los artículos definidos son palabras explícitas; los sustantivos indefinidos no se marcan.</xsl:when>
              <xsl:when test="//np/@artDefOnly='indef'"> solamente los artículos indefinidos son palabras explícitas; los sustantivos definidos no se marcan.</xsl:when>
           </xsl:choose>
<xsl:text>  También, hay </xsl:text>
<xsl:choose>
              <xsl:when test="//np/@artPl='no'">solamente un sistema de artículos que se usa tanto para sustantivos singulares como los plurales.</xsl:when>
              <xsl:when test="//np/@artPl='yes'">sistemas de artículos distintos para singular y plural de modo que pueden concordar con el sustantivo.</xsl:when>
           </xsl:choose>
</p>
</xsl:if>
        
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='none' or normalize-space(//np/@artAndDem)='article' and normalize-space(//np/@artCase)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='none' or normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@artCase)='no'">
<p>
<xsl:text>Los artículos en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> son:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='article' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.14">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos</th>
                 <th>Glosa</th>
              </tr>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleIndefExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>		   
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='article' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.16">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos</th>
                 <th>Glosa</th>
              </tr>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articlePlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articlePlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articlePlExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	
        
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Puesto que el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> tiene un un sistema de caso nominativo-acusativo, hay sistemas de artículos distintos para modificar a los sujetos, a los objetos y a los posesivos. Los artículos que pueden presentarse con sujetos son:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.20">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos nominativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleIndefNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.22">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos nominativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articlePlNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articlePlNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articlePlNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefPlNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefPlNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefPlNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los artículos que pueden presentarse con objetos directos son:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.26">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos acusativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleIndefAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.28">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos acusativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articlePlAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articlePlAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articlePlAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefPlAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefPlAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefPlAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los artículos que pueden presentarse con posesivos son:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.32">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos genitivos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleIndefGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.34">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos genitivos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articlePlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articlePlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articlePlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      
        
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Puesto que el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> tiene un un sistema de caso ergativo-absolutivo, hay sistemas de artículos distintos para modificar a los sujetos de verbos transitivos</xsl:text>
<xsl:if test="normalize-space(//np/@possCaseErg)!='genitive'">
<xsl:text> y a los sujetos de verbos intransitivos y los objetos de verbos transitivos</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<xsl:text>, a los sujetos de verbos intransitivos y los objetos de verbos transitivos y a los posesivos</xsl:text>
</xsl:if>
<xsl:text>. Los artículos que pueden presentarse con sujetos de verbos transitivos son:</xsl:text>
</p>
</xsl:if> 
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.38">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos ergativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleIndefErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.40">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos ergativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articlePlErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articlePlErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articlePlErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefPlErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefPlErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefPlErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los artículos que pueden presentarse con sujetos de verbos intransitivos y objetos de verbos transitivos son:</xsl:text>
</p>
</xsl:if> 
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.44">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos absolutivos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleIndefAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.46">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos absolutivos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articlePlAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articlePlAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articlePlAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefPlAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefPlAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefPlAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive'">
<p>
<xsl:text>Los artículos que pueden presentarse con posesivos son:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.50">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos genitivos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleErgGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleErgGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleErgGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleErgIndefGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleErgIndefGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleErgIndefGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.52">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos nominativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleErgGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleErgGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleErgGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleErgPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleErgPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleErgPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleErgIndefGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleErgIndefGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleErgIndefGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleErgIndefPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleErgIndefPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleErgIndefPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      
        
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Puesto que el  </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> tiene un sistema de caso de ergatividad escindida, hay sistemas de artículos distintos para modificar a los sujetos, a los objetos y a los posesivos siguiendo el sistema nominativo-acusativo, más algunos sistemas especiales que se utilizan en casos de ergatividad escindida. En los casos normales que siguen el sistema de nominativo-acusativo, los artículos que pueden presentarse con sujetos son:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.56">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos nominativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleSplitNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.58">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos nominativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitPlNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitPlNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitPlNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefPlNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefPlNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefPlNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los artículos que pueden presentarse con objetos directos son:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.62">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos acusativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleSplitAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.64">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos acusativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitPlAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitPlAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitPlAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefPlAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefPlAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefPlAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text> Los artículos que pueden presentarse con posesivos son:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.68">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos genitivos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleSplitGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.70">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos genitivos</th>
                 <th>Glosa</th>
                 </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      
        
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los artículos que pueden presentarse con sujetos de verbos transitivos en casos especiales de ergatividad escindida son:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.74">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos ergativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleSplitErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.76">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos ergativos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitPlErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitPlErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitPlErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefPlErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefPlErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefPlErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los artículos que pueden presentarse con sujetos de verbos intransitivos y objetos de verbos transitivos en casos especiales de ergatividad escindida son:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.80">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos absolutivos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleSplitAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.82">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos absolutivos</th>
                 <th>Glosa</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitPlAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitPlAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitPlAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleSplitIndefPlAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleSplitIndefPlAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleSplitIndefPlAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      
        
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)!='none' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)!='none' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Hay un otro sistema de artículos que pueden presentarse con </xsl:text>
<xsl:if test="normalize-space(//typology/@caseExperiencer)='yesDat'">
<xsl:text>sujetos-experimentadores o con </xsl:text>
</xsl:if>
<xsl:text>objetos indirectos, como se muestra en el siguiente cuadro:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)!='none' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@caseExperiencer)='yesDat' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.86">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Artículos dativos</th>
                 <th>Glosa</th>
              </tr>	
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<xsl:for-each select="//np/articleDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/articleIndefDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>
           </table>
</example>
</xsl:if>	      	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)!='none' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)!='none' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.88">
<table border="1">
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Artículos dativos</th>
                 <th>Glosa</th>
              </tr>	
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
<td>
<xsl:text>Definido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articlePlDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articlePlDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articlePlDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
<td>
<xsl:text>Indefinido</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/articleIndefPlDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/articleIndefPlDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/articleIndefPlDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
</xsl:if>	      	
        
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda .  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.92">
<table border="1">
              <caption>
<xsl:text>Resumen de los artículos</xsl:text>
</caption>
              <tr>
                 <th>Tipo</th>
                 <th>Nominativo</th>
                 <th>Accusativo</th>
                 <th>Genitivo</th>
                 <th>Dativo</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
                 <td align="left">
<xsl:text>Definido</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
                 <td align="left">
<xsl:text>Indefinido</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda.  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.96">
<table border="1">
              <caption>
<xsl:text>Resumen de los artículos</xsl:text>
</caption>
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Nominativo</th>
                 <th>Accusativo</th>
                 <th>Genitivo</th>
                 <th>Dativo</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
                 <td align="left" rowspan="2">
<xsl:text>Definido</xsl:text>
</td>
                 <td align="left">
<xsl:text>Singular</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
                 <td align="left">
<xsl:text>Plural</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
                 <td align="left" rowspan="2">
<xsl:text>Indefinido</xsl:text>
</td>
                 <td align="left">
<xsl:text>Singular</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
                 <td align="left">
<xsl:text>Plural</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda .  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.100">
<table border="1">
              <caption>
<xsl:text>Resumen de los artículos</xsl:text>
</caption>
              <tr>
                 <th>Tipo</th>
                 <th>Ergativo</th>
                 <th>Absolutivo</th>
                 <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<th>Genitivo</th>
</xsl:if>
                 <th>Dativo</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
                 <td align="left">
<xsl:text>Definido</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
                 <td align="left">
<xsl:text>Indefinido</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda .  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.104">
<table border="1">
              <caption>
<xsl:text>Resumen de los artículos</xsl:text>
</caption>
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>Ergativo</th>
                 <th>Absolutivo</th>
                 <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<th>Genitivo</th>
</xsl:if>
                 <th>Dativo</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
                 <td align="left" rowspan="2">
<xsl:text>Definido</xsl:text>
</td>
                 <td align="left">
<xsl:text>Singular</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
                 <td align="left">
<xsl:text>Plural</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
                 <td align="left" rowspan="2">
<xsl:text>Indefinido</xsl:text>
</td>
                 <td align="left">
<xsl:text>Singular</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
                 <td align="left">
<xsl:text>Plural</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
           </table>
</example>
</xsl:if>	     
        
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda .  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.108">
<table border="1">
              <caption>
<xsl:text>Resumen de los artículos</xsl:text>
</caption>
              <tr>
                 <th>Tipo</th>
                 <th>NOM</th>
                 <th>ACC</th>
                 <th>GEN</th>
                 <th>DAT</th>
                 <th>ERG</th>
                 <th>ABS</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
                 <td align="left">
<xsl:text>Definido</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
                 <td align="left">
<xsl:text>Indefinido</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
           </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda .  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='article' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.112">
<table border="1">
              <caption>
<xsl:text>Resumen de los artículos</xsl:text>
</caption>
              <tr>
                 <th>Tipo</th>
                 <th>Número</th>
                 <th>NOM</th>
                 <th>ACC</th>
                 <th>GEN</th>
                 <th>DAT</th>
                 <th>ERG</th>
                 <th>ABS</th>
              </tr>			
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
                 <td align="left" rowspan="2">
<xsl:text>Definido</xsl:text>
</td>
                 <td align="left">
<xsl:text>Singular</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='indef'">
<tr>
                 <td align="left">
<xsl:text>Plural</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
                 <td align="left" rowspan="2">
<xsl:text>Indefinido</xsl:text>
</td>
                 <td align="left">
<xsl:text>Singular</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
              <xsl:if test="normalize-space(//np/@artDefOnly)!='yes'">
<tr>
                 <td align="left">
<xsl:text>Plural</xsl:text>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
                 <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
              </tr>
</xsl:if>
           </table>
</example>
</xsl:if>	      

       <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' or normalize-space(//np/@artAndDem)='both'">
<p>
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, hay </xsl:text>
<xsl:choose>
              <xsl:when test="//np/@demPl='no'">solamente un sistema de demostrativos que se usa tanto para sustantivos singulares como los plurales.</xsl:when>
              <xsl:when test="//np/@demPl='yes'">sistemas de demostrativos distintos para singular y plural de modo que pueden concordar con el sustantivo.</xsl:when>
           </xsl:choose>
<xsl:text> Los adjetivos demostrativos que modifican a un sustantivo son </xsl:text>
<xsl:choose>
              <xsl:when test="//pron/@demAdjSame='yes'">idénticos a los pronombres demostrativos </xsl:when>
              <xsl:when test="//pron/@demAdjSame='some'">a veces lo mismo pero otras veces distintos de los pronombres demostrativos </xsl:when>
              <xsl:when test="//pron/@demAdjSame='no'">distintos de los pronombres demostrativos </xsl:when>
           </xsl:choose>
<xsl:text>presentados en la sección </xsl:text>
<sectionRef sec="sPronDem" />
<xsl:text>.</xsl:text>
</p>
</xsl:if>
        
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='no'">
<p>
<xsl:text>Los demostrativos en el  </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo: </xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='no'">
<example num="xAdjP.AdjArtDem.118">
<table border="1">
              <tr>
                 <th>Distancia</th>
                 <th>Demostrativos</th>
                 <th>Glosa</th>
              </tr>			
              <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demProximalExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demProximalExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demMedialExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demMedialExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demDistalExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demDistalExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='yes'">
<p>
<xsl:text>Los demostrativos en el  </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo: </xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='none' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//np/@artCase)='no' and normalize-space(//np/@artPl)='yes'">
<example num="xAdjP.AdjArtDem.122">
<table border="1">
              <tr>
                 <th>Distancia</th>
                 <th>Número</th>
                 <th>Demostrativos</th>
                 <th>Glosa</th>
              </tr>			
              <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demProximalExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demProximalPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demMedialExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demMedialPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demDistalExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
              <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demDistalPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
           </table>
</example>
</xsl:if>
        
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Puesto que el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> tiene un un sistema de caso nominativo-acusativo, hay sistemas distintos de demostrativos para modificar a los sujetos, a los objetos y a los posesivos. Los demostrativos que pueden presentarse con sujetos se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo: </xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.126">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Demostrativos nominativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demProximalNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demProximalNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demMedialNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demMedialNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demDistalNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demDistalNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.128">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos nominativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demProximalNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demProximalPlNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalPlNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalPlNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demMedialNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demMedialPlNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialPlNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialPlNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demDistalNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demDistalPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	      

        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los demostrativos que pueden presentarse con objetos directos se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo: </xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.132">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Demostrativos acusativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demProximalAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demProximalAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demMedialAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demMedialAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demDistalAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demDistalAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.134">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos acusativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demProximalAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demProximalPlAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalPlAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalPlAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demMedialAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demMedialPlAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialPlAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialPlAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demDistalAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demDistalPlAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalPlAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalPlAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los demostrativos que pueden presentarse con posesivos se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo: </xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.138">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Demostrativos genitivos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demProximalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demProximalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demMedialGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demMedialGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demDistalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demDistalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.140">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos genitivos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demProximalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demProximalPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demMedialGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demMedialPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demDistalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demDistalPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	      
	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Puesto que el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> tiene un un sistema de caso ergativo-absolutivo, hay sistemas de demostrativos distintos para modificar a los sujetos de verbos transitivos</xsl:text>
<xsl:if test="normalize-space(//np/@possCaseErg)!='genitive'">
<xsl:text> y a los sujetos de verbos intransitivos y los objetos de verbos transitivos</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<xsl:text>, a los sujetos de verbos intransitivos y los objetos de verbos transitivos y a los posesivos</xsl:text>
</xsl:if>
<xsl:text>.  Los demostrativos que pueden presentarse con sujetos de verbos transitivos se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.144">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Demostrativos ergativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demProximalErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demProximalErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demMedialErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demMedialErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demDistalErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demDistalErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.146">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos ergativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demProximalErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demProximalPlErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalPlErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalPlErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demMedialErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demMedialPlErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialPlErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialPlErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demDistalErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demDistalPlErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalPlErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalPlErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los demostrativos que pueden presentarse con sujetos de verbos intransitivos y objetos de verbos transitivos se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.150">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Demostrativos absolutivos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demProximalAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demProximalAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demMedialAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demMedialAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demDistalAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demDistalAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.152">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos absolutivos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demProximalAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demProximalPlAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalPlAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalPlAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demMedialAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demMedialPlAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialPlAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialPlAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demDistalAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demDistalPlAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalPlAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalPlAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	      	      

        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive'">
<p>
<xsl:text>Los demostrativos que pueden presentarse con posesivos se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive' and normalize-space(//np/@demPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive' and normalize-space(//np/@demPl)='no'">
<example num="xAdjP.AdjArtDem.156">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Demostrativos genitivos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demErgProximalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demErgProximalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demErgProximalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demErgMedialGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demErgMedialGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demErgMedialGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demErgDistalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demErgDistalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demErgDistalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive' and normalize-space(//np/@demPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@artCase)='yes' and normalize-space(//np/@possCaseErg)='genitive' and normalize-space(//np/@demPl)='yes'">
<example num="xAdjP.AdjArtDem.158">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos genitivos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demErgProximalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demErgProximalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demErgProximalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demErgProximalPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demErgProximalPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demErgProximalPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demErgMedialGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demErgMedialGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demErgMedialGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demErgMedialPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demErgMedialPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demErgMedialPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demErgDistalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demErgDistalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demErgDistalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demErgDistalPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demErgDistalPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demErgDistalPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	      	       
	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Puesto que el  </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> tiene un sistema de caso de ergatividad escindida, hay sistemas de demostrativos distintos para modificar a los sujetos, a los objetos y a los posesivos siguiendo el sistema nominativo-acusativo, más algunos sistemas especiales que se utilizan en casos de ergatividad escindida. </xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los demostrativos que pueden presentarse con sujetos en los casos normales que siguen el sistema de nominativo-acusativo se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.164">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Demostrativos nominativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitProximalNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitMedialNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitDistalNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.166">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos nominativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitProximalNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalPlNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitProximalPlNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalPlNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitMedialNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialPlNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitMedialPlNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialPlNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitDistalNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalPlNomExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitDistalPlNomExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalPlNomExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los demostrativos que pueden presentarse con objetos directos en los casos normales que siguen el sistema de nominativo-acusativo se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.170">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Demostrativos acusativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitProximalAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitMedialAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitDistalAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.172">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos acusativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitProximalAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalPlAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitProximalPlAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalPlAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitMedialAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialPlAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitMedialPlAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialPlAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitDistalAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalPlAccExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitDistalPlAccExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalPlAccExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	   

        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los demostrativos que pueden presentarse con posesivos se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.176">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Demostrativos genitivos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitProximalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitMedialGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitDistalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.178">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos genitivos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitProximalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitProximalPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitMedialGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitMedialPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitDistalGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalPlGenExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitDistalPlGenExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalPlGenExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	   
	      	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los demostrativos que pueden presentarse con sujetos de verbos transitivos en casos especiales de ergatividad escindida se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.182">
<table border="1">
	            <tr>
	            <th>Distancia</th>
	               <th>Demostrativos ergativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitProximalErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitMedialErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitDistalErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.184">
<table border="1">
	             <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos ergativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitProximalErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalPlErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitProximalPlErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalPlErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitMedialErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialPlErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitMedialPlErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialPlErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitDistalErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalPlErgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitDistalPlErgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalPlErgExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>Los demostrativos que pueden presentarse con sujetos de verbos intransitivos y objetoes de verbos transitivos en casos especiales de ergatividad escindida se muestran en el siguiente cuadro, de acuerdo a  la distancia del hablante de lo que representa el demostrativo:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.188">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Demostrativos absolutivos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitProximalAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitMedialAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demSplitDistalAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.190">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos absolutivos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitProximalAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitProximalPlAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitProximalPlAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitProximalPlAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitMedialAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitMedialPlAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitMedialPlAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitMedialPlAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitDistalAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demSplitDistalPlAbsExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demSplitDistalPlAbsExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demSplitDistalPlAbsExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	      	      

        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)!='none' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)!='none'">
<p>
<xsl:text>Hay un sistema adicional de demostrativos que pueden presentarse con </xsl:text>
<xsl:if test="normalize-space(//typology/@caseExperiencer)='yesDat'">
<xsl:text>sujetos-experimentadores o con </xsl:text>
</xsl:if>
<xsl:text>objetos indirectos, como se muestra en el cuadro siguiente:</xsl:text>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)!='none' and normalize-space(//np/@demPl)='no' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)!='none' and normalize-space(//np/@demPl)='no'">
<example num="xAdjP.AdjArtDem.194">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Demostrativos dativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<xsl:for-each select="//np/demProximalDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demProximalDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Intermedia</xsl:text>
</td>
<xsl:for-each select="//np/demMedialDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demMedialDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Distante</xsl:text>
</td>
<xsl:for-each select="//np/demDistalDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//np/demDistalDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)!='none' and normalize-space(//np/@demPl)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)!='none' and normalize-space(//np/@demPl)='yes'">
<example num="xAdjP.AdjArtDem.196">
<table border="1">
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Demostrativos dativos</th>
	               <th>Glosa</th>
	            </tr>			
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demProximalDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Próxima</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demProximalPlDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demProximalPlDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demProximalPlDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demMedialDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Intermedia</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demMedialPlDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demMedialPlDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demMedialPlDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Singular</xsl:text>
</td>
<xsl:for-each select="//np/demDistalDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	            <tr>
<td>
<xsl:text>Distante</xsl:text>
</td>
<td>
<xsl:text>Plural</xsl:text>
</td>
<xsl:for-each select="//np/demDistalPlDatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//np/demDistalPlDatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//np/demDistalPlDatExample/form[position() &gt; 1]">
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
	         </table>
</example>
</xsl:if>	      	      
	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda .  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.200">
<table border="1">
	            <caption>
<xsl:text>Resumen de los demostrativos</xsl:text>
</caption>
	            <tr>
	               <th>Distancia</th>
	               <th>Nominativo</th>
	               <th>Accusativo</th>
	               <th>Genitivo</th>
	               <th>Dativo</th>
	            </tr>			
	            <tr>
	               <td align="left">
<xsl:text>Próxima</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Intermedia</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Distante</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	         </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda .  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='nominative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.204">
<table border="1">
	            <caption>
<xsl:text>Resumen de los demostrativos</xsl:text>
</caption>
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Nominativo</th>
	               <th>Accusativo</th>
	               <th>Genitivo</th>
	               <th>Dativo</th>
	            </tr>			
	            <tr>
	               <td align="left" rowspan="2">
<xsl:text>Próxima</xsl:text>
</td>
	               <td align="left">
<xsl:text>Singular</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Plural</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left" rowspan="2">
<xsl:text>Intermedia</xsl:text>
</td>
	               <td align="left">
<xsl:text>Singular</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Plural</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left" rowspan="2">
<xsl:text>Distante</xsl:text>
</td>
	               <td align="left">
<xsl:text>Singular</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Plural</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	         </table>
</example>
</xsl:if>	      


        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda .  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.208">
<table border="1">
	            <caption>
<xsl:text>Resumen de los demostrativos</xsl:text>
</caption>
	            <tr>
	               <th>Distancia</th>
	               <th>Ergativo</th>
	               <th>Absolutivo</th>
	               <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<th>Genitivo</th>
</xsl:if>
	               <th>Dativo</th>
	            </tr>			
	            <tr>
	               <td align="left">
<xsl:text>Próxima</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Intermedia</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Distante</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	         </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda .  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='ergative' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.212">
<table border="1">
	            <caption>
<xsl:text>Resumen de los demostrativos</xsl:text>
</caption>
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>Ergativo</th>
	               <th>Absolutivo</th>
	               <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<th>Genitivo</th>
</xsl:if>
	               <th>Dativo</th>
	               </tr>			
	            <tr>
	               <td align="left" rowspan="2">
<xsl:text>Próxima</xsl:text>
</td>
	               <td align="left">
<xsl:text>Singular</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               </tr>
	            <tr>
	               <td align="left">
<xsl:text>Plural</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               </tr>
	            <tr>
	               <td align="left" rowspan="2">
<xsl:text>Intermedia</xsl:text>
</td>
	               <td align="left">
<xsl:text>Singular</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               </tr>
	            <tr>
	               <td align="left">
<xsl:text>Plural</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               </tr>
	            <tr>
	               <td align="left" rowspan="2">
<xsl:text>Distante</xsl:text>
</td>
	               <td align="left">
<xsl:text>Singular</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               </tr>
	            <tr>
	               <td align="left">
<xsl:text>Plural</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <xsl:if test="normalize-space(//np/@possCaseErg)='genitive'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               </tr>
	         </table>
</example>
</xsl:if>	     
	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda .  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='no' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.216">
<table border="1">
	            <caption>
<xsl:text>Resumen de los demostrativos</xsl:text>
</caption>
	            <tr>
	               <th>Distancia</th>
	               <th>NOM</th>
	               <th>ACC</th>
	               <th>GEN</th>
	               <th>DAT</th>
	               <th>ERG</th>
	               <th>ABS</th>
	               </tr>			
	            <tr>
	               <td align="left">
<xsl:text>Próxima</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Intermedia</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Distante</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	         </table>
</example>
</xsl:if>	      
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<p>
<xsl:text>En el siguiente cuadro se muestran todas las formas para comparación: </xsl:text>
<object type="tComment"> Aquí tiene que escribir la forma en cada celda .  Si no quiere utilizar este cuadro, elimine este párrafo y el cuadro.</object>
</p>
</xsl:if>
        <xsl:if test="normalize-space(//np/@artAndDem)='demonstrative' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes' or normalize-space(//np/@artAndDem)='both' and normalize-space(//typology/@case)='split' and normalize-space(//np/@demPl)='yes' and normalize-space(//np/@artCase)='yes'">
<example num="xAdjP.AdjArtDem.220">
<table border="1">
	            <caption>
<xsl:text>Resumen de los demostrativos</xsl:text>
</caption>
	            <tr>
	               <th>Distancia</th>
	               <th>Número</th>
	               <th>NOM</th>
	               <th>ACC</th>
	               <th>GEN</th>
	               <th>DAT</th>
	               <th>ERG</th>
	               <th>ABS</th>
	            </tr>			
	            <tr>
	               <td align="left" rowspan="2">
<xsl:text>Próxima</xsl:text>
</td>
	               <td align="left">
<xsl:text>Singular</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Plural</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left" rowspan="2">
<xsl:text>Intermedia</xsl:text>
</td>
	               <td align="left">
<xsl:text>Singular</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Plural</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left" rowspan="2">
<xsl:text>Distante</xsl:text>
</td>
	               <td align="left">
<xsl:text>Singular</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	            <tr>
	               <td align="left">
<xsl:text>Plural</xsl:text>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	               <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	            </tr>
	         </table>
</example>
</xsl:if>	      
	      
        <xsl:if test="normalize-space(//np/@artAndDem)!='no'">
<p>
<xsl:text>Véase la sección </xsl:text>
<sectionRef sec="sNPArtDem" />
<xsl:text> para ejemplos en las frases nominales.</xsl:text>
</p>
</xsl:if>
     </section2>
        
 
    </section1>
 
  
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     

   

   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
   
   
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
         
         
         
      
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
 
 
    
    
    
    
    
    
    
    
    
    
    
 
   
      
      
      
         
      
   
      
   
         
            
            
            
            
            
            
            
            
            
            
            
         
      
         
         
         
         
         
         
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
      
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
         
         
         
         
         

   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
    
  
   
      
      
      
   
   
      
   
   
      
   
   
      
      
      
   
   
      
   
      
         
         
         
         
         
         
         
      
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
 
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
      
         
         
         
         
         
         
         
         
         
      
      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
      
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
      
         
         
         
         
         
         
         
         
 
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
  
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
   
   
      
   
   
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
   
      
   
   
      
   
   
      
   
   
      
      
      
   
   
   
      
   
   
      
   

   
   
   
 

   

   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
   
      
         
         
         
      
   
      
      
      
   
   
      
      
      
   
      
         
         
         
         
         
         
      
         
         
         
         
         
         
         
           
   
      
   
   
      
   

   

   
      
   
   
      

      
   
   
   
      
   
   
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
         
      
   
   
      
      
      

      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
   
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
   
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
        
        
        
        
        
        
        
    
    
        
        
        
        
        
        
        
    
    
        
        
        
        
        
        
        
        
        
        
        
    
    
        
        
        
        
        
        
        
    
    
        
        
        
        
        
        
        
    
    
        
        
        
        
        
        
        
    
    
        
        
        
        
        
        
        
    
    
        
    
    
        
        
        
    
    
        
        
        
    
    
        
        
        
    
    
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
    
        
        
        
        
        
    
   
      
         
         
         
         
         
         
         
         
         
         
         
         
         
         
            
      
      
         
         
         
         
         
         
         
         
                 
      
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
         
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
       
   
 
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
         
   
   
      
      
      
      
      
      
      
      
              
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
         
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
       
   
   
   
      
      
      
      
      
      
          
   
   
      
      
      
      
         
   
   
      
      
      
    
   
      
      
      
    

   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      
   
   
      
      
      
      
      
      
      
      
              
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
         
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
       
   
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
         
   
   
      
      
      
      
      
      
      
      
              
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
         
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
       
   
   
      
   
   
      
      
      
      
      
      
          
   
   
      
      
      
      
         
   
   
      
      
      
    
   
      
      
      
    
   
    
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
     
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
     
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
         
   
      
      
      
      
      
      
      
       
   
      
      
        
   
   
      
      
        
   
   
      
      
      
      
      
      
      
   

   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
   
</xsl:template>
</xsl:stylesheet>
