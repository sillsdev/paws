<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="excl">
  <section1 id="sExcl">
     <secTitle>Los saludos, las interjecciones y las exclamaciones</secTitle>
    <p>
<xsl:text>En esta sección se consideran los varios tipos de locuciones comunes que no son oraciones completas: los saludos, las interjecciones y las exclamaciones se presentan en ese orden.</xsl:text>
</p>
<section2 id="sExclGreet">
    <secTitle>Saludos</secTitle>
   <p contentType="ctPracticalIntro">
<xsl:text>Los saludos consisten típicamente en una palabra o una frase específica, que puede estar seguida de un nombre o una frase nominal que describe a la persona o el animal que se saluda.  
      </xsl:text>
</p>
   <p contentType="ctComparativeIntro">
<xsl:text>Los saludos consisten típicamente en una palabra o una frase específica, que puede estar seguida de un nombre o una frase nominal que describe a la persona o el animal que se saluda.  
    Algunos son las oraciones completas o las preguntas completas, por ejemplo, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>¿Cómo está usted? </langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>¡Tenga un buen día!</langData>
<xsl:text> Las cuáles no necesitan ser tratadas por separado. </xsl:text>
</p>
   <p contentType="ctComparativeIntro">
<xsl:text>Algunos ejemplos de saludos en español son:  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>¡Hola!</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>¡Adiós!</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Hasta luego</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Buen día, señor</langData>
<xsl:text> y  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Buenas noches, ducle bebé</langData>
<xsl:text>.</xsl:text>
</p>
   
    <p>
<xsl:text>Algunos ejemplos de saludos en el </xsl:text>
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
            <example num="xExcl.ExclGreet.12">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//excl/greetExample" />
<xsl:with-param name="sExNumber">xExcl.ExclGreet.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</section2>
<section2 id="sExclIntj">
    <secTitle>Interjecciones</secTitle>
   <p contentType="ctPracticalIntro">
<xsl:text>Las interjecciones consisten típicamente en una palabra o una frase específica que se utilizan sola para expresar emociones, generalmente con signos de exclamación. Muchas de las palabras en interjecciones no se utilizan en ningún otro contexto. Sin embargo, los adjetivos regulares también se utilizan de esta manera.</xsl:text>
</p>
   <p contentType="ctComparativeIntro">
<xsl:text>Las interjecciones consisten típicamente en una palabra o una frase específica que se utilizan sola para expresar emociones, generalmente con signos de exclamación. Muchas de las palabras en interjecciones no se utilizan en ningún otro contexto. Sin embargo, los adjetivos regulares también se utilizan de esta manera.  Algunos ejemplos de interjecciones en español son: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>¡Ay!</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>¡Caramba!</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>¡Cuidado!</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>¡Jesús, María y José!</langData>
</p>
       
    <p>
<xsl:text>Algunos ejemplos de interjecciones en el </xsl:text>
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
            <example num="xExcl.ExclIntj.10">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//excl/intjExample" />
<xsl:with-param name="sExNumber">xExcl.ExclIntj.10</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
   <p>
<xsl:text>Las respuestas </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘Sí.’</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘No.’</langData>
<xsl:text> a las preguntas son similares a las interjecciones.  En el </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='es'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='es'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> se utilizan las palabras siguientes para expresar estas respuestas: </xsl:text>
</p>
<example num="xExcl.ExclIntj.14">
<table border="1">
                    <tr>
                        <th>Morfemas</th>
                        <th>Glosa</th>
                       <th>Significado</th>
                    </tr>
                    <tr>
<xsl:for-each select="//excl/yesExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
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
<xsl:for-each select="//excl/yesExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//excl/yesExample/form[position() &gt; 1]">
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
                    <tr>
<xsl:for-each select="//excl/noExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
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
<xsl:for-each select="//excl/noExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//excl/noExample/form[position() &gt; 1]">
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
</section2>
<section2 id="sExclExcl">
    <secTitle>Exclamaciones</secTitle>
   <p contentType="ctPracticalIntro">
<xsl:text>Las exclamaciones consisten típicamente en una palabra específica, seguida de una frase adjetival y puntuada generalmente con signos de exclamación.</xsl:text>
</p>
   <p contentType="ctComparativeIntro">
<xsl:text>Las exclamaciones consisten típicamente en una palabra específica, como </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>qué</langData>
<xsl:text> o </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>cómo</langData>
<xsl:text> en español, seguida de una frase adjetival y puntuada generalmente con signos de exclamación. Algunos ejemplos en español son:  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>¡Qué tremendo para usted!</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>¡Qué agradable!</langData>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>¡Cómo es maravilloso que su familia podría venir!</langData>
</p>
   
    <xsl:if test="normalize-space(//excl/@exclM)='no'">
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
<xsl:text> no hay ninguna palabra especial que expresa exclamaciones, así que no son diferentes de las interjecciones que consisten en adjetivos como en la sección anterior.</xsl:text>
</p>
</xsl:if>
   <xsl:if test="normalize-space(//excl/@exclM)='yes'">
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
<xsl:text> hay una o más palabras especiales que expresan exclamaciones y que se presentan </xsl:text>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='yes' and normalize-space(//excl/exclMAfter/@checked)='no' and normalize-space(//excl/exclMBoth/@checked)='no'">
<xsl:text>antes</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='no' and normalize-space(//excl/exclMAfter/@checked)='yes' and normalize-space(//excl/exclMBoth/@checked)='no'">
<xsl:text>después</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='no' and normalize-space(//excl/exclMAfter/@checked)='no' and normalize-space(//excl/exclMBoth/@checked)='yes'">
<xsl:text>en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='yes' and normalize-space(//excl/exclMAfter/@checked)='yes' and normalize-space(//excl/exclMBoth/@checked)='no'">
<xsl:text>de cualquier lado</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='yes' and normalize-space(//excl/exclMAfter/@checked)='no' and normalize-space(//excl/exclMBoth/@checked)='yes'">
<xsl:text>antes o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='no' and normalize-space(//excl/exclMAfter/@checked)='yes' and normalize-space(//excl/exclMBoth/@checked)='yes'">
<xsl:text>después o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='yes' and normalize-space(//excl/exclMAfter/@checked)='yes' and normalize-space(//excl/exclMBoth/@checked)='yes'">
<xsl:text>de cualquier lado o en ambos lados</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMOther/@checked)='no'">
<xsl:text> de la frase adjetival.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='no' and normalize-space(//excl/exclMAfter/@checked)='no' and normalize-space(//excl/exclMBoth/@checked)='no' and normalize-space(//qp/NPDegreePosOther/@checked)='yes'">
<xsl:text>___</xsl:text>
<xsl:value-of select="//excl/exclMOther" />
<xsl:text>.    </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//excl/exclMBefore/@checked)='yes' and normalize-space(//excl/exclMOther/@checked)='yes' or normalize-space(//excl/exclMAfter/@checked)='yes' and normalize-space(//excl/exclMOther/@checked)='yes' or normalize-space(//excl/exclMBoth/@checked)='yes' and normalize-space(//excl/exclMOther/@checked)='yes'">
<xsl:text> de la frase adjetival y también pueden presentarse ___</xsl:text>
<xsl:value-of select="//excl/exclMOther" />
<xsl:text>.  </xsl:text>
</xsl:if>
<xsl:text>Estas palabras son:</xsl:text>
</p>
</xsl:if>
<xsl:if test="normalize-space(//excl/@exclM)='yes'">
<example num="xExcl.ExclExcl.12">
<table border="1">
<tr>
    <th>Indicadores de exclamación</th>
    <th>Glosa</th>
</tr>
    <tr>
<xsl:for-each select="//excl/exclMExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
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
<xsl:for-each select="//excl/exclMExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//excl/exclMExample/form[position() &gt; 1]">
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
<xsl:text>Algunos ejemplos de exclamaciones en el </xsl:text>
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
   <example num="xExcl.ExclExcl.16">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//excl/exclExample" />
<xsl:with-param name="sExNumber">xExcl.ExclExcl.16</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</section2>
  </section1>
   
      
   
   
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
      
      
      
      
   
   
      
   
   
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
   
</xsl:template>
</xsl:stylesheet>
