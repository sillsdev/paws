<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="v">
	<section1 id="sV">
		<secTitle>Los verbos</secTitle>
                  <p>
<xsl:text>Los verbos expresan acciones, estados o emociones. Primero se tratan la flexión verbal y la concordancia de los verbos, y luego se presentan los paradigmas de algunos verbos. 
			   Las condiciones de cuando un sujeto es tácito se analizan en la sección </xsl:text>
<sectionRef sec="sIPProDrop" />
<xsl:text>, y los auxiliares se tratan en la sección 
			</xsl:text>
<sectionRef sec="sIPAux" />
<xsl:text>, y finalmente los verbos compuestos.  Los ejemplos de los verbos usados en oraciones básicas se encuentran en la sección 
			</xsl:text>
<sectionRef sec="sIP" />
<xsl:text>.  Las construcciones más complejas que incluyen verbos se tratan en las secciones </xsl:text>
<sectionRef sec="sFocus" />
<xsl:text> - </xsl:text>
<sectionRef sec="sRelCl" />
<xsl:text>.</xsl:text>
</p>
		<section2 id="sIPInfl">
			<secTitle>Flexión verbal</secTitle>
			<p>
<xsl:text>Los verbos y los auxiliares generalmente tienen flexión, es decir,  experimentan cambios en su morfología para expresar tiempo, aspecto o modo. A estos cambios se les conoce como ‘accidentes’. En la mayoría de los casos, estos accidentes se agregan como afijos, pero también pueden ser parte de verbos irregulares.</xsl:text>
</p>
			<p>
<xsl:text>Los siguientes accidentes de flexión se indican en los verbos y/o los auxiliares en el </xsl:text>
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
			<example num="xV.IPInfl.8">
<table border="1">
					<tr>
					   <th>Accidente</th>
					   <th>Significado</th>
					   <th>Morfemas</th>
						<th>Glosa</th>
					</tr>
					<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
<td>
					      <xsl:text>tiempo</xsl:text>
					   </td>
<td>
					      <xsl:text>presente</xsl:text>
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
							<xsl:text>tiempo</xsl:text>
						</td>
<td>
							<xsl:text>pasado</xsl:text>
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
							<xsl:text>tiempo</xsl:text>
						</td>
<td>
							<xsl:text>futuro</xsl:text>
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
				         <xsl:text>tiempo</xsl:text>
				      </td>
<td>
				         <xsl:text>no pasado</xsl:text>
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
				         <xsl:text>tiempo</xsl:text>
				      </td>
<td>
				         <xsl:text>no futuro</xsl:text>
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
							<xsl:text>tiempo</xsl:text>
						</td>
<td>
							<xsl:text>ESCRIBA LA GLOSA</xsl:text>
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
				         <xsl:text>aspecto</xsl:text>
				      </td>
<td>
				         <xsl:text>completivo</xsl:text>
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
				         <xsl:text>aspecto</xsl:text>
				      </td>
<td>
				         <xsl:text>contemplativo</xsl:text>
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
				         <xsl:text>aspecto</xsl:text>
				      </td>
<td>
				         <xsl:text>contrariamente al hecho</xsl:text>
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
							<xsl:text>aspecto</xsl:text>
						</td>
<td>
							<xsl:text>continuativo</xsl:text>
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
							<xsl:text>aspecto</xsl:text>
						</td>
<td>
							<xsl:text>habitual</xsl:text>
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
							<xsl:text>aspecto</xsl:text>
						</td>
<td>
							<xsl:text>imperfecto</xsl:text>
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
				         <xsl:text>aspecto</xsl:text>
				      </td>
<td>
				         <xsl:text>imperfectivo</xsl:text>
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
							<xsl:text>aspecto</xsl:text>
						</td>
<td>
							<xsl:text>incompletivo</xsl:text>
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
				         <xsl:text>aspecto</xsl:text>
				      </td>
<td>
				         <xsl:text>perfecto</xsl:text>
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
							<xsl:text>aspecto</xsl:text>
						</td>
<td>
							<xsl:text>perfectivo</xsl:text>
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
							<xsl:text>aspecto</xsl:text>
						</td>
<td>
							<xsl:text>potencial</xsl:text>
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
							<xsl:text>aspecto</xsl:text>
						</td>
<td>
							<xsl:text>progresivo</xsl:text>
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
							<xsl:text>aspecto</xsl:text>
						</td>
<td>
							<xsl:text>propósito</xsl:text>
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
							<xsl:text>aspecto</xsl:text>
						</td>
<td>
							<xsl:text>estativo</xsl:text>
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
				         <xsl:text>aspecto</xsl:text>
				      </td>
<td>
				         <xsl:text>irreal, no realidad</xsl:text>
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
				   			<xsl:text>aspecto</xsl:text>
				   		</td>
<td>
				   			<xsl:text>ESCRIBA LA GLOSA</xsl:text>
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
							<xsl:text>modo</xsl:text>
						</td>
<td>
							<xsl:text>declarativo</xsl:text>
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
				         <xsl:text>modo</xsl:text>
				      </td>
<td>
				         <xsl:text>indicativo</xsl:text>
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
				         <xsl:text>modo</xsl:text>
				      </td>
<td>
				         <xsl:text>realis</xsl:text>
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
							<xsl:text>modo</xsl:text>
						</td>
<td>
							<xsl:text>imperativo</xsl:text>
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
							<xsl:text>modo</xsl:text>
						</td>
<td>
							<xsl:text>interrogativo</xsl:text>
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
				         <xsl:text>modo</xsl:text>
				      </td>
<td>
				         <xsl:text>condicional</xsl:text>
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
				         <xsl:text>modo</xsl:text>
				      </td>
<td>
				         <xsl:text>subjuntivo</xsl:text>
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
							<xsl:text>modo</xsl:text>
						</td>
<td>
							<xsl:text>irrealis</xsl:text>
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
							<xsl:text>modo</xsl:text>
						</td>
<td>
							<xsl:text>ESCRIBA LA GLOSA</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>testigo</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>no testigo</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>de primera mano</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>de segunda mano</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>de tercera mano</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>visible</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>auditivo</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>olfativo</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>inferencial</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>reportativo</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>rumores</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>cuotativo</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>asumido</xsl:text>
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
<xsl:text>evidencialidad</xsl:text>
</td>
<td>
<xsl:text>ESCRIBA LA GLOSA</xsl:text>
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
				         <xsl:text>otro</xsl:text>
				      </td>
<td>
				         <xsl:text>finito</xsl:text>
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
				         <xsl:text>otro</xsl:text>
				      </td>
<td>
				         <xsl:text>no finito</xsl:text>
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
				         <xsl:text>otro</xsl:text>
				      </td>
<td>
				         <xsl:text>gerundio</xsl:text>
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
				         <xsl:text>otro</xsl:text>
				      </td>
<td>
				         <xsl:text>participio</xsl:text>
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
				         <xsl:text>voz</xsl:text>
				      </td>
<td>
				         <xsl:text>antipasiva</xsl:text>
				      </td>
<xsl:for-each select="//ip/apiveVoice/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
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
<xsl:for-each select="//ip/apiveVoice/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//ip/apiveVoice/form[position() &gt; 1]">
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
							<xsl:text>voz</xsl:text>
						</td>
<td>
							<xsl:text>aplicativa</xsl:text>
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
				         <xsl:text>voz</xsl:text>
				      </td>
<td>
				         <xsl:text>causativa</xsl:text>
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
							<xsl:text>voz</xsl:text>
						</td>
<td>
							<xsl:text>pasiva</xsl:text>
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
				         <xsl:text>voz</xsl:text>
				      </td>
<td>
				         <xsl:text>activa</xsl:text>
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
				         <xsl:text>voz</xsl:text>
				      </td>
<td>
				         <xsl:text>de dativo</xsl:text>
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
				         <xsl:text>voz</xsl:text>
				      </td>
<td>
				         <xsl:text>de meta</xsl:text>
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
				         <xsl:text>voz</xsl:text>
				      </td>
<td>
				         <xsl:text>de instrumento</xsl:text>
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
				         <xsl:text>voz</xsl:text>
				      </td>
<td>
				         <xsl:text>de locativo</xsl:text>
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
				         <xsl:text>voz</xsl:text>
				      </td>
<td>
				         <xsl:text>de objeto</xsl:text>
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
							<xsl:text>voz</xsl:text>
						</td>
<td>
							<xsl:text>ESCRIBA LA GLOSA</xsl:text>
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
			<secTitle>Concordancia verbal</secTitle>
		   <p>
<xsl:text>Los verbos y los auxiliares también pueden sufrir cambios para expresar concordancia con el sujeto, y a veces también con el objeto directo. La mayoría de los cambios o accidentes se agregan como afijos o clíticos pronominales que pueden unirse con el verbo. </xsl:text>
<xsl:if test="normalize-space(//typology/@classifier)!='no'">
<xsl:text>La concordancia de clase se explica en la sección </xsl:text>
<sectionRef sec="sClassifiers" />
<xsl:text>.</xsl:text>
</xsl:if>
</p>
			<p>
<xsl:text>Las siguientes accidentes de concordancia se indican en verbos y/o auxiliares en el </xsl:text>
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
			<example num="xV.IPAgr.8">
<table border="1">
					<tr>
					   <th>Accidente</th>
					   <th>Significado</th>
					   <th>Morfemas</th>
						<th>Glosa</th>
					</tr>
					<xsl:if test="normalize-space(//ip/ipAgrFeatFirstSubject/@checked)='yes'">
<tr>
<td>
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona sujeto</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona objeto</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona ergativo</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona absolutivo</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona exclusivo sujeto</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona exclusivo objeto</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona exclusivo ergativo</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona exclusivo absolutivo</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona inclusivo sujeto</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona inclusivo objeto</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona inclusivo ergativo</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>primera persona inclusivo absolutivo</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>segunda persona sujeto</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>segunda persona objeto</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>segunda persona ergativo</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>segunda persona absolutivo</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>tercera persona sujeto</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>tercera persona objeto</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>tercera persona ergativo</xsl:text>
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
							<xsl:text>persona</xsl:text>
						</td>
<td>
						   <xsl:text>tercera persona absolutivo</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>sujeto singular</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>objeto singular</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>ergativo singular</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>absolutivo singular</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>sujeto dual</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>objeto dual</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>ergativo dual</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>absolutivo dual</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>sujeto plural</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>objeto plural</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>ergativo plural</xsl:text>
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
						   <xsl:text>número</xsl:text>
						</td>
<td>
							<xsl:text>absolutivo plural</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>sujeto masculino</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>objeto masculino</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>ergativo masculino</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>absolutivo masculino</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>sujeto feminino</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>objeto feminino</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>ergativo feminino</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>absolutivo feminino</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>sujeto neutral</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>objeto neutral</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>ergativo neutral</xsl:text>
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
						   <xsl:text>género</xsl:text>
						</td>
<td>
							<xsl:text>absolutivo neutral</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>sujeto animado</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>objeto animado</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>ergativo animado</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>absolutivo animado</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>sujeto inanimado</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>objeto inanimado</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>ergativo inanimado</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>absolutivo inanimado</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>sujeto humano</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>objeto humano</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>ergativo humano</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>absolutivo humano</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>sujeto no humano</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>objeto no humano</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>ergativo no humano</xsl:text>
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
							<xsl:text>animacidad</xsl:text>
						</td>
<td>
							<xsl:text>absolutivo no humano</xsl:text>
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
		</section2>
	   	   <section2 id="sVerbParadigms">
	      <secTitle>Paradigmas de verbos</secTitle>
	   	      <p>
<xsl:text>Los paradigmas muestran algunos de los cambios en algunos verbos específicos  cuando se añaden los morfemas para flexión y concordancia.  Algunos verbos son regulares y otros son irregulares.</xsl:text>
</p>
	  <section3 id="sVerbParadigmsRegular">
	     <secTitle>Paradigmas de algunos verbos regulares</secTitle>
	  	<p>
<xsl:text>Aquí se presentan los paradigmas de cuatro verbos regulares:   </xsl:text>
<object type="tComment"> Usted tiene que escibir la forma en cada celda aquí.  Puede cambiar uno o más de los verbos si estos que se incluyen no son regulares en su lengua.  
	  		<xsl:choose>
	  			<xsl:when test="//pron/@dependentPron='yes'"> Puede eliminar algunas columnas si el cuadro está muy grande en el documento exportado como pdf.</xsl:when>
	  			<xsl:when test="//pron/@dependentPron='no'"> Puesto que su lengua no hace cambios en el verbo para sujetos de diferentes personas, los paradigmas son muy simples. Quizá quiera añadir algunas columnas para los cambios que están marcados en los verbos, tales como los modos o sujetos plurales.</xsl:when>
	  		</xsl:choose>
</object>
</p>
	  	<xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.6">
<table border="1">
	  			<caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘hablar’</langData>
</caption>
	  			<tr>
	  				<th>Tiempo / Aspecto</th>
	  				<th>Forma de verbo</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
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
</tablenumbered>
</xsl:if>
	  	
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.8">
<table border="1">
	           <caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘hablar’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusiva</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusiva</th>
</xsl:if>
	              <th>Segunda</th>
	              <th>Tercera</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
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
<xsl:text>Paradigma del verbo que significa  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘hablar’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera Sg</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>Primera Pl</th>
</xsl:if>
	              <th>Segunda Sg</th>
	              <th>Segunda Pl</th>
	              <th>Tercera Sg</th>
	              <th>Tercera Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
</tablenumbered>
</xsl:if>

	  	<xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.12">
<table border="1">
	  			<caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘comer’</langData>
</caption>
	  			<tr>
	  				<th>Tiempo / Aspecto</th>
	  				<th>Forma de verbo</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
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
</tablenumbered>
</xsl:if>
	  	
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.14">
<table border="1">
	           <caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘comer’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusiva</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusiva</th>
</xsl:if>
	              <th>Segunda</th>
	              <th>Tercera</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
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
<xsl:text>Paradigma del verbo que significa  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘comer’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera Sg</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>Primera Pl</th>
</xsl:if>
	              <th>Segunda Sg</th>
	              <th>Segunda Pl</th>
	              <th>Tercera Sg</th>
	              <th>Tercera Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
</tablenumbered>
</xsl:if>
	  	<xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.18">
<table border="1">
	  			<caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘vivir’</langData>
</caption>
	  			<tr>
	  				<th>Tiempo / Aspecto</th>
	  				<th>Forma de verbo</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
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
</tablenumbered>
</xsl:if>
	  	
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.20">
<table border="1">
	           <caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘vivir’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusiva</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusiva</th>
</xsl:if>
	              <th>Segunda</th>
	              <th>Tercera</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
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
<xsl:text>Paradigma del verbo que significa  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘vivir’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera Sg</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>Primera Pl</th>
</xsl:if>
	              <th>Segunda Sg</th>
	              <th>Segunda Pl</th>
	              <th>Tercera Sg</th>
	              <th>Tercera Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
</tablenumbered>
</xsl:if>
	  	<xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.24">
<table border="1">
	  			<caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘ver’</langData>
</caption>
	  			<tr>
	  				<th>Tiempo / Aspecto</th>
	  				<th>Forma de verbo</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
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
</tablenumbered>
</xsl:if>
	  	
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsRegular.26">
<table border="1">
	           <caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘ver’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusiva</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusiva</th>
</xsl:if>
	              <th>Segunda</th>
	              <th>Tercera</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
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
<xsl:text>Paradigma del verbo que significa  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘ver’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera Sg</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>Primera Pl</th>
</xsl:if>
	              <th>Segunda Sg</th>
	              <th>Segunda Pl</th>
	              <th>Tercera Sg</th>
	              <th>Tercera Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
</tablenumbered>
</xsl:if>

	  </section3>
	   	      <section3 id="sVerbParadigmsIrregular">
	   	         <secTitle>Paradigmas de algunos verbos irregulares</secTitle>
	   	      	<p>
<xsl:text>A continuación los paradigmas de tres verbos irregulares:  </xsl:text>
<object type="tComment"> Usted tiene que escribir la forma en cada celda aquí.  Puede cambiar uno o más de los verbos si los estos no se usan o no son irregulares en su lengua. Nótese que ‘venir’ puede ser ‘ir a lugar conocido’ e ‘ir’ puede ser ‘ir a lugar no conocido’ o algo similar en su lengua.  
	   	      		<xsl:choose>
	   	      			<xsl:when test="//pron/@dependentPron='yes'"> Puede eliminar algunas columnas si el cuadro está muy grande en el documento exportado como pdf.</xsl:when>
	   	      			<xsl:when test="//pron/@dependentPron='no'"> Puesto que su lengua no hace cambios en el verbo para sujetos de diferentes personas, los paradigmas son muy simples. Quizá quiera añadir algunas columnas para los cambios que están marcados en los verbos, tales como los modos o sujetos plurales.</xsl:when>
	   	      		</xsl:choose>
</object>
</p>
	   	         
	  	<xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.6">
<table border="1">
	  			<caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘ser/estar’</langData>
</caption>
	  			<tr>
	  				<th>Tiempo / Aspecto</th>
	  				<th>Forma de verbo</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
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
</tablenumbered>
</xsl:if>
	  	
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.8">
<table border="1">
	           <caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘ser/estar’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusiva</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusiva</th>
</xsl:if>
	              <th>Segunda</th>
	              <th>Tercera</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
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
<xsl:text>Paradigma del verbo que significa  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘ser/estar’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera Sg</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>Primera Pl</th>
</xsl:if>
	              <th>Segunda Sg</th>
	              <th>Segunda Pl</th>
	              <th>Tercera Sg</th>
	              <th>Tercera Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
</tablenumbered>
</xsl:if>
	  	<xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.12">
<table border="1">
	  			<caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘venir’</langData>
</caption>
	  			<tr>
	  				<th>Tiempo / Aspecto</th>
	  				<th>Forma de verbo</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
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
</tablenumbered>
</xsl:if>
	  	
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.14">
<table border="1">
	           <caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘venir’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusiva</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusiva</th>
</xsl:if>
	              <th>Segunda</th>
	              <th>Tercera</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
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
<xsl:text>Paradigma del verbo que significa  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘venir’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera Sg</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>Primera Pl</th>
</xsl:if>
	              <th>Segunda Sg</th>
	              <th>Segunda Pl</th>
	              <th>Tercera Sg</th>
	              <th>Tercera Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
</tablenumbered>
</xsl:if>
	  	<xsl:if test="normalize-space(//pron/@dependentPron)='no'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.18">
<table border="1">
	  			<caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘ir’</langData>
</caption>
	  			<tr>
	  				<th>Tiempo / Aspecto</th>
	  				<th>Forma de verbo</th>
	  			</tr>	
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	  				<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	  			</tr>
</xsl:if>
	  			<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	  				<td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
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
</tablenumbered>
</xsl:if>
	  	
	  	<xsl:if test="normalize-space(//pron/@pronounNumber)='no' and normalize-space(//pron/@dependentPron)='yes'">
<tablenumbered id="ntV.VerbParadigms.VerbParadigmsIrregular.20">
<table border="1">
	           <caption>
<xsl:text>Paradigma del verbo que significa </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘ir’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Exclusiva</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Inclusiva</th>
</xsl:if>
	              <th>Segunda</th>
	              <th>Tercera</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	           </tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro aspecto</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        	</tr>
</xsl:if>
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
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
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
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
<xsl:text>Paradigma del verbo que significa  </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>‘ir’</langData>
</caption>
	           <tr>
	              <th>Sujeto</th>
	              <th>Primera Sg</th>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Excl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<th>Primera Incl</th>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
<th>Primera Pl</th>
</xsl:if>
	              <th>Segunda Sg</th>
	              <th>Segunda Pl</th>
	              <th>Tercera Sg</th>
	              <th>Tercera Pl</th>
	           </tr>	
	           <xsl:if test="normalize-space(//ip/ipInflFeatPresent/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Presente</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonPast/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No pasado</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatNonFuture/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No futuro</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherTense/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatCompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Completivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContemplative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contemplativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContinuative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Continuativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatContrafactual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Contrario de hecho</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatHabitual/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Habitual</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatImperfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Imperfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatIncompletive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Incompletivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfect/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfecto</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPerfective/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Perfectivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatPotential/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Potencial</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatProgressive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Progresivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatPurposive/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Propósito</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatStative/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Estativo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	           <xsl:if test="normalize-space(//ip/ipInflFeatUnreal/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>No realidad</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipInflFeatOtherAspect/@checked)='yes'">
<tr>
	        		<td align="left" rowspan="1">
<xsl:text>Otro tiempo</xsl:text>
</td>
	        		<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	        		<xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
	        	<xsl:if test="normalize-space(//ip/ipinflFeatSubjunctive/@checked)='yes'">
<tr>
	              <td align="left" rowspan="1">
<xsl:text>Subjuntivo</xsl:text>
</td>
	              <td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='yes'">
<td align="left">
<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>FORMA</langData>
</td>
</xsl:if>
	              <xsl:if test="normalize-space(//pron/@pronounExcl)='no'">
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
</tablenumbered>
</xsl:if>

	   	         </section3>
	   	      </section2>
	   
		<section2 id="sIPProDrop">
		   <secTitle>Los sujetos tácitos</secTitle>
		   <p contentType="ctPracticalIntro">
<xsl:text>
		         En algunas lenguas, un sujeto, o a veces un objeto directo, puede ser ‘tacito’, es decir, no tiene que estar explícito o presente en su posición sintáctica normal. En otras lenguas, por lo menos algunos de los pronombres son clíticos que se pueden unir al verbo. Cuando esto sucede, no hay pronombre o frase nominal en la posición del sujeto, por lo que la oración se ve igual que en una lengua que verdaderamente permite los sujetos tácitos.</xsl:text>
</p>
		   <p contentType="ctComparativeIntro">
<xsl:text>En algunas lenguas, un sujeto, o a veces un objeto directo, puede ser ‘tacito’, es decir, no tiene que estar explícito o presente en su posición  sintáctica normal.  Por ejemplo, en español la manera normal de decir el ejemplo en inglés </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I buy a book</langData>
<xsl:text> es </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Compro un libro</langData>
<xsl:text> en vez de algo con el pronombre sujeto independiente incluido: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Yo compro un libro</langData>
<xsl:text>.  Esto no se permite en inglés, con excepción de imperativos. (El sujeto en complementos subordinados no finitos se tratan en la sección </xsl:text>
<sectionRef sec="sComp" />
<xsl:text>.) </xsl:text>
</p>
		   <p contentType="ctComparativeIntro">
<xsl:text>Algunas lenguas no en realidad son lenguas que permiten los sujetos tácitos, pero por lo menos algunos de los pronombres son clíticos que se pueden unir al verbo. Cuando esto sucede, no hay pronombre o frase nominal en la posición del sujeto, por lo que la oración se ve igual que en una lengua que verdaderamente permite los sujetos tácitos.</xsl:text>
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
<xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/proDropImp/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no'">
<xsl:text>se permite el sujeto tácito en cualquier tipo de oración. </xsl:text>
		         <xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
		            <xsl:text>  Un objeto directo tácito </xsl:text>
		            <xsl:choose>
		               <xsl:when test="//ip/@proDropObject='no'">no</xsl:when>
		               <xsl:when test="//ip/@proDropObject='yes'">también</xsl:when>
		            </xsl:choose>
		            <xsl:text> se permite. </xsl:text>
		         </xsl:if>
		      </xsl:if>
<xsl:if test="normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropImp/@checked)='no'">
<xsl:text>el sujeto puede parecer como que no está presente debido a los pronombres dependientes (clíticos pronominales) que se unen al verbo, pero en realidad no es una lengua que permite un sujeto tácito.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/proDropImp/@checked)='no'">
<xsl:text>se permite el sujeto tácito en cualquier tipo de oración y también hay pronombres dependientes (clíticos pronominales) que se unen al verbo.  </xsl:text>
		         <xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
		            <xsl:text>  Un objeto directo tácito </xsl:text>
		            <xsl:choose>
		               <xsl:when test="//ip/@proDropObject='no'">no</xsl:when>
		               <xsl:when test="//ip/@proDropObject='yes'">también</xsl:when>
		            </xsl:choose>
		            <xsl:text> se permite. </xsl:text>
		         </xsl:if>
		      </xsl:if>
<xsl:if test="normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropOther/@checked)='no'">
<xsl:text>no se permite un sujeto tácito.  El sujeto debe ser explícito excepto en los imperativos.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/proDropClitic/@checked)='no'">
<xsl:text>se permite el sujeto tácito en cualquier tipo de oración, incluyendo en los imperativos. </xsl:text>
		         <xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
		            <xsl:text>  Un objeto directo tácito </xsl:text>
		            <xsl:choose>
		               <xsl:when test="//ip/@proDropObject='no'">no</xsl:when>
		               <xsl:when test="//ip/@proDropObject='yes'">también</xsl:when>
		            </xsl:choose>
		            <xsl:text> se permite. </xsl:text>
		         </xsl:if>
		      </xsl:if>
<xsl:if test="normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>el sujeto puede parecer como que no está presente debido a los pronombres dependientes (clíticos pronominales) que se unen al verbo, pero en realidad no es una lengua que permite un sujeto tácito.  El sujeto puede ser tácito en los imperativos.  </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>se permite el sujeto tácito en cualquier tipo de oración, incluyendo en los imperativos, y también hay pronombres dependientes (clíticos pronominales) que se unen al verbo.  </xsl:text>
		         <xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
		            <xsl:text>  Un objeto directo tácito </xsl:text>
		            <xsl:choose>
		               <xsl:when test="//ip/@proDropObject='no'">no</xsl:when>
		               <xsl:when test="//ip/@proDropObject='yes'">también</xsl:when>
		            </xsl:choose>
		            <xsl:text> se permite. </xsl:text>
		         </xsl:if>
		      </xsl:if>
<xsl:if test="normalize-space(//ip/proDropNone/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropOther/@checked)='no' and normalize-space(//ip/proDropImp/@checked)='no'">
<xsl:text>no se permite un sujeto tácito.  El sujeto debe ser explícito aun en los imperativos.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropOther/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropImp/@checked)='no'">
<xsl:text>el sujeto tácito solamente se permite en ___</xsl:text>
<xsl:value-of select="//ip/proDropOther" />
<xsl:text>.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropOther/@checked)='yes' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>el sujeto tácito se permite en  ___</xsl:text>
<xsl:value-of select="//ip/proDropOther" />
<xsl:text> y también en los imperativos.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropOther/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='yes' or normalize-space(//ip/proDropOther/@checked)='yes' and normalize-space(//ip/proDropClitic/@checked)='yes'">
<xsl:text>El sujeto tácito también se permite en ___</xsl:text>
<xsl:value-of select="//ip/proDropOther" />
<xsl:text>.</xsl:text>
</xsl:if>
</p>
		   <xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
<p>
<xsl:text>  Algunos ejemplos que muestran el sujeto tácito son:</xsl:text>
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
<xsl:text>  Algunos ejemplos en que parece como el sujeto es tácito porque hay pronombres clíticos unidos a los verbos son:</xsl:text>
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
<xsl:text>  Algunos ejemplos de sujetos tácitos como se permite en el </xsl:text>
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
<xsl:text>Véase la sección </xsl:text>
<sectionRef sec="sIPImp" />
<xsl:text> para ejemplos de los imperativos.</xsl:text>
</p>
		   
		</section2>
		<section2 id="sIPAux">
			<secTitle>Los auxiliares</secTitle>
		   <p>
<xsl:text>Hay varias clases de elementos auxiliares que incluyen palabras auxiliares, así como el indicador de no finito, de movimiento y otros tipos.</xsl:text>
</p>
		   
		   <section3 id="sIPAuxPositive">
		      <secTitle>Palabras auxiliares</secTitle>
		      <p contentType="ctPracticalIntro">
<xsl:text>
		         Los auxiliares que se escriben como palabras independientes expresan algunos tipos de flexión verbal.</xsl:text>
</p>
		      <p contentType="ctComparativeIntro">
<xsl:text>Algunas lenguas tienen elementos auxiliares que son palabras independientes, y algunos pueden tener más de un elemento auxiliar con el verbo principal. Algunos ejemplos de las oraciones transitivas en inglés son: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The boy will hit the ball</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘El muchacho golpeará el beísbol’</xsl:text>
</gloss>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The boy might have hit the ball</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘El muchacho pudo haber golpeado el beísbol’</xsl:text>
</gloss>
<xsl:text> y </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The boy might have been hitting the ball</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘El muchacho pudo habiendo golpeado el beísbol’</xsl:text>
</gloss>
<xsl:text>.  En español, estos son expresados principalmente por los cambios del tiempo y del aspecto en el verbo.</xsl:text>
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
					<xsl:when test="//ip/@aux='no'"> no hay </xsl:when>
					<xsl:when test="//ip/@aux='yes'"> hay algunos </xsl:when>
				</xsl:choose>
<xsl:text>auxiliares que se escriben como palabras independientes.  </xsl:text>
<xsl:if test="normalize-space(//ip/@aux)='yes'">
					<xsl:text>Un auxiliar es </xsl:text>
					<xsl:choose>
						<xsl:when test="//ip/@auxRequired='no'">opcional</xsl:when>
						<xsl:when test="//ip/@auxRequired='no'">requerido</xsl:when>
					</xsl:choose>
					<xsl:text> y  </xsl:text>
					<xsl:choose>
						<xsl:when test="//ip/@auxMany='no'">solamente uno puede presentarse</xsl:when>
						<xsl:when test="//ip/@auxMany='yes'">se puede presentar más de uno</xsl:when>
					</xsl:choose>
					<xsl:text> en una sola cláusula. </xsl:text>
					<xsl:if test="normalize-space(//typology/@wordOrder)='VSO'">
						<xsl:text> Después de un auxiliar, el orden normal VSO </xsl:text>
						<xsl:choose>
						   <xsl:when test="//ip/@auxOrder='yes'">se mantiene. El orden sería Aux V S O.</xsl:when>
						   <xsl:when test="//ip/@auxOrder='no'">puede cambiar así que el sujeto se presenta directamente después del auxiliar y antes del verbo. El orden en estas cláusulas sería Aux S V O.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
					<xsl:if test="normalize-space(//typology/@wordOrder)='OSV'">
						<xsl:text> Antes de un auxiliar, el orden normal OSV </xsl:text>
						<xsl:choose>
						   <xsl:when test="//ip/@auxOrder='yes'">se mantiene. El orden sería O S V Aux.</xsl:when>
						   <xsl:when test="//ip/@auxOrder='no'">puede cambiar así que el sujeto se presenta directamente después del verbo y antes del auxiliar. El orden en estas cláusulas sería O V S Aux.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
				</xsl:if>
</p>
			<xsl:if test="normalize-space(//ip/@aux)='yes'">
<p>
<xsl:text>Los auxiliares en el </xsl:text>
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
			<xsl:if test="normalize-space(//ip/@aux)='yes'">
<example num="xV.IPAux.IPAuxPositive.12">
<table border="1">
					<tr>
						<th>Palabras auxiliares</th>
						<th>Glosa</th>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
			<xsl:if test="normalize-space(//ip/@aux)='yes'">
<p>
<xsl:text>Algunos ejemplos de oraciones que incluyen estos auxiliares son:</xsl:text>
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
		      <secTitle>Auxiliar de no finito</secTitle>   
		         <p contentType="ctPracticalIntro">
<xsl:text>El indicador de no finito funciona igual que un auxiliar si se escribe como una palabra independiente. </xsl:text>
</p>
		         <p contentType="ctComparativeIntro">
<xsl:text>En inglés la palabra que indica no finito, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>to</langData>
<xsl:text>, que se usa en cláusulas subordinadas, también funciona igual que un auxiliar en que ocupa la misma posición y puede presentarse antes de otros auxiliares. Por ejemplo, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>The boy would like to have hit the ball</langData>
<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text> ‘El muchacho quisiera haber golpeado el beísbol’</xsl:text>
</gloss>
<xsl:text>.  Por el contrario, el español no tiene un indicador de no finito independiente para las cláusulas subordinadas, sino utiliza simplemente la forma infinitiva del verbo. </xsl:text>
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
<xsl:text>,</xsl:text>
<xsl:choose>
					<xsl:when test="//ip/@auxNonfinite='none'"> no hay ningún indicador de no finito. </xsl:when>
				   <xsl:when test="//ip/@auxNonfinite='no'"> el indicador de no finito es parte del verbo. </xsl:when>
				   <xsl:when test="//ip/@auxNonfinite='yes'"> hay un (o más) indicador de no finito similar a un auxiliar que se escribe como una palabra independiente.  </xsl:when>
				</xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="normalize-space(//ip/@auxNonfinite)='yes'">
					<xsl:text>Un indicador auxiliar de no finito </xsl:text>
					<xsl:choose>
						<xsl:when test="//ip/@auxNonfiniteRequired='no'">es opcional</xsl:when>
						<xsl:when test="//ip/@auxNonfiniteRequired='no'">se require</xsl:when>
					</xsl:choose>
					<xsl:text> en cláusulas subordinadas no finitas. </xsl:text>
					<xsl:if test="normalize-space(//typology/@wordOrder)='VSO'">
						<xsl:text> Después de un indicador de no finito, el orden normal VSO </xsl:text>
						<xsl:choose>
							<xsl:when test="//ip/@auxNonfiniteOrder='yes'">se mantiene. El orden es Aux V S O.</xsl:when>
						   <xsl:when test="//ip/@auxNonfiniteOrder='no'">puede cambiar así que el sujeto se presenta directamente después del auxiliar y antes del verbo. El orden en estas cláusulas sería Aux S V O.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
					<xsl:if test="normalize-space(//typology/@wordOrder)='OSV'">
						<xsl:text> Antes de un indicador de no finito, el orden normal OSV </xsl:text>
						<xsl:choose>
							<xsl:when test="//ip/@auxOrder='yes'">se mantiene. El orden es O S V Aux.</xsl:when>
						   <xsl:when test="//ip/@auxOrder='no'">puede cambiar así que el sujeto se presenta directamente después del verbo y antes del auxiliar. El orden en estas cláusulas sería O V S Aux.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
				</xsl:if>
</p>
			<xsl:if test="normalize-space(//ip/@auxNonfinite)='yes'">
<p>
<xsl:text>El indicador de no finito es:</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//ip/@auxNonfinite)='yes'">
<example num="xV.IPAux.IPAuxNonfinite.12">
<table border="1">
					<tr>
						<th>Indicador de no finito</th>
						<th>Glosa</th>
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
<xsl:otherwise>no finito en cláusulas subordinadas</xsl:otherwise>
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
<xsl:otherwise>no finito en cláusulas subordinadas</xsl:otherwise>
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
<xsl:text>Algunos ejemplos de oraciones con cláusulas subordinadas no finitas que incluyen el indicador no finito son:</xsl:text>
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
		      <secTitle>Otros auxiliares</secTitle>
		      <p contentType="ctPracticalIntro">
<xsl:text>Otras palabras pueden funcionar igual que auxiliares, por ejemplo, auxiliares de movimiento o indicadores de préstamos.</xsl:text>
</p>
		      <p contentType="ctComparativeIntro">
<xsl:text>En algunas lenguas hay otras palabras que funcionan igual que auxiliares, por ejemplo, auxiliares de movimiento o indicadores de préstamo, que comparten el mimso sujeto y complementos con el verbo principal.</xsl:text>
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
					<xsl:when test="//ip/@auxOther='no'"> no hay </xsl:when>
					<xsl:when test="//ip/@auxOther='yes'"> hay algunos</xsl:when>
				</xsl:choose>
<xsl:text> auxiliares de estos tipos que se escriben como palabras independientes.  </xsl:text>
<xsl:if test="normalize-space(//ip/@auxOther)='yes'">
					<xsl:if test="normalize-space(//typology/@wordOrder)='VSO'">
						<xsl:text> Después de uno de estos auxiliares, el orden normal VSO </xsl:text>
						<xsl:choose>
							<xsl:when test="//ip/@auxOtherOrder='yes'">se mantiene. El orden es Aux V S O.</xsl:when>
						   <xsl:when test="//ip/@auxOtherOrder='no'">puede cambiar así que el sujeto se presenta directamente después del auxiliar y antes del verbo. El orden en estas cláusulas sería Aux S V O.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
					<xsl:if test="normalize-space(//typology/@wordOrder)='OSV'">
						<xsl:text> Antes de uno de estos auxiliares, el orden normal OSV </xsl:text>
						<xsl:choose>
							<xsl:when test="//ip/@auxOrder='yes'">se mantiene. El orden es  O S V Aux.</xsl:when>
						   <xsl:when test="//ip/@auxOrder='no'">puede cambiar así que el sujeto se presenta directamente después del verbo y antes del auxiliar. El orden en estas cláusulas sería O V S Aux.</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
				</xsl:if>
</p>
			<xsl:if test="normalize-space(//ip/@auxOther)='yes'">
<p>
<xsl:text>Estos otros auxiliares son:</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//ip/@auxOther)='yes'">
<example num="xV.IPAux.IPAuxOther.12">
<table border="1">
					<tr>
						<th>Otras palabras auxiliares</th>
						<th>Glosa</th>
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
<xsl:otherwise>ESCRIBA LA GLOSA</xsl:otherwise>
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
			<xsl:if test="normalize-space(//ip/@auxOther)='yes'">
<p>
<xsl:text>Algunos ejemplos de oraciones con estos otros auxiliares son:</xsl:text>
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
	   <secTitle>Verbos compuestos</secTitle>
	      <p>
<xsl:text>Los verbos se pueden combinar con otros verbos, con sustantivos o palabras de otras categorías para formar verbos compuestos. Estos compuestos funcionan igual que verbos, pero su valencia puede cambiar, por ejemplo de un verbo transitivo a un verbo intransitivo.  Algunos ejemplos de los tipos más comunes se dan aquí.</xsl:text>
</p>
	   
	      <xsl:if test="normalize-space(//ip/@heartCompound)='yes'">
<p>
<xsl:text>Un sistema especial de verbos compuestos consiste en el que todos los verbos incluyen un sustantivo que expresa el centro de las emociones,  como el corazón.</xsl:text>
</p>
</xsl:if>
	   <xsl:if test="normalize-space(//ip/@heartCompound)='yes'">
<example num="xV.VCompounds.8">
<table border="1">
	         <caption>
<xsl:text>Compuestos con ‘el centro de las emociones’</xsl:text>
</caption>
	         <tr>
	            <th>Compuesto</th>
	            <th>Glosa para cada raíz</th>
	            <th>Glosa para el compuesto</th>
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
	   	<xsl:if test="normalize-space(//ip/@bodypartCompound)='yes'">
<p>
<xsl:if test="normalize-space(//ip/@heartCompound)='no'">
<xsl:text>Un </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/@heartCompound)='yes'">
<xsl:text>Otro</xsl:text>
</xsl:if>
<xsl:text> sistema especial de verbos compuestos consiste en el que todos los verbos incluyen un sustantivo de una parte del cuerpo</xsl:text>
<xsl:if test="normalize-space(//ip/@heartCompound)='yes'">
<xsl:text> menos el que expresa el centro de emociones</xsl:text>
</xsl:if>
<xsl:text>.</xsl:text>
</p>
</xsl:if>
	   <xsl:if test="normalize-space(//ip/@bodypartCompound)='yes'">
<example num="xV.VCompounds.12">
<table border="1">
	         <caption>
<xsl:text>Compuestos con una parte del cuerpo</xsl:text>
</caption> 
	         <tr>
	            <th>Compuesto</th>
	            <th>Glosa para cada raíz</th>
	            <th>Glosa para el compuesto</th>
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
	   <xsl:if test="normalize-space(//ip/@heartCompound)='yes' or normalize-space(//ip/@bodypartCompound)='yes'">
<example num="xV.VCompounds.14">
<table border="1">
	         <caption>
<xsl:text>Otros compuestos de verbos con sustantivos</xsl:text>
</caption> 
	         <tr>
	            <th>Compuesto</th>
	            <th>Glosa para cada raíz</th>
	            <th>Glosa para el compuesto</th>
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
	   <xsl:if test="normalize-space(//ip/@heartCompound)='no' and normalize-space(//ip/@bodypartCompound)='no'">
<example num="xV.VCompounds.16">
<table border="1">
	         <caption>
<xsl:text>Compuestos de verbos con sustantivos</xsl:text>
</caption> 
	         <tr>
	            <th>Compuesto</th>
	            <th>Glosa para cada raíz</th>
	            <th>Glosa para el compuesto</th>
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
	   
	   <p>
<xsl:text>Algunos ejemplos de oraciones con estos compuestos que consisten en un verbo con un sustantivo son:</xsl:text>
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
<xsl:text>Algunos compuestos que consisten en un verbo con una palabra que no es un sustantivo son:</xsl:text>
</p>
	   <example num="xV.VCompounds.24">
<table border="1">
	         <caption>
<xsl:text>Compuestos de verbos con una palabra que no es un sustantivo</xsl:text>
</caption>
	         <tr>
	            <th>Compuesto</th>
	            <th>Glosa para cada raíz</th>
	            <th>Glosa para el compuesto</th>
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
	      <p>
<xsl:text>Algunos ejemplos de oraciones con estos compuestos que consisten en un verbo con una palabra que no es un sustantivo son:</xsl:text>
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
<xsl:text>También hay expresiones idiomáticas que consisten en un verbo y otra palabra que juntas, como una unidad, expresan una idea que no es la misma que el significado cuando se combinan los de las dos palabras independientes. Algunos ejemplos de modismos en el </xsl:text>
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
<xsl:text>Además de compuestos que se escriben como una palabra, también hay expresiones idiomáticas que consisten en un verbo y otra palabra que juntas, como una unidad, expresan una idea que no es la misma que el significado cuando se combinan los de las dos palabras independientes. Algunos ejemplos de modismos en el </xsl:text>
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
