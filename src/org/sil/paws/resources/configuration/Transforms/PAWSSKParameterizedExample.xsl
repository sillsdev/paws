<?xml version="1.0" encoding="UTF-8"?>
<!-- XSLT stylesheet to convert PAWS Starter Kit XML file to a Typology Example file -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:param name="prmIdTitle">Typology</xsl:param>
    <xsl:param name="prmTextSFM">\t</xsl:param>

    <xsl:template match="/">
        <xsl:text>\id PAWS Starter Kit </xsl:text>
        <xsl:value-of select="$prmIdTitle"/>
        <xsl:text> Examples&#xa;</xsl:text>
        <xsl:value-of select="$prmTextSFM"/><xsl:text>&#x20;</xsl:text>
        <xsl:choose>
            <xsl:when test="$prmIdTitle='QP'">
                <xsl:apply-templates select="//qp/degreeExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//qp/cardinalCompoundExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='AdvP'">
                <xsl:apply-templates select="//advp/temporalExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//advp/locativeExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//advp/mannerExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='AdjP'">
                <xsl:apply-templates select="//adjp/example"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='NP'">
                <xsl:apply-templates select="//qp/example"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//qp/negExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//qp/negCooccurExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//qp/determinerNPExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//qp/determinerNegNPExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//qp/ordinalExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//np/example"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//np/embeddedExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//np/qpExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//np/adjpExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//np/partExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//np/compExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//np/partHeadExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Prop'">
                <xsl:apply-templates select="//prop/example"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Pron'">
                <xsl:apply-templates select="//pron/reflExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pron/recipExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pron/possExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pron/indefNPExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pron/indefExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pron/negIndefNPExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pron/negIndefExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pron/standAloneNPExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='PP'">
                <xsl:apply-templates select="//pp/example"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//np/ppExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//np/compPPExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pron/partitiveExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pp/ppExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pp/locExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pp/compPPExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//prop/ppExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='IP'">
                <xsl:apply-templates select="//ip/example"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//np/partHeadSentExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pp/sentExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pp/aloneExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//ip/proDropExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//ip/auxExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//ip/auxNonfiniteExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//ip/auxOtherExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//ip/example"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//ip/diExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//ip/intransExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//ip/motionExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//ip/copularExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//ip/passiveExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//ip/proDropExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pron/reflSentExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pron/recipSentExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//typology/example"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Comp'">
                <xsl:apply-templates select="//comp/finiteExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//comp/finiteOrNonfiniteExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//comp/DPCPExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//comp/nonfiniteExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//nonfiniteProDropExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//comp/nonfiniteCPOrProDropExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//comp/otherExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Q'">
                <xsl:apply-templates select="//q/example"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//q/embYNExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//q/contentExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//q/embContentExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pp/aloneExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='RelCl'">
                <xsl:apply-templates select="//relcl/sentExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//relcl/headlessExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//np/relClExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//pron/pronRelClExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//prop/relClExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='AdvCl'">
                <xsl:apply-templates select="//advcl/tempSentExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//advp/reasonExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Neg'">
                <xsl:value-of select="//neg/degreeSubjExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//neg/determinerSubjExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//neg/pronounSubjExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//neg/advTemporalExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//neg/advLocativeExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//neg/auxExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//neg/auxAffixExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//neg/verbAffixExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//neg/objectExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//neg/indirectObjectExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//neg/subjectObjectExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Coord'">
                <xsl:apply-templates select="//coord/sentExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//coord/vpExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//coord/dpExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//coord/coordppExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//coord/adjExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Focus'">
                <xsl:apply-templates select="//focus/topicExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//focus/focusExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
            <xsl:when test="$prmIdTitle='Excl'">
                <xsl:apply-templates select="//excl/greetExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//excl/intjExample"/>
                <xsl:text>&#xa;</xsl:text>
                <xsl:value-of select="$prmTextSFM"/>
                <xsl:text>&#x20;</xsl:text>
                <xsl:apply-templates select="//excl/exclExample"/>
                <xsl:text>&#xa;</xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="interlinearEntry">
        <xsl:if test="string-length(vernacularLine) &gt; 0">
        <xsl:value-of select="vernacularLine"/>
        <xsl:text>&#xa;</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
