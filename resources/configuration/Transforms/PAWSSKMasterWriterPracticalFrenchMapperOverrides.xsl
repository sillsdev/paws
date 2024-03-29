<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- French overrides -->
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		DoFree
		routine to create empty free line for interlinear
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="DoFree">
		<free>
			<gloss lang="lGloss">SAISIR TRADUCTION LIBRE EN FRANÇAIS ICI.</gloss>
		</free>
	</xsl:template>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		DoGloss
		routine to create empty gloss line for interlinear
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="DoGloss">
		<line>
			<gloss lang="lGloss">SAISIR GLOSE ICI</gloss>
		</line>
	</xsl:template>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		DoMorphemeGloss
		routine to create empty word gloss line for interlinear
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="DoMorphemeGloss">
		<line>
			<gloss lang="lGloss">IMP.saisir glose de morphème-PL ici</gloss>
		</line>
	</xsl:template>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		DoWordGloss
		routine to create empty word gloss line for interlinear
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="DoWordGloss">
		<line>
			<gloss lang="lGloss">SAISIR GLOSE DU MOT ICI</gloss>
		</line>
	</xsl:template>
	<!--
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		OutputCommonFrontmatter
		routine to create frontmatter items common to both types
		Parameters: none
		- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	-->
	<xsl:template name="OutputCommonFrontmatter">
		<author>Nom du premier auteur</author>
		<author>Nom du deuxième auteur (effacer s’il n’y en a qu’un auteur)</author>
		<affiliation>Affiliation</affiliation>
		<date>
			<xsl:value-of select="$prmSDateTime"/>
		</date>
		<version>Ébauche générée par le programme de PAWS <xsl:value-of select="$prmSVersionNumber"/></version>
		<contents showLevel="3" label="Contenu"/>
	</xsl:template>
	<xsl:template name="OutputContentsElement">
		<contents showLevel="3" label="Contenu"/>
	</xsl:template>
	<xsl:template name="OutputEnterExampleHereMessage">
		<xsl:text>SAISIR LES MOTS VERNACULAIRES ICI</xsl:text>
	</xsl:template>
	<!--
		OutputEnterIpaLineHereMessage
	-->
	<xsl:template name="OutputEnterIpaLineHereMessage">
		<xsl:text>SAISIR API MOTS ICI</xsl:text>
	</xsl:template>
	<!--
		OutputEnterIpaMorphBreaksLineHereMessage
	-->
	<xsl:template name="OutputEnterIpaMorphBreaksLineHereMessage">
		<xsl:text>SAISIR MORPHEME-S EN-API ICI</xsl:text>
	</xsl:template>
	<!--
		OutputStateFree
	-->
	<xsl:template name="OutputStateFree">
		<free>
			<gloss lang="lStateGloss">SAISIR LA TRADUCTION LIBRE DANS LA LANGUE DE L'ÉTAT ICI.</gloss>
		</free>
	</xsl:template>
</xsl:stylesheet>
