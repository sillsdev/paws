<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="pp">
    <section1 id="sPP">
        <secTitle>
            <xsl:choose>
                <xsl:when test="//pp/@pPos='before'">Las frases preposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='after'">Las frases posposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='both'">Las frases adposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">Las frases adposicionales</xsl:when>
            </xsl:choose>
            </secTitle>
       <xsl:if test="normalize-space(//np/@caseN)='no'">
<p contentType="ctPracticalIntro">
<xsl:text>Las frases adposicionales expresan generalmente lugar o tiempo, y también las relaciones gramaticales de acompañamiento, meta, instrumento, recipiente, poseedor o agente, porque, en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, el caso no se indica en sustantivos o frases nominales.  Las preposiciones se presentan antes de los complementos, mientras que las posposiciones se presentan después, y pueden ser palabras independientes o clíticos. </xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//np/@caseN)='yes'">
<p contentType="ctPracticalIntro">
<xsl:text>Las frases adposicionales expresan solamente lugar o tiempo, dado que el caso se indica en sustantivos o frases nominales en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  Las preposiciones se presentan antes de los complementos, mientras que las posposiciones se presentan después y pueden ser palabras independientes o clíticos  </xsl:text>
</p>
</xsl:if>
       <p contentType="ctComparativeIntro">
<xsl:text>Esta sección se trata la estructura interna de las frases adposicionales, que expresan generalmente lugar o tiempo, y también las relaciones gramaticales de acompañamiento, meta, instrumento, recipiente, poseedor o agente en lenguas que no indican el caso en sustantivos o frases nominales. Las lenguas que tienen indicadores de caso en sustantivos normalmente tienen frases adposicionales de lugar y tiempo todavía.</xsl:text>
</p> 
       <p contentType="ctComparativeIntro">
<xsl:text>Las preposiciones se presentan antes de los complementos, mientras que las posposiciones se presentan después. El español tiene preposiciones, de acuerdo con los ejemplos </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>para José</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>al lado del río</langData>
<xsl:text>.  Las preposiciones o las posposiciones pueden ser palabras independientes, o pueden ser clíticos que se unen a la orilla de la frase del complemento o al núcleo.</xsl:text>
</p>
       <p>
<xsl:text>Algunos ejemplos de frases </xsl:text>
<xsl:choose>
             <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
             <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
             <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
             <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
          </xsl:choose>
<xsl:text> locativas en el </xsl:text>
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
<xsl:text>Como se muestra en los ejemplos,  en el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> hay </xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pPos='before'">solamente preposiciones.  </xsl:when>
                <xsl:when test="//pp/@pPos='after'">solamente posposiciones.  </xsl:when>
                <xsl:when test="//pp/@pPos='both'">preposiciones y posposiciones.  </xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">solamente _____-posiciones.  </xsl:when>
            </xsl:choose>
<xsl:text></xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pType='word'">Todas son palabras independientes.</xsl:when>
                <xsl:when test="//pp/@pType='clitic'">Todas son clíticos que se escriben unidos a otra palabra.</xsl:when>
                <xsl:when test="//pp/@pType='both'">Algunas se escriben como palabras independientes, pero algunas son clíticos que se escriben unidos a otra palabra.  </xsl:when>
            </xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pType)!='word'">
                <xsl:text>Los clíticos se unen </xsl:text>
                <xsl:choose>
                    <xsl:when test="//pp/@attaches='edge'">a la orilla</xsl:when>
                    <xsl:when test="//pp/@attaches='head'">al sustantivo principal</xsl:when>
                </xsl:choose>
                <xsl:text> de la frase de complemento. </xsl:text>
            </xsl:if>
<xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//pp/@ppClassifier)='yes' and normalize-space(//pp/@pType)!='clitic'">
<xsl:choose>
               <xsl:when test="//pp/@pPos='before'">Las preposiciones</xsl:when>
               <xsl:when test="//pp/@pPos='after'">Las posposiciones</xsl:when>
               <xsl:when test="//pp/@pPos='both'">Las adposiciones</xsl:when>
               <xsl:when test="//pp/@pPos='unknown'">Las adposiciones</xsl:when>
</xsl:choose>
               <xsl:text> se marcan con clasificadores como parte del sistema de concordancia. En los cuadros solamente se muestran las raíces, pero los ejemplos de frases muestran las formas completas con clasificadores.</xsl:text> </xsl:if>
</p>
       <xsl:if test="normalize-space(//pp/@pPos)='before'">
<p>
<xsl:text>Algunos ejemplos de las preposiciones </xsl:text>
<xsl:if test="normalize-space(//pp/@bodyPart)='yes'">
<xsl:text>regulares </xsl:text>
</xsl:if>
<xsl:text>que se usan en frases locativas son:</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='before'">
<example num="xPP.20">
<table border="1">
             <tr>
                <th>Preposiciones</th>
                <th>Glosa</th>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
       <xsl:if test="normalize-space(//pp/@pPos)='after'">
<p>
<xsl:text>Algunos ejemplos de las posposiciones </xsl:text>
<xsl:if test="normalize-space(//pp/@bodyPart)='yes'">
<xsl:text>regulares </xsl:text>
</xsl:if>
<xsl:text>que se usan en frases locativas son:</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='after'">
<example num="xPP.24">
<table border="1">
             <tr>
                <th>Posposiciones</th>
                <th>Glosa</th>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
       <xsl:if test="normalize-space(//pp/@pPos)='both' or normalize-space(//pp/@pPos)='unknown'">
<p>
<xsl:text>Algunos ejemplos de las adposiciones </xsl:text>
<xsl:if test="normalize-space(//pp/@bodyPart)='yes'">
<xsl:text>regulares </xsl:text>
</xsl:if>
<xsl:text>que se usan en frases locativas son:</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='both' or normalize-space(//pp/@pPos)='unknown'">
<example num="xPP.28">
<table border="1">
             <tr>
                <th>Tipo</th>
                <th>Morfemas</th>
                <th>Glosa</th>
             </tr>				
             <tr>
<td>
<xsl:text>Preposiciones</xsl:text>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:text>Posposiciones</xsl:text>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
       <xsl:if test="normalize-space(//pp/@pPos)='before' or normalize-space(//pp/@pPos)='both'">
<p>
<xsl:text>Algunos ejemplos de frases preposicionales locativas son:</xsl:text>
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
<xsl:text>Algunos ejemplos de frases posposicionales locativas son:</xsl:text>
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
<xsl:text>En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> generalmente se usan las partes del cuerpo para expresar la posición en frases </xsl:text>
<xsl:choose>
          <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
          <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
          <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
          <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
       </xsl:choose>
<xsl:text> locativas.  Algunos ejemplos de las partes del cuerpo que se usan como </xsl:text>
<xsl:choose>
             <xsl:when test="//pp/@pPos='before'">preposiciones</xsl:when>
             <xsl:when test="//pp/@pPos='after'">posposiciones</xsl:when>
             <xsl:when test="//pp/@pPos='both'">adposiciones</xsl:when>
             <xsl:when test="//pp/@pPos='unknown'">adposiciones</xsl:when>
</xsl:choose>
<xsl:text> son:</xsl:text>
</p>
</xsl:if>      
       <xsl:if test="normalize-space(//pp/@pPos)='before' and normalize-space(//pp/@bodyPart)='yes'">
<example num="xPP.40">
<table border="1">
             <tr>
                <th>Parte del cuerpo</th>
                <th>Glosa como sustantivo</th>
                <th>Glosa como preposición</th>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
                <th>Parte del cuerpo</th>
                <th>Glosa como sustantivo</th>
                <th>Glosa como posposición</th>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
                <th>Tipo</th>
                <th>Parte del cuerpo</th>
                <th>Glosa como sustantivo</th>
                <th>Glosa como adposición</th>
             </tr>				
             <tr>
<td>
<xsl:text>Preposiciones</xsl:text>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
             <tr>
<td>
<xsl:text>Posposiciones</xsl:text>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
<td> </td>
</tr>
</xsl:if>
</xsl:for-each>
          </table>
</example>
</xsl:if>
       <xsl:if test="normalize-space(//pp/@pPos)='before' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@bodyPart)='yes'">
<p>
<xsl:text>Algunos ejemplos de frases preposicionales que usan las partes del cuerpo son:</xsl:text>
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
<xsl:text>Algunos ejemplos de frases posposicionales que usan las partes del cuerpo son:</xsl:text>
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
<xsl:text>Las </xsl:text>
<xsl:choose>
          <xsl:when test="//pp/@pPos='before'">preposiciones</xsl:when>
          <xsl:when test="//pp/@pPos='after'">posposiciones</xsl:when>
          <xsl:when test="//pp/@pPos='both'">adposiciones</xsl:when>
          <xsl:when test="//pp/@pPos='unknown'">adposiciones</xsl:when>
</xsl:choose>
<xsl:text> que se usan como un indicador de caso para las relaciones gramaticales menores se muestran en </xsl:text>
<exampleRef num="xCaseP" equal="no" letterOnly="no" />
<xsl:text>.</xsl:text>
</p>
</xsl:if>
       <xsl:if test="normalize-space(//np/@caseN)='no'">
<example num="xCaseP">
<table border="1">
             <caption>
                <xsl:text>Adposiciones que indican el caso</xsl:text>
             </caption>
             <tr>
                <th>Adposiciones</th>
                <th>Caso</th>
                <th>Uso</th>
             </tr>
             <tr>
<td>
                   <xsl:text>genitivo</xsl:text>
                </td>
<td>
                   <xsl:text>posesivos</xsl:text>
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
                   <xsl:text>dativo</xsl:text>
                </td>
<td>
                   <xsl:text>objetos indirectos</xsl:text>
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
                   <xsl:text>ablativo</xsl:text>
                </td>
<td>
                   <xsl:text>fuente u origen</xsl:text>
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
                   <xsl:text>instrumento</xsl:text>
                </td>
<td>
                   <xsl:text>instrumento o medio</xsl:text>
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
                   <xsl:text>vocativo</xsl:text>
                </td>
<td>
                   <xsl:text>discurso directo</xsl:text>
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
                   <xsl:text>oblicuo</xsl:text>
                </td>
<td>
                   <xsl:text>relación gramatical menor o general</xsl:text>
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
<xsl:text>Todos los ejemplos anteriores tienen un sustantivo, nombre propio o frase nominal como complemento.  A continuación se analizan los posibles modificadores de la frase </xsl:text>
<xsl:choose>
             <xsl:when test="//pp/@pPos='before'">preposicional</xsl:when>
             <xsl:when test="//pp/@pPos='after'">posposicional</xsl:when>
             <xsl:when test="//pp/@pPos='both'">adposicional</xsl:when>
             <xsl:when test="//pp/@pPos='unknown'">adposicional</xsl:when>
          </xsl:choose>
<xsl:text> completa, después, en la sección </xsl:text>
<sectionRef sec="sPPComps" />
<xsl:text>, se presentan ejemplos de los otros complementos permitidos.</xsl:text>
</p>
        <section2 id="sPPModifiers">
            <secTitle>Modificadores</secTitle>
           <p contentType="ctPracticalIntro">
<xsl:text>Normalmente hay algunas palabras de grado, números ordinales, adverbios de lugar y de modo que pueden modificar a una frase </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicional</xsl:when>
              </xsl:choose>
<xsl:text> completa.</xsl:text>
</p>
              <p contentType="ctComparativeIntro">
<xsl:text>Normalmente hay algunas palabras de grado que pueden modificar a una frase </xsl:text>
<xsl:choose>
                    <xsl:when test="//pp/@pPos='before'">preposicional</xsl:when>
                    <xsl:when test="//pp/@pPos='after'">posposicional</xsl:when>
                    <xsl:when test="//pp/@pPos='both'">adposicional</xsl:when>
                    <xsl:when test="//pp/@pPos='unknown'">adposicional</xsl:when>
                </xsl:choose>
<xsl:text> completa, por ejemplo </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>just</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘justo’</xsl:text>
</gloss>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>right</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘hasta’</xsl:text>
</gloss>
<xsl:text> en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>just around the corner</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘justo a la vuelta de la esquina’</xsl:text>
</gloss>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>right to the last second</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘hasta el último momento’</xsl:text>
</gloss>
<xsl:text>.  En algunas lenguas hay adverbios de lugar que significa </xsl:text>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>‘right here’ ‘exactamente aquí’</xsl:text>
</gloss>
<xsl:text> y </xsl:text>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>‘right there’ ‘exactamente allí’</xsl:text>
</gloss>
<xsl:text> que pueden modificar a las frases </xsl:text>
<xsl:choose>
                  <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                  <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                  <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                  <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
               </xsl:choose>
<xsl:text>.  Los números ordinales y los adjetivos también pueden modificar a las frases </xsl:text>
<xsl:choose>
                    <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                    <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                    <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                    <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
                </xsl:choose>
<xsl:text>, como en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>next in line</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘siguiente en la linea’</xsl:text>
</gloss>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>first out the door</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘el primero en salir’</xsl:text>
</gloss>
<xsl:text>.  Además, ciertos adverbios de modo pueden modificar a las frases </xsl:text>
<xsl:choose>
                    <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                    <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                    <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                    <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
                </xsl:choose>
<xsl:text>, como en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>almost in the hole</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘casi en el agujero’</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mostly up the tree</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘la mayoría en el árbol’</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>squarely on the table</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘justo en la mesa’</xsl:text>
</gloss>
<xsl:text>, y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>nearly upon the enemy</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘casi sobre el enemigo’</xsl:text>
</gloss>
<xsl:text>.</xsl:text>
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
                 <xsl:when test="//pp/@modifiers='no'"> no hay modificadores que se presenten antes o después de la frase.</xsl:when>
                 <xsl:when test="//pp/@modifiers='yes'"> se permiten las siguientes categorías de palabras que modifican a la frase <xsl:choose>
                    <xsl:when test="//pp/@pPos='before'">preposicional</xsl:when>
                    <xsl:when test="//pp/@pPos='after'">posposicional</xsl:when>
                    <xsl:when test="//pp/@pPos='both'">adposicional</xsl:when>
                    <xsl:when test="//pp/@pPos='unknown'">adposicional</xsl:when>
                 </xsl:choose> completa.</xsl:when>
              </xsl:choose>
<xsl:if test="normalize-space(//pp/@modifiers)='no'">
<xsl:text>  Ni palabras de grado ni los números ordinales ni los adverbios pueden modificar a las frases </xsl:text>
                 <xsl:choose>
                    <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                    <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                    <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                    <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
                 </xsl:choose>
                 <xsl:text> como palabras independientes.</xsl:text> </xsl:if>
<xsl:text></xsl:text>
</p>
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes'">
<p>
<xsl:text>Las frases </xsl:text>
<xsl:choose>
                <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
             </xsl:choose>
<xsl:text> se pueden modificar con palabras de grado que se presentan </xsl:text>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='yes' and normalize-space(//pp/ppDegreePosAfter/@checked)='no' and normalize-space(//pp/ppDegreePosBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='no' and normalize-space(//pp/ppDegreePosAfter/@checked)='yes' and normalize-space(//pp/ppDegreePosBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='no' and normalize-space(//pp/ppDegreePosAfter/@checked)='no' and normalize-space(//pp/ppDegreePosBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='yes' and normalize-space(//pp/ppDegreePosAfter/@checked)='yes' and normalize-space(//pp/ppDegreePosBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='yes' and normalize-space(//pp/ppDegreePosAfter/@checked)='no' and normalize-space(//pp/ppDegreePosBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='no' and normalize-space(//pp/ppDegreePosAfter/@checked)='yes' and normalize-space(//pp/ppDegreePosBoth/@checked)='yes'">
<xsl:text>después  de o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='yes' and normalize-space(//pp/ppDegreePosAfter/@checked)='yes' and normalize-space(//pp/ppDegreePosBoth/@checked)='yes'">
<xsl:text>de cualquier lado o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosOther/@checked)='no'">
<xsl:text> de la frase completa.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='no' and normalize-space(//pp/ppDegreePosAfter/@checked)='no' and normalize-space(//pp/ppDegreePosBoth/@checked)='no' and normalize-space(//pp/ppDegreePosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//pp/ppDegreePosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppDegreePosBefore/@checked)='yes' and normalize-space(//pp/ppDegreePosOther/@checked)='yes' or normalize-space(//pp/ppDegreePosAfter/@checked)='yes' and normalize-space(//pp/ppDegreePosOther/@checked)='yes' or normalize-space(//pp/ppDegreePosBoth/@checked)='yes' and normalize-space(//pp/ppDegreePosOther/@checked)='yes'">
<xsl:text> de la frase completa y también pueden presentarse ___</xsl:text>
<xsl:value-of select="//pp/ppDegreePosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Las palabras de grado que pueden modificar a la frase </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicional</xsl:when>
              </xsl:choose>
<xsl:text> completa son:</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes'">
<example num="xPP.PPModifiers.12">
<table border="1">
                 <tr>
                    <th>Palabras de grado</th>
                    <th>Glosa</th>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de frases </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
              </xsl:choose>
<xsl:text> con palabras de grado que las modifican son:</xsl:text>
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
<xsl:text>Las frases </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
              </xsl:choose>
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes'">
<xsl:text> también</xsl:text>
</xsl:if>
<xsl:text> se pueden modificar con los ordinales que se presentan </xsl:text>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='yes' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='no' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='no' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='yes' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='no' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='no' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='yes' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='yes' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='yes' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='no' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='no' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='yes' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='yes'">
<xsl:text>después o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='yes' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='yes' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='yes'">
<xsl:text>de cualquier lado o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosOther/@checked)='no'">
<xsl:text> de la frase completa.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='no' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='no' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='no' and normalize-space(//pp/ppOrdinalPosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//pp/ppOrdinalPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppOrdinalPosBefore/@checked)='yes' and normalize-space(//pp/ppOrdinalPosOther/@checked)='yes' or normalize-space(//pp/ppOrdinalPosAfter/@checked)='yes' and normalize-space(//pp/ppOrdinalPosOther/@checked)='yes' or normalize-space(//pp/ppOrdinalPosBoth/@checked)='yes' and normalize-space(//pp/ppOrdinalPosOther/@checked)='yes'">
<xsl:text> de la frase completa y también pueden presentarse ___</xsl:text>
<xsl:value-of select="//pp/ppOrdinalPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Los ordinales que pueden modificar a la frase </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicional</xsl:when>
              </xsl:choose>
<xsl:text> completa son:</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOrdinal/@checked)='yes'">
<example num="xPP.PPModifiers.20">
<table border="1">
                 <tr>
                    <th>Palabras ordinales</th>
                    <th>Glosa</th>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOrdinal/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de frases </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
              </xsl:choose>
<xsl:text> con palabras ordinales que las modifican son:</xsl:text>
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
<xsl:text>Las frases </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
              </xsl:choose>
<xsl:if test="normalize-space(//pp/ppModifierDegree/@checked)='yes' or normalize-space(//pp/ppModifierOrdinal/@checked)='yes'">
<xsl:text> también</xsl:text>
</xsl:if>
<xsl:text> se pueden modificar con los adverbios de modo que se presentan </xsl:text>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='yes' and normalize-space(//pp/ppMannerPosAfter/@checked)='no' and normalize-space(//pp/ppMannerPosBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='no' and normalize-space(//pp/ppMannerPosAfter/@checked)='yes' and normalize-space(//pp/ppMannerPosBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='no' and normalize-space(//pp/ppMannerPosAfter/@checked)='no' and normalize-space(//pp/ppMannerPosBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='yes' and normalize-space(//pp/ppMannerPosAfter/@checked)='yes' and normalize-space(//pp/ppMannerPosBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='yes' and normalize-space(//pp/ppMannerPosAfter/@checked)='no' and normalize-space(//pp/ppMannerPosBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='no' and normalize-space(//pp/ppMannerPosAfter/@checked)='yes' and normalize-space(//pp/ppMannerPosBoth/@checked)='yes'">
<xsl:text>después o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='yes' and normalize-space(//pp/ppMannerPosAfter/@checked)='yes' and normalize-space(//pp/ppMannerPosBoth/@checked)='yes'">
<xsl:text>de cualquier lado en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosOther/@checked)='no'">
<xsl:text> de la frase completa.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='no' and normalize-space(//pp/ppMannerPosAfter/@checked)='no' and normalize-space(//pp/ppMannerPosBoth/@checked)='no' and normalize-space(//pp/ppMannerPosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//pp/ppMannerPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppMannerPosBefore/@checked)='yes' and normalize-space(//pp/ppMannerPosOther/@checked)='yes' or normalize-space(//pp/ppMannerPosAfter/@checked)='yes' and normalize-space(//pp/ppMannerPosOther/@checked)='yes' or normalize-space(//pp/ppMannerPosBoth/@checked)='yes' and normalize-space(//pp/ppMannerPosOther/@checked)='yes'">
<xsl:text> de la frase completa y también pueden presentarse ___</xsl:text>
<xsl:value-of select="//pp/ppMannerPosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Los adverbios de modo que pueden modificar a la frase </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicional</xsl:when>
              </xsl:choose>
<xsl:text> completa son:</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierManner/@checked)='yes'">
<example num="xPP.PPModifiers.28">
<table border="1">
                 <tr>
                    <th>Adverbios de modo</th>
                    <th>Glosa</th>
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
<xsl:otherwise>ESCRIBA LA  GLOSA</xsl:otherwise>
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
<xsl:otherwise>ESCRIBA LA  GLOSA</xsl:otherwise>
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
<xsl:text>Algunos ejemplos de frases </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
              </xsl:choose>
<xsl:text> con adverbios de modo que las modifican son:</xsl:text>
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
<xsl:text>Las frases </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
              </xsl:choose>
<xsl:if test="normalize-space(//pp/ppModifierDegree/@checked)='yes' or normalize-space(//pp/ppModifierOrdinal/@checked)='yes' or normalize-space(//pp/ppModifierManner/@checked)='yes'">
<xsl:text> también</xsl:text>
</xsl:if>
<xsl:text> se pueden modificar con los adverbios de lugar que se presentan </xsl:text>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='yes' and normalize-space(//pp/ppLocativePosAfter/@checked)='no' and normalize-space(//pp/ppLocativePosBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='no' and normalize-space(//pp/ppLocativePosAfter/@checked)='yes' and normalize-space(//pp/ppLocativePosBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='no' and normalize-space(//pp/ppLocativePosAfter/@checked)='no' and normalize-space(//pp/ppLocativePosBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='yes' and normalize-space(//pp/ppLocativePosAfter/@checked)='yes' and normalize-space(//pp/ppLocativePosBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='yes' and normalize-space(//pp/ppLocativePosAfter/@checked)='no' and normalize-space(//pp/ppLocativePosBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='no' and normalize-space(//pp/ppLocativePosAfter/@checked)='yes' and normalize-space(//pp/ppLocativePosBoth/@checked)='yes'">
<xsl:text>después o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='yes' and normalize-space(//pp/ppLocativePosAfter/@checked)='yes' and normalize-space(//pp/ppLocativePosBoth/@checked)='yes'">
<xsl:text>de cualquier lado o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosOther/@checked)='no'">
<xsl:text> de la frase completa.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='no' and normalize-space(//pp/ppLocativePosAfter/@checked)='no' and normalize-space(//pp/ppLocativePosBoth/@checked)='no' and normalize-space(//pp/ppLocativePosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//pp/ppLocativePosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//pp/ppLocativePosBefore/@checked)='yes' and normalize-space(//pp/ppLocativePosOther/@checked)='yes' or normalize-space(//pp/ppLocativePosAfter/@checked)='yes' and normalize-space(//pp/ppLocativePosOther/@checked)='yes' or normalize-space(//pp/ppLocativePosBoth/@checked)='yes' and normalize-space(//pp/ppLocativePosOther/@checked)='yes'">
<xsl:text> de la frase completa y también pueden presentarse ___</xsl:text>
<xsl:value-of select="//pp/ppLocativePosOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Los adverbios de lugar que pueden modificar a la frase </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicional</xsl:when>
              </xsl:choose>
<xsl:text> completa son:</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierLocative/@checked)='yes'">
<example num="xPP.PPModifiers.36">
<table border="1">
                 <tr>
                    <th>Adverbios de lugar</th>
                    <th>Glosa</th>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierLocative/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de frases </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
              </xsl:choose>
<xsl:text> con adverbios de lugar que las modifican son:</xsl:text>
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
<xsl:text>Las frases </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
              </xsl:choose>
<xsl:if test="normalize-space(//pp/ppModifierDegree/@checked)='yes' or normalize-space(//pp/ppModifierOrdinal/@checked)='yes' or normalize-space(//pp/ppModifierManner/@checked)='yes' or normalize-space(//pp/ppModifierLocative/@checked)='yes'">
<xsl:text> también</xsl:text>
</xsl:if>
<xsl:text> se pueden modificar con ___</xsl:text>
<xsl:value-of select="//pp/ppModifierOther" />
<xsl:text>.  Estos elementos que pueden modificar a la frase </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicional</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicional</xsl:when>
              </xsl:choose>
<xsl:text> completa son:</xsl:text>
</p>
</xsl:if>
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOther/@checked)='yes'">
<example num="xPP.PPModifiers.44">
<table border="1">
                 <tr>
                    <th>Modificadores</th>
                    <th>Glosa</th>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
           <xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOther/@checked)='yes'">
<p>
<xsl:text>Algunos ejemplos de frases </xsl:text>
<xsl:choose>
                 <xsl:when test="//pp/@pPos='before'">preposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='after'">posposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='both'">adposicionales</xsl:when>
                 <xsl:when test="//pp/@pPos='unknown'">adposicionales</xsl:when>
              </xsl:choose>
<xsl:text> con estos modificadores son:</xsl:text>
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
            <secTitle>Complementos que no son frases nominales</secTitle>
            <p contentType="ctComparativeIntro">
<xsl:text>Algunas  </xsl:text>
<xsl:choose>
                        <xsl:when test="//pp/@pPos='before'">preposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='after'">posposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='both'">adposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='unknown'">adposiciones</xsl:when>
                    </xsl:choose>
<xsl:text>  pueden colocarse solas sin un complemento por razón de movimiento de una partícula, por ejemplo en las oraciones </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Come [in] ‘Viene [adentro]’</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>John turned the light [on/off]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘Juan apaga la luz [conectada/desconectada]’</xsl:text>
</gloss>
<xsl:text>.  También, algunas lenguas permiten </xsl:text>
<xsl:choose>
                        <xsl:when test="//pp/@pPos='before'">preposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='after'">posposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='both'">adposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='unknown'">adposiciones</xsl:when>
                    </xsl:choose>
<xsl:text> dejar aisladas en preguntas cuando el complemento desplaza hacia la izquierda, como en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Whom did you give the book [to _]?</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘¿Quién usted dio el libro [a _ ]?’</xsl:text>
</gloss>
<xsl:text> (No se permite en español.)</xsl:text>
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
                        <xsl:when test="//pp/@alone='no'"> no se permite colocar </xsl:when>
                        <xsl:when test="//pp/@alone='yes'"> se permite colocar algunas </xsl:when>
                    </xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='before'">
                        <xsl:text>preposiciones</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='after'">
                        <xsl:text>posposiciones</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='unknown'">
                        <xsl:text>adposiciones</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='both'">
                        <xsl:text>adposiciones</xsl:text>
                    </xsl:if>
<xsl:text> solas sin un complemento.  </xsl:text>
<xsl:if test="normalize-space(//pp/@alone)='yes'">
                        <xsl:text>Algunos ejemplos en oraciones completas son:</xsl:text>
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
<xsl:text>La mayoría de las lenguas permiten adverbios de lugar como complementos de las </xsl:text>
<xsl:choose>
                        <xsl:when test="//pp/@pPos='before'">preposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='after'">posposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='both'">adposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='unknown'">adposiciones</xsl:when>
                    </xsl:choose>
<xsl:text>, por ejemplo </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>por allá</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>in here</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘aquí adentro’</xsl:text>
</gloss>
<xsl:text>.</xsl:text>
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
                        <xsl:when test="//pp/@locative='no'"> no se permiten</xsl:when>
                        <xsl:when test="//pp/@locative='yes'"> se permiten</xsl:when>
                    </xsl:choose>
<xsl:text> los adverbios de lugar como complementos de </xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='before'">
                        <xsl:text>preposiciones.</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='after'">
                        <xsl:text>posposiciones.</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='unknown'">
                        <xsl:text>adposiciones.</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='both'">
                        <xsl:text>adposiciones.</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@locative)='yes'">
                        <xsl:text>  Algunos ejemplos de adverbios de lugar como complementos son:</xsl:text>
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
<xsl:text>Las </xsl:text>
<xsl:choose>
                        <xsl:when test="//pp/@pPos='before'">preposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='after'">posposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='both'">adposiciones</xsl:when>
                        <xsl:when test="//pp/@pPos='unknown'">adposiciones</xsl:when>
                    </xsl:choose>
<xsl:text> de lugar forman una categoría especial porque en algunas lenguas pueden tener otra frase  </xsl:text>
<xsl:choose>
                        <xsl:when test="//pp/@pPos='before'">preposicional</xsl:when>
                        <xsl:when test="//pp/@pPos='after'">posposicional</xsl:when>
                        <xsl:when test="//pp/@pPos='both'">adposicional</xsl:when>
                        <xsl:when test="//pp/@pPos='unknown'">adposicional</xsl:when>
                    </xsl:choose>
<xsl:text> de lugar como complemento. Algunos ejemplos en inglés son: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>up [to the top]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘encima [al borde]’</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>around [behind the shed]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘alrededor [detrás del cobertizo]’</xsl:text>
</gloss>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>over [by the table]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘sobre [cerca de la mesa]’</xsl:text>
</gloss>
<xsl:text>.</xsl:text>
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
                        <xsl:when test="//pp/@ppComp='no'"> no hay </xsl:when>
                        <xsl:when test="//pp/@ppComp='yes'"> hay </xsl:when>
                    </xsl:choose>
<xsl:if test="normalize-space(//pp/@pPos)='before'">
                        <xsl:text>preposiciones</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='after'">
                        <xsl:text>posposiciones</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='unknown'">
                        <xsl:text>adposiciones</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='both'">
                        <xsl:text>adposiciones</xsl:text>
                    </xsl:if>
<xsl:text> de lugar que pueden tener otra frase </xsl:text>
<xsl:choose>
                        <xsl:when test="//pp/@pPos='before'">preposicional</xsl:when>
                        <xsl:when test="//pp/@pPos='after'">posposicional</xsl:when>
                        <xsl:when test="//pp/@pPos='both'">adposicional</xsl:when>
                        <xsl:when test="//pp/@pPos='unknown'">adposposicional</xsl:when>                 
                    </xsl:choose>
<xsl:text> de lugar como complemento.  </xsl:text>
<xsl:if test="normalize-space(//pp/@ppComp)='yes'">
                        <xsl:text>Algunos ejemplos son:</xsl:text>
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
<xsl:text>Palabras de tiempo como </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>before</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘antes’</xsl:text>
</gloss>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>after</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘después’</xsl:text>
</gloss>
<xsl:text> son preposiciones 
 de tiempo cuando llevan una frase nominal como complemento, por ejemplo en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>before you</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘antes de usted’</xsl:text>
</gloss>
<xsl:text> o </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>after that</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘después de esto’</xsl:text>
</gloss>
<xsl:text>.  También pueden llevar un gerundio como complemento, por ejemplo en </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>before [signing the contract]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘antes de [firmar el contrato]’</xsl:text>
</gloss>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>after [buying our new house]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘después de [comprar nuestra casa nueva]’</xsl:text>
</gloss>
<xsl:text>, puesto que los gerundios son un tipo especial de frase nominal.</xsl:text>
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
                        <xsl:when test="//pp/@tempComp='no'"> no hay </xsl:when>
                        <xsl:when test="//pp/@tempComp='yes'"> hay </xsl:when>
                    </xsl:choose>
<xsl:if test="normalize-space(//pp/@pPos)='before'">
                        <xsl:text>preposiciones</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='after'">
                        <xsl:text>posposiciones</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='unknown'">
                        <xsl:text>adposiciones</xsl:text>
                    </xsl:if>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//pp/@pPos)='both'">
                        <xsl:text>preposiciones and posposiciones</xsl:text>
                    </xsl:if>
<xsl:text> de tiempo que pueden tener una frase nominal o un gerundio como complemento.  </xsl:text>
<xsl:if test="normalize-space(//pp/@tempComp)='yes'">
                       <xsl:text>Algunos ejemplos de oraciones con </xsl:text>
                       <xsl:choose>
                          <xsl:when test="//pp/@pPos='before'">preposiciones</xsl:when>
                          <xsl:when test="//pp/@pPos='after'">posposiciones</xsl:when>
                          <xsl:when test="//pp/@pPos='both'">adposiciones</xsl:when>
                          <xsl:when test="//pp/@pPos='unknown'">adposiciones</xsl:when>
                       </xsl:choose>
<xsl:text> de tiempo con frases nominales o gerundios como complementos son:</xsl:text>
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
<xsl:text>Las mismas </xsl:text>
<xsl:choose>
                  <xsl:when test="//pp/@pPos='before'">preposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='after'">posposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='both'">adposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='unknown'">adposiciones</xsl:when>
               </xsl:choose>
<xsl:text> de tiempo pueden tener oraciones como complementos.  Cuando se usan así, las </xsl:text>
<xsl:choose>
                  <xsl:when test="//pp/@pPos='before'">preposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='after'">posposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='both'">adposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='unknown'">adposiciones</xsl:when>
               </xsl:choose>
<xsl:text> se consideran adverbios de tiempo, y la frase completa es una cláusula adverbial que normalmente modifica a la oración principal. Tales ejemplos se detallan en la sección </xsl:text>
<sectionRef sec="sAdvCl" />
<xsl:text>.</xsl:text>
</p>
</xsl:if>
            <xsl:if test="normalize-space(//pp/@tempComp)='yes'">
<p contentType="ctComparativeIntro">
<xsl:text>Las mismos </xsl:text>
<xsl:choose>
                  <xsl:when test="//pp/@pPos='before'">preposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='after'">posposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='both'">adposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='unknown'">adposiciones</xsl:when>
               </xsl:choose>
<xsl:text> de tiempo pueden tener oraciones como complementos, por ejemplo </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>before [the rain stops]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘antes de que [la lluvia cese]’</xsl:text>
</gloss>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>after [John returns home]</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘después de que [Juan volvió a casa]’</xsl:text>
</gloss>
<xsl:text>.  Cuando se usan así, las </xsl:text>
<xsl:choose>
                  <xsl:when test="//pp/@pPos='before'">preposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='after'">posposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='both'">adposiciones</xsl:when>
                  <xsl:when test="//pp/@pPos='unknown'">adposiciones</xsl:when>
               </xsl:choose>
<xsl:text> se consideran adverbios de tiempo, y la frase completa es una cláusula adverbial que normalmente modifica a la oración principal. Tales ejemplos se detallan en la sección </xsl:text>
<sectionRef sec="sAdvCl" />
<xsl:text>.</xsl:text>
</p>
</xsl:if>
         </section2>
    </section1>
   
      
      
      
      
      
   
   
   
        
    
    
        
    
    
        
    
    
        
    
    
        
    
    
        
    
    
        
    
   
      
      
      
   
   
        
    
    
        
    


   

   
      
   
   
      

   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
      
      
   
   
   
      
   
   
      
   
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
      
      
   
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
      
      
      
      
     
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
            
   
   
   

</xsl:template>
</xsl:stylesheet>
