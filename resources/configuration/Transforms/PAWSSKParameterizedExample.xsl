<?xml version="1.0" encoding="UTF-8"?>
<!-- XSLT stylesheet to convert PAWS Starter Kit XML file to a Typology Example file -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:param name="prmIdTitle">QP</xsl:param>
    <xsl:param name="prmTextSFM">\t</xsl:param>
    <xsl:param name="prmFreeSFM">\f</xsl:param>

    <xsl:template match="/">
        <xsl:text>\id PAWS Starter Kit </xsl:text>
        <xsl:value-of select="$prmIdTitle"/>
        <xsl:text> Examples&#xa;</xsl:text>
        <xsl:choose>
            <xsl:when test="$prmIdTitle='QP'">
                <xsl:apply-templates select="//qp/degreeExample" mode="output"/>
                <xsl:apply-templates select="//qp/cardinalCompoundExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='AdvP'">
                <xsl:apply-templates select="//advp/temporalExample" mode="output"/>
                <xsl:apply-templates select="//advp/locativeExample" mode="output"/>
                <xsl:apply-templates select="//advp/mannerExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='AdjP'">
                <xsl:apply-templates select="//adjp/example" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='NP'">
                <xsl:apply-templates select="//qp/example" mode="output"/>
                <xsl:apply-templates select="//qp/negExample" mode="output"/>
                <xsl:apply-templates select="//qp/negCooccurExample" mode="output"/>
                <xsl:apply-templates select="//qp/determinerNPExample" mode="output"/>
                <xsl:apply-templates select="//qp/determinerNegNPExample" mode="output"/>
                <xsl:apply-templates select="//qp/ordinalExample" mode="output"/>
                <xsl:apply-templates select="//np/example" mode="output"/>
                <xsl:apply-templates select="//np/embeddedExample" mode="output"/>
                <xsl:apply-templates select="//np/qpExample" mode="output"/>
                <xsl:apply-templates select="//np/adjpExample" mode="output"/>
                <xsl:apply-templates select="//np/partExample" mode="output"/>
                <xsl:apply-templates select="//np/compExample" mode="output"/>
                <xsl:apply-templates select="//np/partHeadExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Prop'">
                <xsl:apply-templates select="//prop/example" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Pron'">
                <xsl:apply-templates select="//pron/reflExample" mode="output"/>
                <xsl:apply-templates select="//pron/recipExample" mode="output"/>
                <xsl:apply-templates select="//pron/possExample" mode="output"/>
                <xsl:apply-templates select="//pron/indefNPExample" mode="output"/>
                <xsl:apply-templates select="//pron/indefExample" mode="output"/>
                <xsl:apply-templates select="//pron/negIndefNPExample" mode="output"/>
                <xsl:apply-templates select="//pron/negIndefExample" mode="output"/>
                <xsl:apply-templates select="//pron/standAloneNPExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='PP'">
                <xsl:apply-templates select="//pp/example" mode="output"/>
                <xsl:apply-templates select="//np/ppExample" mode="output"/>
                <xsl:apply-templates select="//np/compPPExample" mode="output"/>
                <xsl:apply-templates select="//pron/partitiveExample" mode="output"/>
                <xsl:apply-templates select="//pp/ppExample" mode="output"/>
                <xsl:apply-templates select="//pp/locExample" mode="output"/>
                <xsl:apply-templates select="//pp/compPPExample" mode="output"/>
                <xsl:apply-templates select="//prop/ppExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='IP'">
                <xsl:apply-templates select="//ip/example" mode="output"/>
                <xsl:apply-templates select="//np/partHeadSentExample" mode="output"/>
                <xsl:apply-templates select="//pp/sentExample" mode="output"/>
                <xsl:apply-templates select="//pp/aloneExample" mode="output"/>
                <xsl:apply-templates select="//ip/proDropExample" mode="output"/>
                <xsl:apply-templates select="//ip/auxExample" mode="output"/>
                <xsl:apply-templates select="//ip/auxNonfiniteExample" mode="output"/>
                <xsl:apply-templates select="//ip/auxOtherExample" mode="output"/>
                <xsl:apply-templates select="//ip/example" mode="output"/>
                <xsl:apply-templates select="//ip/diExample" mode="output"/>
                <xsl:apply-templates select="//ip/intransExample" mode="output"/>
                <xsl:apply-templates select="//ip/motionExample" mode="output"/>
                <xsl:apply-templates select="//ip/copularExample" mode="output"/>
                <xsl:apply-templates select="//ip/passiveExample" mode="output"/>
                <xsl:apply-templates select="//ip/proDropExample" mode="output"/>
                <xsl:apply-templates select="//pron/reflSentExample" mode="output"/>
                <xsl:apply-templates select="//pron/recipSentExample" mode="output"/>
                <xsl:apply-templates select="//typology/example" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Comp'">
                <xsl:apply-templates select="//comp/finiteExample" mode="output"/>
                <xsl:apply-templates select="//comp/finiteOrNonfiniteExample" mode="output"/>
                <xsl:apply-templates select="//comp/DPCPExample" mode="output"/>
                <xsl:apply-templates select="//comp/nonfiniteExample" mode="output"/>
                <xsl:apply-templates select="//nonfiniteProDropExample" mode="output"/>
                <xsl:apply-templates select="//comp/nonfiniteCPOrProDropExample" mode="output"/>
                <xsl:apply-templates select="//comp/otherExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Q'">
                <xsl:apply-templates select="//q/example" mode="output"/>
                <xsl:apply-templates select="//q/embYNExample" mode="output"/>
                <xsl:apply-templates select="//q/contentExample" mode="output"/>
                <xsl:apply-templates select="//q/embContentExample" mode="output"/>
                <xsl:apply-templates select="//pp/aloneExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='RelCl'">
                <xsl:apply-templates select="//relcl/sentExample" mode="output"/>
                <xsl:apply-templates select="//relcl/headlessExample" mode="output"/>
                <xsl:apply-templates select="//np/relClExample" mode="output"/>
                <xsl:apply-templates select="//pron/pronRelClExample" mode="output"/>
                <xsl:apply-templates select="//prop/relClExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='AdvCl'">
                <xsl:apply-templates select="//advcl/tempSentExample" mode="output"/>
                <xsl:apply-templates select="//advp/reasonExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Neg'">
                <xsl:apply-templates select="//neg/degreeSubjExample" mode="output"/>
                <xsl:apply-templates select="//neg/determinerSubjExample" mode="output"/>
                <xsl:apply-templates select="//neg/pronounSubjExample" mode="output"/>
                <xsl:apply-templates select="//neg/advTemporalExample" mode="output"/>
                <xsl:apply-templates select="//neg/advLocativeExample" mode="output"/>
                <xsl:apply-templates select="//neg/auxExample" mode="output"/>
                <xsl:apply-templates select="//neg/auxAffixExample" mode="output"/>
                <xsl:apply-templates select="//neg/verbAffixExample" mode="output"/>
                <xsl:apply-templates select="//neg/objectExample" mode="output"/>
                <xsl:apply-templates select="//neg/indirectObjectExample" mode="output"/>
                <xsl:apply-templates select="//neg/subjectObjectExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Coord'">
                <xsl:apply-templates select="//coord/sentExample" mode="output"/>
                <xsl:apply-templates select="//coord/vpExample" mode="output"/>
                <xsl:apply-templates select="//coord/dpExample" mode="output"/>
                <xsl:apply-templates select="//coord/coordppExample" mode="output"/>
                <xsl:apply-templates select="//coord/adjExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Focus'">
                <xsl:apply-templates select="//focus/topicExample" mode="output"/>
                <xsl:apply-templates select="//focus/focusExample" mode="output"/>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Excl'">
                <xsl:apply-templates select="//excl/greetExample" mode="output"/>
                <xsl:apply-templates select="//excl/intjExample" mode="output"/>
                <xsl:apply-templates select="//excl/exclExample" mode="output"/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="*" mode="output">
        <xsl:for-each select="interlinearEntry[string-length(normalize-space(vernacularLine)) &gt; 0]">
            <xsl:value-of select="$prmTextSFM"/>
            <xsl:text>&#x20;</xsl:text>
            <xsl:value-of select="vernacularLine"/>
            <xsl:text>&#xa;</xsl:text>
            <xsl:if test="string-length(freeLine) &gt; 0">
                <xsl:value-of select="$prmFreeSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:value-of select="freeLine"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
