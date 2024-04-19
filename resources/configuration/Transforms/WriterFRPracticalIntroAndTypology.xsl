<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="intro">
	<section1 id="sIntro">
		<secTitle>Introduction</secTitle>
		<p contentType="ctPracticalIntro">
<xsl:text>Cette grammaire</xsl:text>
<endnote id="nPAWS">
				<p>
<xsl:text>La première version de cette grammaire a été produite par le programme PAWS </xsl:text>
<citation paren="initial" ref="rPAWS" author="yes" />
<xsl:text>, </xsl:text>
<citation author="no" paren="final" ref="rGrammaticography" />
<xsl:text>.</xsl:text>
</p>
			</endnote>
<xsl:text> est une description de la façon dont la plupart des mots, des locutions et des phrases sont formés en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  Elle est destinée à un large public qui comprend des membres de la communauté linguistique des enseignants bilingues, des linguistes et tous ceux qui désirent en savoir plus sur le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.</xsl:text>
</p>
	   <p contentType="ctComparativeIntro">
<xsl:text>Cette grammaire</xsl:text>
<endnote id="nPAWSci">
	         <p>
<xsl:text>La première version de cette grammaire a été produite par le programme PAWS </xsl:text>
<citation paren="initial" ref="rPAWS" author="yes" />
<xsl:text>, </xsl:text>
<citation author="no" paren="final" ref="rGrammaticography" />
<xsl:text>.</xsl:text>
</p>
	      </endnote>
<xsl:text> est une description de la syntaxe et d’une partie de la morphologie de  </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  Elle fournit des comparaisons avec le français et quelquefois avec d’autres langues, tout en documentant une grande partie de la langue.  Elle est destinée à un large public qui comprend des membres de la communauté linguistique, des enseignants bilingues, des linguistes et tous ceux qui désirent en savoir plus sur le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.</xsl:text>
</p>
	   <p contentType="ctPracticalIntro">
<object type="tComment"> Quand vous aures fini PAWS, ce fichier peut servir d’ébauche pour terminer votre grammaire. Les données ici sont la version par défaut de la grammaire pratique. Elle ne founit qu’une introduction de base pour chaque section puis elle donne des informations sur votre langue. Nous suggérons que vous utilisiez cette version pour ajouter des gloses dans les tableaux, pour compléter les exemples interlinéaires et éditer les informations sur votre langue. Portez une attention spéciale aux lignes qui ont ___________, puisque ce sont des endroits où vous avez dit que votre langue a un comportement différent des options données dans PAWS, donc il est possible que le texte doive être édité quelque peu.</object>
<object type="tComment">Vous pouvez aussi choisir de voir ou d'imprimer une version comparative de la grammaire en enregistrant une deuxième copie du fichier sous un autre nom et en changeant ensuite le contenu à l’aide de contentControlChoice à la fin du fichier.    </object>
</p>
	   <p contentType="ctComparativeIntro">
<object type="tComment"> Quand vous aures fini PAWS, ce fichier peut servir d’ébauche pour terminer votre grammaire. Puisque vous lisez cette version, vous aurez déjà modifié le contenu à l’aide de contentControlChoice et choisi la grammaire comparative. Pour votre version finale, vous pouvez changer les renseignements sur le français dans chaque section pour se rapporter à la langue nationale de votre région, si vous choisissez de le faire.  </object>
</p>
	   <p>
<object type="tComment">Si vous exportez cette grammaire avant d'avoir terminé toutes les pages de PAWS, certaines informations peuvent être inexactes parce qu'elles sont basées uniquement sur les réponses par défaut. Les réponses par défaut concernant la position des éléments sont montrées de la façon suivante : ________ jusqu’à ce que vous ayez complété la page correspodante dans PAWS. De plus certaines informations manqueront puisque les réponses aux questions n'auront pas encore été cochées.  </object>
</p>
		<p>
<object type="tComment"> NE MODIFIEZ PAS CE FICHIER JUSQU’A CE QUE VOUS AYEZ terminé de remplir toutes les pages de PAWS - sans oublier la Vérification Finale - parce que les corrections faites dans ce fichier seront effacées par le programme PAWS lorsque vous exporterez le fichier la fois suivante.  Nous suggérons que vous enregistriez ce fichier sous un autre nom avant de l’éditer. </object>
<object type="tComment">Si vous ne l’utilisez pas encore, nous vous suggérons d’utiliser l’éditeur XML XMLMind si possible.  Il facile grandement l’impression d’une version pdf puisque des options supplémentaires sont disponibles pour traiter tous les modules complémentaires de XLing Paper, logiciel utilisé pour exporter la grammaire.  Vous trouverez plus d’informations sur https://software.sil.org/xlingpaper/.</object>
</p>
	   <p>
<object type="tComment">Certains commentaires, en rouge comme celui-ci dans la grammaire, vous donneront des instructions spéciales à prendre en compte.  Effacez chaque commentaire lorsque vous l'aurez complété, afin qu'il n’apparaisse pas dans le document final. Ces commentaires apparaissent intentionnellement dans le document exportéet servent de à vous rappeler, à vous et à votre consultant tout ce qui reste à faire encore.</object>
</p>
		<p>
<xsl:text>On parle le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> dans SAISIR_LEIU.   Il y a approximativement SAISIR_CHIFFRE
				personnes qui parlent le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  Le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> est fait partie de la famille des langues SAISIR_NOM_DE_FAMILLE.</xsl:text>
</p>
		<section2 id="sOrtho">
			<secTitle>Orthographe</secTitle>
			<p>
<xsl:text>Les symboles orthographiques donnés ci-dessous sont utilisés pour écrire les mots autochtones tout comme les mots d’emprunt en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>. Dans </xsl:text>
<exampleRef num="xAlphabet" equal="no" letterOnly="no" />
<xsl:text> ces symboles sont présentés dans l’ordre alphabétique.</xsl:text>
</p>
			<example num="xAlphabet">
<table>
					<tr>
						<th>Symbole</th>
						<th>Exemple</th>
						<th>Glose</th>
					</tr>
					<tr>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
						</td>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
						</td>
						<td align="left">
							<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
						</td>
					</tr>
					<tr>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
						</td>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
						</td>
						<td align="left">
							<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
						</td>
					</tr>
					<tr>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
						</td>
								<td align="left">
									<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
								</td>
								<td align="left">
									<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
								</td>
							</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
									</td>
									<td align="left">
										<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
									</td>
									<td align="left">
										<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
									</td>
								</tr>
								<tr>
					<td align="left">
									<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
								</td>
								<td align="left">
									<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
								</td>
								<td align="left">
									<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
								</td>
							</tr>
							<tr>
								<td align="left">
									<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
								</td>
								<td align="left">
									<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
								</td>
								<td align="left">
									<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
								</td>
							</tr>
							<tr>
								<td align="left">
									<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
								</td>
								<td align="left">
									<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
								</td>
								<td align="left">
									<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
								</td>
							</tr>
							<tr>
								<td align="left">
									<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
								</td>
								<td align="left">
									<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
								</td>
								<td align="left">
									<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
								</td>
							</tr>
							<tr>
								<td align="left">
									<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
								</td>
								<td align="left">
									<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
								</td>
								<td align="left">
									<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
								</td>
							</tr>
					<tr>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
						</td>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
						</td>
						<td align="left">
							<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
						</td>
					</tr>
					<tr>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
						</td>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
						</td>
						<td align="left">
							<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
						</td>
					</tr>
					<tr>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_SYMBOLE</langData>
						</td>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lVernacular</xsl:text>
</xsl:attribute>SAISIR_EXEMPLE</langData>
						</td>
						<td align="left">
							<gloss>
<xsl:attribute name="lang">lGloss</xsl:attribute>
<xsl:text>SAISIR_GLOSE</xsl:text>
</gloss>
						</td>
					</tr>
				</table>
</example>
			<p>
<xsl:text>Voyez l’appendice </xsl:text>
<appendixRef app="aAppdx" />
<xsl:text> pour les tableaux des consonnes et des voyelles comparent l’orthographe pratique avec l’Alphabet phonétique international (API).</xsl:text>
</p>
			<p>
<object type="tComment">Ajoutez des explications pour tous signes diacritiques ou autres symboles tels que les marques de ton.</object>
</p>
		</section2>
		<section2 id="sExamples">
			<secTitle>Conventions utilisées dans les exemples</secTitle>
			<xsl:if test="normalize-space(//language/interlinearOutputStyle/@style)='standard'">
<p>
<xsl:text>Cette grammaire contient beaucoup de syntagmes et phrases illustratifs.  La plupart des exemples sont présentés dans un format interlinéaire consistant en trois ou quatre lignes comme cela est montré sous </xsl:text>
<exampleRef num="xEx" equal="no" letterOnly="no" />
<xsl:text> :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//language/interlinearOutputStyle/@style)='standard'">
<example num="xEx">
<table>
					<tr>
						<td align="left">
							<xsl:text>[mots vernaculaires]</xsl:text>
						</td>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mot</langData>
						</td>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mot</langData>
						</td>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mot</langData>
						</td>
					</tr>
					<tr>
						<td align="left">
							<xsl:text>[gloses littérales du mot]</xsl:text>
						</td>
						<td align="left">
							<xsl:text>glose</xsl:text>
						</td>
						<td align="left">
							<xsl:text>glose</xsl:text>
						</td>
						<td align="left">
							<xsl:text>glose</xsl:text>
						</td>
					</tr>
					<tr>
						<td align="left">
							<xsl:text>[gloses de morphème en français]</xsl:text>
						</td>
						<td align="left">
							<xsl:text>PRE-racine-SUF</xsl:text>
						</td>
						<td align="left">
							<xsl:text>PRE-racine-SUF</xsl:text>
						</td>
						<td align="left">
							<xsl:text>PRE-racine-SUF</xsl:text>
						</td>
					</tr>
					<tr>
						<td align="left">
							<xsl:text>[traduction libre en français]</xsl:text>
						</td>
						<td align="left" colspan="3">
							<xsl:text>traduction libre du syntagme ou de la phrase</xsl:text>
						</td>
					</tr>
				</table>
</example>
</xsl:if>
			<xsl:if test="normalize-space(//language/interlinearOutputStyle/@style)='standard'">
<p>
<xsl:text>Les mots en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont donnés sur la première ligne.  La seconde ligne présente une traduction littérale en français, mot à mot, donnant la glose du mot français qui se rapproche le plus de la signification du mot en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>.  Si plus d’un mot français est nécessaire pour exprimer la signification du mot en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, ces mots en français seront séparés par des points.  Chaque fois qu’un ou plusieurs des mots en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> a plus d’une partie (morphème), la troisième ligne montre les gloses ou abbréviations pour chaque parties du mot, les préfixes, radicaux et suffixes seront séparés par des traits d’union.  Cette troisième ligne sera probablement la plus utile pour les linguistes. La dernière ligne donne la traduction libre pour l’exemple dans son ensemble.</xsl:text>
</p>
</xsl:if>
			
							<xsl:if test="normalize-space(//language/interlinearOutputStyle/@style)='Blessymol'">
<p>
<xsl:text>Cette grammaire contient de nombreuses phrases et expressions illustratives.  La plupart des exemples sont présentés dans un format interlinéaire de six lignes, comme le montre l'exemple </xsl:text>
<exampleRef num="xBlessyEx" equal="no" letterOnly="no" />
<xsl:text> :</xsl:text>
</p>
</xsl:if>
			<xsl:if test="normalize-space(//language/interlinearOutputStyle/@style)='Blessymol'">
<example num="xBlessyEx">
<table>
					<tr>
						<td align="left">
							<xsl:text>[mots vernaculaires]</xsl:text>
						</td>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mot</langData>
						</td>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mot</langData>
						</td>
						<td align="left">
							<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>mot</langData>
						</td>
					</tr>
					<tr>
						<td align="left">
							<xsl:text>[mots en API]</xsl:text>
						</td>
						<td align="left">
							<xsl:text>API</xsl:text>
						</td>
						<td align="left">
							<xsl:text>API</xsl:text>
						</td>
						<td align="left">
							<xsl:text>API</xsl:text>
						</td>
					</tr>
					<tr>
						<td align="left">
							<xsl:text>[API séparée par des morphèmes]</xsl:text>
						</td>
						<td align="left">
							<xsl:text>API-API-API</xsl:text>
						</td>
						<td align="left">
							<xsl:text>API-API-API</xsl:text>
						</td>
						<td align="left">
							<xsl:text>API-API-API</xsl:text>
						</td>
					</tr>
					<tr>
						<td align="left">
							<xsl:text>[gloses de morphème]</xsl:text>
						</td>
						<td align="left">
							<xsl:text>PRE-racine-SUF</xsl:text>
						</td>
						<td align="left">
							<xsl:text>PRE-racine-SUF</xsl:text>
						</td>
						<td align="left">
							<xsl:text>PRE-racine-SUF</xsl:text>
						</td>
					</tr>
					<tr>
						<td align="left">
							<xsl:text>[traduction libre en français]</xsl:text>
						</td>
						<td align="left" colspan="3">
							<xsl:text>traduction libre du syntagme ou de la phrase</xsl:text>
						</td>
					</tr>
					<tr>
						<td align="left">
							<xsl:text>[traduction libre en langue officielle de l'Etat]</xsl:text>
						</td>
						<td align="left" colspan="3">
							<xsl:text>traduction libre du syntagme ou de la phrase</xsl:text>
						</td>
					</tr>
				</table>
</example>
</xsl:if>
			<xsl:if test="normalize-space(//language/interlinearOutputStyle/@style)='Blessymol'">
<p>
<xsl:text>Les mots en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont donnés sur la première ligne. La deuxième ligne présente les mots en API.  La troisième ligne ajoute des traits d'union à l'API pour montrer la séparation des mots en morphèmes.
					La quatrième ligne donne la traduction morphème par morphème en français, les morphèmes étant séparés par des traits d'union.  La meilleure traduction littérale est utilisée pour chaque racine, séparée par des points si plus d'un mot français est nécessaire pour exprimer le sens du </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> racine, tandis que les préfixes et suffixes sont indiqués par des gloses ou des abréviations de leurs caractéristiques.  Cette quatrième ligne peut s'avérer très utile pour les linguistes.  Les deux dernières lignes donnent la traduction libre de l'ensemble de l'exemple, d'abord en français, puis dans la langue de l'Etat.</xsl:text>
</p>
</xsl:if>

			
			<p>
<object type="tComment">Ajoutez ici plus de détails sur toutes les différences entre votre langue et le français. Par exemple, si votre langue ne distingue pas entre le nombre et/ou le genre pour les noms, mais que la langue de la glose le fait, vous pouvez choisir d’utiliser uniquement les formes au singulier et/ou au masculin pour les gloses.</object>
</p>
			<p>
<xsl:text>Après quelques informations sur la typologie syntactique de la langue, la grammaire décrit les parties du discours et les syntagmes qu’elles contiennent dans les sections </xsl:text>
<sectionRef sec="sN" />
<xsl:text> - </xsl:text>
<sectionRef sec="sExcl" />
<xsl:text>.  Ensuite, les phrases simples sont sont traitées dans la section </xsl:text>
<sectionRef sec="sIP" />
<xsl:text>. Les constructions impliquant des changements dans l’ordre des termes sont présentées dans les sections </xsl:text>
<sectionRef sec="sFocus" />
<xsl:text> - </xsl:text>
<sectionRef sec="sNeg" />
<xsl:text>.  Les constructions de coordination sont traitées dans la section </xsl:text>
<sectionRef sec="sCoord" />
<xsl:text>,  suivies finalement par différents types de propositions subordonnées dans les sections </xsl:text>
<sectionRef sec="sComp" />
<xsl:text> - </xsl:text>
<sectionRef sec="sRelCl" />
<xsl:text>.  Quelques textes sont inclus à la fin pour illustrer la formation des unités supérieures, telles les paragraphes, les conversations et les récits narratifs.</xsl:text>
</p>
		</section2>
	</section1>
	<section1 id="sTypology">
		<secTitle>Typologie</secTitle>
		<p>
<xsl:text>L’ordre de base des mots en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> dans les phrases transitives est </xsl:text>
<xsl:choose>
				<xsl:when test="//typology/@wordOrder='SVO'">Sujet-Verbe-Objet</xsl:when>
				<xsl:when test="//typology/@wordOrder='SOV'">Sujet-Objet-Verbe</xsl:when>
				<xsl:when test="//typology/@wordOrder='VSO'">Verbe-Sujet-Objet</xsl:when>
				<xsl:when test="//typology/@wordOrder='VOS'">Verbe-Objet-Sujet</xsl:when>
				<xsl:when test="//typology/@wordOrder='OVS'">Objet-Verbe-Sujet</xsl:when>
				<xsl:when test="//typology/@wordOrder='OSV'">Objet-Sujet-Verbe</xsl:when>
			</xsl:choose>
<xsl:text>, comme les exemples suivants l’illustrent :</xsl:text>
</p>
		<example num="xTypology.6">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/example" />
<xsl:with-param name="sExNumber">xTypology.6</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
		<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//pp/@pPos)='before' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//pp/@pPos)='before' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//pp/@pPos)='before' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//pp/@pPos)='unknown' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//pp/@pPos)='unknown' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//pp/@pPos)='unknown'">
<p>
<xsl:text>Conformément à la noyau-typologie initiale, le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> a des prépositions (section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text>).</xsl:text>
</p>
</xsl:if>
		<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//pp/@pPos)='after' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//pp/@pPos)='after' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//pp/@pPos)='after'">
<p>
<xsl:text>En contraste avec la noyau-typologie initiale, le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> a des postpositions (section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text>).</xsl:text>
</p>
</xsl:if>
		<xsl:if test="normalize-space(//pp/@pPos)='both'">
<p>
<object type="tComment">Le </object>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> a des prépositions et des postpositions (section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text>).</xsl:text>
</p>
</xsl:if>
		<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//pp/@pPos)='after' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//pp/@pPos)='after' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//pp/@pPos)='after' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//pp/@pPos)='unknown' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//pp/@pPos)='unknown' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//pp/@pPos)='unknown'">
<p>
<xsl:text>Conformément à la noyau-typologie finale, le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>a des postpositions (section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text>).</xsl:text>
</p>
</xsl:if>
		<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//pp/@pPos)='before' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//pp/@pPos)='before' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//pp/@pPos)='before'">
<p>
<xsl:text>En contraste avec la noyau-typologie finale, le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> a des prépositions (section </xsl:text>
<sectionRef sec="sPP" />
<xsl:text>).</xsl:text>
</p>
</xsl:if>
		<p>
<xsl:if test="normalize-space(//np/@possNP)='yes' or normalize-space(//np/@possNP)='yesOnly'">
		   	<xsl:text>Le syntagme nominal et les possessifs pronominaux se trouvent </xsl:text>
			   <xsl:choose>
				<xsl:when test="//np/@possNounPos='before'">avant le</xsl:when>
			   	<xsl:when test="//np/@possNounPos='after'">après le</xsl:when>
			   	<xsl:when test="//np/@possNounPos='either'">d’un côté ou de l’autre du</xsl:when>
				<xsl:when test="//np/@possNounPos='unknown'"> _______ </xsl:when>
			</xsl:choose>
		   	<xsl:text> nom déterminé dans le syntagme de possession (section </xsl:text>
			<sectionRef sec="sNPPoss" />
			   <xsl:text>). </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possNP)='no'">
		   	<xsl:text>Les possesseurs pronominaux se trouvent </xsl:text>
		         <xsl:choose>
		         	<xsl:when test="//np/@possNounPos='before'">avant le</xsl:when>
		         	<xsl:when test="//np/@possNounPos='after'">après le</xsl:when>
		         	<xsl:when test="//np/@possNounPos='either'">d’un côté ou de l’autre du</xsl:when>
		            <xsl:when test="//np/@possNounPos='unknown'"> _______ </xsl:when>
		         </xsl:choose>
		   	<xsl:text> nom déterminé dans le syntagme de possession, mais les possessifs constitués d’un syntagme nominal se trouvent seulement dans </xsl:text>
		         <xsl:choose>
		         	<xsl:when test="//pp/@pPos='before'">un syntagme prépositionel</xsl:when>
		         	<xsl:when test="//pp/@pPos='after'">un syntagme postpositionnel</xsl:when>
		         	<xsl:when test="//pp/@pPos='both'">un syntagme adpositionnel</xsl:when>
		         </xsl:choose>
		   	<xsl:text> qui se trouve </xsl:text>
		         <xsl:choose>
		         	<xsl:when test="//np/@possPPPos='before'">avant le</xsl:when>
		         	<xsl:when test="//np/@possPPPos='after'">après le</xsl:when>
		         	<xsl:when test="//np/@possPPPos='either'">d’un côté ou de l’autre du</xsl:when>
		            <xsl:when test="//np/@possPPPos='unknown'"> _______ </xsl:when>
		         </xsl:choose>
		   	<xsl:text> nom déterminé dans le syntagme de possession (section </xsl:text>
		         <sectionRef sec="sNPPoss" />
		         <xsl:text>). </xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/@possNP)='none'">
		   	<xsl:text>Les syntagmes nominaux et les possesseurs pronominaux se trouvent seulement dans </xsl:text>
		         <xsl:choose>
		         	<xsl:when test="//pp/@pPos='before'">un syntagme prépositionel</xsl:when>
		         	<xsl:when test="//pp/@pPos='after'">un syntagme postpositionnel</xsl:when>
		         	<xsl:when test="//pp/@pPos='both'">un syntagme adpositionnel</xsl:when>
		         </xsl:choose>
		   	<xsl:text> qui se trouve </xsl:text>
		   	<xsl:choose>
		   		<xsl:when test="//np/@possPPPos='before'">avant le</xsl:when>
		   		<xsl:when test="//np/@possPPPos='after'">après le</xsl:when>
		   		<xsl:when test="//np/@possPPPos='either'">d’un côté ou de l’autre du</xsl:when>
		   		<xsl:when test="//np/@possPPPos='unknown'"> _______ </xsl:when>
		   	</xsl:choose>
		   	<xsl:text> nom déterminé dans le syntagme de possession (section </xsl:text>
		   	<sectionRef sec="sNPPoss" />
		         <xsl:text>). </xsl:text>
</xsl:if>
</p>
	   <xsl:if test="normalize-space(//np/adjPosOther/@checked)='no'">
<p>
<xsl:text>Les syntagmes adjectivaux se trouvent </xsl:text>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='yes' and normalize-space(//np/adjAfter/@checked)='no' and normalize-space(//np/adjBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBefore/@checked)='no' and normalize-space(//np/adjBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='yes' and normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBoth/@checked)='yes' and normalize-space(//np/adjBefore/@checked)='no' and normalize-space(//np/adjAfter/@checked)='no'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='yes' and normalize-space(//np/adjAfter/@checked)='no'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='yes' and normalize-space(//np/adjBefore/@checked)='no'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='yes' and normalize-space(//np/adjBefore/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:text> nom qu’ils modifient (section </xsl:text>
<sectionRef sec="sNPAdjP" />
<xsl:text>).   </xsl:text>
</p>
</xsl:if>
	   <xsl:if test="normalize-space(//np/adjBefore/@checked)='no' and normalize-space(//np/adjAfter/@checked)='no' and normalize-space(//np/adjBoth/@checked)='no' and normalize-space(//np/adjPosOther/@checked)='yes'">
<p>
<xsl:text>Les syntagmes adjectivaux sont traités dans ___</xsl:text>
<xsl:value-of select="//np/adjPosOther" />
<xsl:text> (section </xsl:text>
<sectionRef sec="sNPAdjP" />
<xsl:text>).   </xsl:text>
</p>
</xsl:if>
	   <xsl:if test="normalize-space(//np/adjPosOther/@checked)='yes' and normalize-space(//np/adjBefore/@checked)='yes' or normalize-space(//np/adjPosOther/@checked)='yes' and normalize-space(//np/adjAfter/@checked)='yes' or normalize-space(//np/adjPosOther/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='yes'">
<p>
<xsl:text>Les syntagmes adjectivaux se trouvent </xsl:text>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='yes' and normalize-space(//np/adjAfter/@checked)='no' and normalize-space(//np/adjBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBefore/@checked)='no' and normalize-space(//np/adjBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='yes' and normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBoth/@checked)='yes' and normalize-space(//np/adjBefore/@checked)='no' and normalize-space(//np/adjAfter/@checked)='no'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjBefore/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='yes' and normalize-space(//np/adjAfter/@checked)='no'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='yes' and normalize-space(//np/adjBefore/@checked)='no'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//np/adjAfter/@checked)='yes' and normalize-space(//np/adjBoth/@checked)='yes' and normalize-space(//np/adjBefore/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
<xsl:text> nom qu’ils modifient, et peuvent aussi se trouver ___</xsl:text>
<xsl:value-of select="//np/adjPosOther" />
<xsl:text> (section </xsl:text>
<sectionRef sec="sNPAdjP" />
<xsl:text>).   </xsl:text>
</p>
</xsl:if>
	   <p>
<xsl:if test="normalize-space(//relcl/@exist)='no'">
				<xsl:text>Le </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
	      	<xsl:text> n’a aucun type de proposition relative.</xsl:text>
			</xsl:if>
<xsl:if test="normalize-space(//relcl/@exist)='yes'">
				<xsl:text> Les propositions relatives se trouvent </xsl:text>
				<xsl:choose>
					<xsl:when test="//relcl/@clausePos='before'">avant le</xsl:when>
					<xsl:when test="//relcl/@clausePos='after'">après le</xsl:when>
					<xsl:when test="//relcl/@clausePos='either'">d’un côté ou de l’autre du</xsl:when>
					<xsl:when test="//relcl/@clausePos='unknown'"> _______ </xsl:when>
				</xsl:choose>
				<xsl:text> nom principal (section </xsl:text>
				<sectionRef sec="sRelCl" />
				<xsl:text>).   </xsl:text>
			</xsl:if>
</p>
		<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, </xsl:text>
<xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
<xsl:text>un sujet nul (pro-drop) est admis dans n’importe quel type de phrase.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropClitic/@checked)='yes'">
<xsl:text>le sujet peut paraître nul en raison des pronoms dépendants (clitiques pronominaux) qui se rattachent au verbe, mais ce n’est pas une vraie langue à sujet nul.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropOther/@checked)='no' and normalize-space(//ip/proDropNone/@checked)='no'">
<xsl:text>un sujet nul (pro-drop) n’est pas admis.  Le sujet doit être explicite sauf dan les impératifs.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropNone/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropOther/@checked)='no' and normalize-space(//ip/proDropImp/@checked)='no'">
<xsl:text>un sujet nul (pro-drop) n’est pas admis.  Le sujet doit être explicite même dans les impératifs.</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropOther/@checked)='yes' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropNone/@checked)='no' and normalize-space(//ip/proDropImp/@checked)='no'">
<xsl:text> un sujet nul (pro-drop) est admis uniquement ___</xsl:text>
<xsl:value-of select="//ip/proDropOther" />
<xsl:text> .</xsl:text>
</xsl:if>
<xsl:if test="normalize-space(//ip/proDropOther/@checked)='yes' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text> un sujet nul (pro-drop) est admis ___</xsl:text>
<xsl:value-of select="//ip/proDropOther" />
<xsl:text> ainsi que dans les impératifs.</xsl:text>
</xsl:if>
<xsl:text>  (section </xsl:text>
<sectionRef sec="sIPProDrop" />
<xsl:text>).</xsl:text>
<xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes'">
				<xsl:text>  Un objet nul </xsl:text>
				<xsl:choose>
					<xsl:when test="//ip/@proDropObject='no'">n’est pas</xsl:when>
					<xsl:when test="//ip/@proDropObject='yes'">est</xsl:when>
				</xsl:choose>
				<xsl:text> admis.</xsl:text>
			</xsl:if>
</p>
		<xsl:if test="normalize-space(//ip/@aux)='no'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, il n’y a pas d’auxilliaire écrit comme un mot indépendant (section </xsl:text>
<sectionRef sec="sIPAux" />
<xsl:text>).</xsl:text>
</p>
</xsl:if>
		<xsl:if test="normalize-space(//ip/@aux)='yes'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, il y a des auxilliares écrits comme mots indépendants.  Ceux-ci se trouvent </xsl:text>
<xsl:choose>
				<xsl:when test="//typology/@wordOrder='SVO'">avant</xsl:when>
				<xsl:when test="//typology/@wordOrder='SOV'">après</xsl:when>
				<xsl:when test="//typology/@wordOrder='VSO'">avant</xsl:when>
				<xsl:when test="//typology/@wordOrder='VOS'">avant</xsl:when>
				<xsl:when test="//typology/@wordOrder='OVS'">après</xsl:when>
				<xsl:when test="//typology/@wordOrder='OSV'">après</xsl:when>
			</xsl:choose>
<xsl:text> le verbe principal (section </xsl:text>
<sectionRef sec="sIPAux" />
<xsl:text>).</xsl:text>
</p>
</xsl:if>
		<p>
<xsl:if test="normalize-space(//q/@mainYNWord)='yes' and normalize-space(//q/mainYNWordOther/@checked)='no' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNWordOther/@checked)='no'">
				<xsl:text>Dans les questions Oui/Non, il y a un marqueur de question ou un complémenteur qui se trouve </xsl:text>
				<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
				<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
				<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
				<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
				<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
				<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
				<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
				<xsl:text> reste de la question (section </xsl:text>
				<sectionRef sec="sQuesYN" />
				<xsl:text>).  </xsl:text>
			</xsl:if>
<xsl:if test="normalize-space(//q/@mainYNWord)='yes' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='no' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='no'">
		   	<xsl:text>Dans les questions Oui/Non, il y a un marqueur de question ou un complémenteur qui se trouve ___</xsl:text>
		      <xsl:value-of select="//q/mainYNWordOther" />
<xsl:text> (section </xsl:text>
		      <sectionRef sec="sQuesYN" />
		      <xsl:text>).  </xsl:text>
		   </xsl:if>
<xsl:if test="normalize-space(//q/@mainYNWord)='yes' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/mainYNWordBefore/@checked)='yes' or normalize-space(//q/@mainYNWord)='yes' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='yes' or normalize-space(//q/@mainYNWord)='yes' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/mainYNWordBefore/@checked)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='yes' or normalize-space(//q/@mainYNWord)='some' and normalize-space(//q/mainYNWordOther/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='yes'">
		   	<xsl:text>Dans les questions Oui/Non, il y a un marqueur de question ou un complémenteur qui se trouve </xsl:text>
		   	<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='no'">
<xsl:text>avant le</xsl:text>
</xsl:if>
		   	<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='no'">
<xsl:text>après le</xsl:text>
</xsl:if>
		   	<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='no'">
<xsl:text>d’un côté ou de l’autre du</xsl:text>
</xsl:if>
		   	<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='yes'">
<xsl:text>de part et d’autre du</xsl:text>
</xsl:if>
		   	<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='no' and normalize-space(//q/mainYNWordBoth/@checked)='yes'">
<xsl:text>avant ou de part et d’autre du</xsl:text>
</xsl:if>
		   	<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='no' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='yes'">
<xsl:text>après ou de part et d’autre du</xsl:text>
</xsl:if>
		   	<xsl:if test="normalize-space(//q/mainYNWordBefore/@checked)='yes' and normalize-space(//q/mainYNWordAfter/@checked)='yes' and normalize-space(//q/mainYNWordBoth/@checked)='yes'">
<xsl:text>d’un côté ou de l’autre ou de part et d’autre du</xsl:text>
</xsl:if>
		   	<xsl:text> reste de la question, et peut se trouver aussi ou au lieu de cela ___</xsl:text>
<xsl:value-of select="//q/mainYNWordOther" />
<xsl:text> (section </xsl:text>
		      <sectionRef sec="sQuesYN" />
		      <xsl:text>).   </xsl:text>
		   </xsl:if>
<xsl:text>Dans les questions d’information, un syntagme interrogatif </xsl:text>
<xsl:choose>
				<xsl:when test="//q/@contFront='no'">n’est pas antéposé ; il reste simplement dans la position de l’élément sur lequel on interroge</xsl:when>
				<xsl:when test="//q/@contFront='after'">peut rester dans la position de l’élément sur lequel on interroge ou peut être placé immédiatement avant le verbe</xsl:when>
				<xsl:when test="//q/@contFront='before'">est placé au début de la proposition</xsl:when>
				<xsl:when test="//q/@contFront='unknown'"> _______ </xsl:when>
			</xsl:choose>
<xsl:text> (section </xsl:text>
<sectionRef sec="sQuesContent" />
<xsl:text>).</xsl:text>
</p>
	   <p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text></xsl:text>
<xsl:choose>
		  	<xsl:when test="//typology/@case='none'"> il n’y a pas de système casuel.  Le même ensemble de pronoms est utilisé dans n’importe quelle position dans la phrase et il n’y a pas de marqueur, qui serait déterminé par la position dans la phrase, sur les noms ou les modificateurs.</xsl:when>
		  	<xsl:when test="//typology/@case='nominative'"> a un système de cas nominatif-accusatif.   Les sujets de verbes transitifs et intransitifs sont marqués de la même façon et on utilise le même ensemble de pronoms, mais les objets des verbes transitifs sont marqués différemment.</xsl:when>
		  	<xsl:when test="//typology/@case='ergative'"> a un système de cas ergatif-absolutif.   Les sujets de verbes intransitifs et les objets de verbes transitifs sont marqués de la même façon et on utilise le même ensemble de pronoms, mais les sujets de verbes transitifs sont marqués différemment.</xsl:when>
		  	<xsl:when test="//typology/@case='split'"> a un système de cas ergativité mixte.  Normalment, la langue suit le système de cas nominatif-accusatif mais le système ergatif-absolutif est utilisé sous certaines conditions grammaticales.</xsl:when>
		  </xsl:choose>
<xsl:if test="normalize-space(//typology/@case)!='none'">
<xsl:text>  En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, </xsl:text>
<xsl:choose>
		  	<xsl:when test="//np/@caseN='yes'">les noms et éventuellement les modificateurs, tout comme les pronoms, portent le marqueur du cas.</xsl:when>
		  	<xsl:when test="//np/@caseN='no'">il n’ y a pas de marqueur de cas sur les noms. Par contre, les systèmes pronominaux indiquent les distinctions de cas.</xsl:when>
		  </xsl:choose>
</xsl:if>
<xsl:if test="normalize-space(//typology/@case)='nominative' and normalize-space(//np/@caseDefault)='nominative' or normalize-space(//typology/@case)='split' and normalize-space(//np/@caseDefault)='nominative'">
			 	<xsl:text>  Le cas nominatif est le cas par défault (non marqué).</xsl:text>
			 </xsl:if>
<xsl:text> (Voir les sections </xsl:text>
<sectionRef sec="sNPCase" />
<xsl:text> et </xsl:text>
<sectionRef sec="sPron" />
<xsl:text>.)</xsl:text>
</p>
	   <p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text></xsl:text>
<xsl:choose>
	   	<xsl:when test="//typology/@classifier='no'"> il n’y a pas de système de classes nominales ou de classificateur.</xsl:when>
	   	<xsl:when test="//typology/@classifier='yesAgr'"> il y a un système de classes nominales présenté dans la prochaine section.</xsl:when>
	   	<xsl:when test="//typology/@classifier='yesSpecific'"> il y a un système de classificateurs nominaux présenté dans la prochaine section.</xsl:when>
	   	<xsl:when test="//typology/@classifier='yesType'"> il y a un système de classificateurs nominaux présenté dans la prochaine section.</xsl:when>
	   </xsl:choose>
</p>
	</section1>
   <xsl:if test="normalize-space(//typology/@classifier)!='no'">
<section1 id="sClassifiers">
   	<secTitle>Classes nominales ou classificateurs</secTitle>
      <p contentType="ctPracticalIntro">
<xsl:text>Les classes nominales ou les classificateurs marquent les noms en fonction de leur forme, de leur position ou d’autres caractéristiques.  Dans un système de classes nominales, le marquage de classe peut devenir un système d’accord qui exige un accord dans tout le syntagme nominal et même avec le verbe.  Au lieu de cela, des langues peuvent avoir un système de classificateurs, appelé quelquefois les termes de mesure.   Ces classificateurs sont des mots ou des morphèmes qui accompagnent des noms lorsque le nom est dénombré ou spécifié et ils servent à classifier le nom selon le type du référent. Les classificateurs sont en rapport avec le nom dénombré ou spécifié, mais il n’y a pas d’autre accord dans le syntagme nominal ou la phrase. Dans un type plus simple de système de classificateurs, les affixes classificateurs sont dérivés soit d’un nom générique soit d’un pronom et apparaissent sur la plupart des noms de certains types, comme les animaux, les insectes ou les liquides.  Dans ce système plus simple, ces affixes n’apparaîtront que sur les noms et des distinctions similaires peuvent exister pour les pronoms de la troisième personne qui se rapportent à ces types de noms. </xsl:text>
</p>
	  <p contentType="ctComparativeIntro">
<xsl:text>Certaines langues ont un système de classes nominales qui marquent les noms par leur forme, leur position et d’autres caractéristiques.  Dans beaucoup de ces langues, le marquage de classes devient un système d’accord qui exige un accord dans tout le syntagme nominal et même avec le verbe.  C’est pourquoi les quantifieurs, les articles, les démonstratifs, les adjectifs et les verbes peuvent être marqués avec le marqueur de classe nominale approprié.</xsl:text>
</p>
   	<p contentType="ctComparativeIntro">
<xsl:text>Les langues bantu parlées en Afrique représentent peut-être le système de classe nominale le plus connu.  Ces langues ont jusqu’à 22 classes distinctes, représentées par des numéros.  A peu près la moitié sont utilisées pour les noms au singulier seulement, et un nombre égal pour les noms au pluriel seulement.  D’autres sont utilisées pour les noms de masse ou de lieu ainsi que les noms abstraits.</xsl:text>
</p>
   	<p contentType="ctComparativeIntro">
<xsl:text>Au lieu de cela, les langues peuvent avoir un système de classificateurs appelés quelquefois les mots de mesure.  Ces classificateurs sont des mots ou morphèmes qui accompagnent les noms quand le nom est dénombré ou spécifié et servent à classifier le nom selon le type de référent.  Certaines langues ont plusieurs centaines de classificateurs.  Le classificateur se rapporte au nom dénombré ou spécifié, mais il n’y a pas d’autre accord dans le syntagme nominal ou dans la phrase.  Ce type de classificateur est une partie importante de bon nombre langues de l’Asie de l’Est.</xsl:text>
</p>
   	<p contentType="ctComparativeIntro">
<xsl:text>Il y a aussi un type plus simple de système de classificateurs dans lequel des affixes classificateurs dérivés soit d’un nom générique ou d’un pronom qui apparaissent sur la plupart des noms se référant aux animaux ou aux insectes, aux liquides, aux arbres ou aux objets faits de bois ou aux objets ronds.  Dans ce système plus simple, il n’y généralement pas d'accord dans le syntagme nominal ou la phrase, ces affixes n'apparaissent donc que sur des noms et peuvent être considérés plutôt dérivationnels.  Cependant, il peut y avoir des distinctions similaires pour les pronoms de troisième personne qui se réfèrent à ces types de noms.  Pour identifier les classificateurs, un tel système peut utiliser des types plutôt que des numéros.</xsl:text>
</p>
   	<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, il y a un système de classificateurs qui distinguent les types de noms. Les classificateurs sont relevés dans le syntagme nominal avec les noms lorsqu'ils sont dénombrés ou spécifiés mais il n'y a pas d'autre accord dans le syntagme nominal ou la phrase.</xsl:text>
</p>
</xsl:if>
   	<xsl:if test="normalize-space(//typology/@classifier)='yesType'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, il y a un système de classificateur plus simple qui distingue les types de noms, il n’y a pas d’accord dans le syntagme nominal ou la phrase.</xsl:text>
</p>
</xsl:if>
   	<xsl:if test="normalize-space(//typology/@classifier)='yesAgr'">
<p>
<xsl:text>En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, il y a un système de classes nominales avec accord dans tout le syntagme nominal et la phrase.  En </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text>, les classificateurs sont distingués par </xsl:text>
<xsl:choose>
	  	<xsl:when test="//typology/@classifierNum='number'">des numéros. </xsl:when>
	  	<xsl:when test="//typology/@classifierNum='type'">des types.  <xsl:choose>
	  		<xsl:when test="//typology/@classifierTypeNumAgr='no'">Les classes ne distinguent pas entre le singulier et le pluriel, il n’y a donc qu’une seule classe pour chaque type de nom.</xsl:when>
	  		<xsl:when test="//typology/@classifierTypeNumAgr='yes'">Il y a des classes indépendentes pour le singulier et pour le pluriel pour chaque type de nom.</xsl:when>
		 </xsl:choose>
</xsl:when>
	  </xsl:choose>
</p>
</xsl:if>
   	<xsl:if test="normalize-space(//typology/@classifier)='yesType' or normalize-space(//typology/@classifier)='yesSpecific'">
<p>
<xsl:text>Les classificateurs du </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont présentés dans le tableau di-dessous :</xsl:text>
</p>
</xsl:if>
   	<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific'">
<example num="xClassifiers.22">
<table border="1">
   			<caption>
   				<xsl:text>Classificateurs nominaux par type</xsl:text>
   			</caption>
   			<tr>
   				<th>
   					Type
   				</th>
   				<th>Classificateur</th>
   				<th>Glose</th>
   			</tr>
   			<tr>
<td>
   					<xsl:text>humains</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierHumanExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierHumanExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierHumanExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>animaux</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierAnimalExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierAnimalExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierAnimalExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>oiseaux</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierBirdExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierBirdExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierBirdExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>bateaux</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierBoatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierBoatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierBoatExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>vêtements</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierClothingExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierClothingExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierClothingExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>arbres</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierTreeExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierTreeExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierTreeExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>objets longs et minces</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierLongThinExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierLongThinExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierLongThinExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>objets longs et ondulés</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierLongWavyExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierLongWavyExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierLongWavyExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>objets plats</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierFlatExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierFlatExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierFlatExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>objets cylindriques</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierCylindricalExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierCylindricalExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierCylindricalExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>objets mécaniques</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierMechanicalExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierMechanicalExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierMechanicalExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>objets génériques</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierGenericExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierGenericExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierGenericExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>SAISIR TYPE</xsl:text>
   				</td>
<xsl:for-each select="//typology/classifierOtherExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classifierOtherExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierOtherExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   	
   			<xsl:if test="normalize-space(//typology/@classifier)='yesType'">
<example num="xClassifiers.24">
<table border="1">
			<caption>
				<xsl:text>Classificateurs nominaux par type</xsl:text>
			</caption>
			<tr>
			   <th>
				  Type
			   </th>
				<th>Classificateur</th>
				<th>Glose</th>
			</tr>
			<tr>
<td>
				  <xsl:text>animal</xsl:text>
			   </td>
<xsl:for-each select="//typology/classAnimalExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classAnimalExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classAnimalExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>insecte</xsl:text>
			   </td>
<xsl:for-each select="//typology/classInsectExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classInsectExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classInsectExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>liquide</xsl:text>
			   </td>
<xsl:for-each select="//typology/classLiquidExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classLiquidExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classLiquidExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>rond</xsl:text>
			   </td>
<xsl:for-each select="//typology/classRoundExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classRoundExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classRoundExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>cylindrique</xsl:text>
			   </td>
<xsl:for-each select="//typology/classCylinderExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classCylinderExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classCylinderExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
			   	<xsl:text>sphérique</xsl:text>
			   </td>
<xsl:for-each select="//typology/classSphereExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classSphereExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classSphereExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>arbre</xsl:text>
			   </td>
<xsl:for-each select="//typology/classTreeExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classTreeExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classTreeExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>en bois</xsl:text>
			   </td>
<xsl:for-each select="//typology/classWoodExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classWoodExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classWoodExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>SAISIR TYPE</xsl:text>
			   </td>
<xsl:for-each select="//typology/classOtherExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classOtherExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classOtherExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   	<xsl:if test="normalize-space(//typology/@classifier)='yesAgr'">
<p>
<xsl:text>Les marqueurs de classe nominale en </xsl:text>
<xsl:choose>
<xsl:when test="string-length(normalize-space(//language/langNames/langName[@lang='fr'])) &gt; 0">
<xsl:value-of select="normalize-space(//language/langNames/langName[@lang='fr'])" />
</xsl:when>
<xsl:otherwise>
<xsl:text>Vernacular</xsl:text>
</xsl:otherwise>
</xsl:choose>
<xsl:text> sont présentés dans le tableau di-dessous :</xsl:text>
</p>
</xsl:if>
   	<xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//typology/@classifierNum)='type' and normalize-space(//typology/@classifierTypeNumAgr)='no'">
<example num="xClassifiers.28">
<table border="1">
   			<caption>
   				<xsl:text>Classes nominales par type</xsl:text>
   			</caption>
   			<tr>
   				<th>
   					Type
   				</th>
   				<th>Marqueurs de classe</th>
   				<th>Glose</th>
   			</tr>
   			<tr>
<td>
   					<xsl:text>animal</xsl:text>
   				</td>
<xsl:for-each select="//typology/classAnimalExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classAnimalExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classAnimalExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>insecte</xsl:text>
   				</td>
<xsl:for-each select="//typology/classInsectExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classInsectExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classInsectExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>liquide</xsl:text>
   				</td>
<xsl:for-each select="//typology/classLiquidExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classLiquidExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classLiquidExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>rond</xsl:text>
   				</td>
<xsl:for-each select="//typology/classRoundExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classRoundExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classRoundExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>cylindrique</xsl:text>
   				</td>
<xsl:for-each select="//typology/classCylinderExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classCylinderExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classCylinderExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>sphérique</xsl:text>
   				</td>
<xsl:for-each select="//typology/classSphereExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classSphereExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classSphereExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>arbre</xsl:text>
   				</td>
<xsl:for-each select="//typology/classTreeExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classTreeExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classTreeExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>en bois</xsl:text>
   				</td>
<xsl:for-each select="//typology/classWoodExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classWoodExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classWoodExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   					<xsl:text>SAISIR TYPE</xsl:text>
   				</td>
<xsl:for-each select="//typology/classOtherExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<xsl:for-each select="//typology/classOtherExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classOtherExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   	
	  <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//typology/@classifierNum)='type' and normalize-space(//typology/@classifierTypeNumAgr)='yes'">
<example num="xClassifiers.30">
<table border="1">
			<caption>
				<xsl:text>Classes nominales par type</xsl:text>
			</caption>
			<tr>
			   <th>Type</th>
				<th>Accord en nombre</th>
				<th>Marqueurs de classe</th>
				<th>Glose</th>
			</tr>
			<tr>
<td>
				  <xsl:text>animal</xsl:text>
			   </td>
<td>
<xsl:text>singulier</xsl:text>
</td>
<xsl:for-each select="//typology/classAnimalSgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classAnimalSgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classAnimalSgExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>animal</xsl:text>
			   </td>
<td>
<xsl:text>pluriel</xsl:text>
</td>
<xsl:for-each select="//typology/classAnimalPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classAnimalPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classAnimalPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>insecte</xsl:text>
			   </td>
<td>
<xsl:text>singulier</xsl:text>
</td>
<xsl:for-each select="//typology/classInsectSgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classInsectSgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classInsectSgExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>insecte</xsl:text>
			   </td>
<td>
<xsl:text>pluriel</xsl:text>
</td>
<xsl:for-each select="//typology/classInsectPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classInsectPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classInsectPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>liquide</xsl:text>
			   </td>
<td>
<xsl:text>singulier</xsl:text>
</td>
<xsl:for-each select="//typology/classLiquidSgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classLiquidSgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classLiquidSgExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>liquide</xsl:text>
			   </td>
<td>
<xsl:text>pluriel</xsl:text>
</td>
<xsl:for-each select="//typology/classLiquidPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classLiquidPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classLiquidPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>rond</xsl:text>
			   </td>
<td>
<xsl:text>singulier</xsl:text>
</td>
<xsl:for-each select="//typology/classRoundSgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classRoundSgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classRoundSgExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>rond</xsl:text>
			   </td>
<td>
<xsl:text>pluriel</xsl:text>
</td>
<xsl:for-each select="//typology/classRoundPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classRoundPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classRoundPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>cylindrique</xsl:text>
			   </td>
<td>
<xsl:text>singulier</xsl:text>
</td>
<xsl:for-each select="//typology/classCylinderSgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classCylinderSgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classCylinderSgExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>cylindrique</xsl:text>
			   </td>
<td>
<xsl:text>pluriel</xsl:text>
</td>
<xsl:for-each select="//typology/classCylinderPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classCylinderPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classCylinderPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
			   	<xsl:text>sphérique</xsl:text>
			   </td>
<td>
<xsl:text>singulier</xsl:text>
</td>
<xsl:for-each select="//typology/classSphereSgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classSphereSgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classSphereSgExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
			   	<xsl:text>sphérique</xsl:text>
			   </td>
<td>
<xsl:text>pluriel</xsl:text>
</td>
<xsl:for-each select="//typology/classSpherePlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classSpherePlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classSpherePlExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>arbre</xsl:text>
			   </td>
<td>
<xsl:text>singulier</xsl:text>
</td>
<xsl:for-each select="//typology/classTreeSgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classTreeSgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classTreeSgExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>arbre</xsl:text>
			   </td>
<td>
<xsl:text>pluriel</xsl:text>
</td>
<xsl:for-each select="//typology/classTreePlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classTreePlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classTreePlExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>en bois</xsl:text>
			   </td>
<td>
<xsl:text>singulier</xsl:text>
</td>
<xsl:for-each select="//typology/classWoodSgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classWoodSgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classWoodSgExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>en bois</xsl:text>
			   </td>
<td>
<xsl:text>pluriel</xsl:text>
</td>
<xsl:for-each select="//typology/classWoodPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classWoodPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classWoodPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>SAISIR TYPE</xsl:text>
			   </td>
<td>
<xsl:text>singulier</xsl:text>
</td>
<xsl:for-each select="//typology/classOtherSgExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classOtherSgExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classOtherSgExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
				  <xsl:text>SAISIR TYPE</xsl:text>
			   </td>
<td>
<xsl:text>pluriel</xsl:text>
</td>
<xsl:for-each select="//typology/classOtherPlExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<td> </td>
<td> </td>
<xsl:for-each select="//typology/classOtherPlExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classOtherPlExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
	  <xsl:if test="normalize-space(//typology/@classifier)='yesAgr' and normalize-space(//typology/@classifierNum)='number'">
<example num="xClassifiers.32">
<table border="1">
			<caption>
				<xsl:text>Classes nominales par numéro</xsl:text>
			</caption>
			<tr>
			   <th>Numéro de classe</th>
				<th>Accord en nombre</th>
			   <th>Marqueur de classe</th>
			   <th>Glose</th>
			</tr>
			<tr>
<td>
				  <xsl:text>1</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class1agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class1agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class1agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class1Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class1Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class1Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>2</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class2agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class2agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class2agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class2Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class2Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class2Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>3</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class3agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class3agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class3agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class3Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class3Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class3Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>4</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class4agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class4agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class4agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class4Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class4Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class4Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>5</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class5agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class5agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class5agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class5Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class5Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class5Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>6</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class6agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class6agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class6agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class6Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class6Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class6Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>7</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class7agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class7agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class7agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class7Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class7Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class7Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>8</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class8agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class8agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class8agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class8Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class8Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class8Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>9</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class9agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class9agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class9agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class9Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class9Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class9Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>10</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class10agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class10agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class10agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class10Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class10Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class10Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>11</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class11agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class11agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class11agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class11Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class11Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class11Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>12</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class12agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class12agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class12agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class12Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class12Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class12Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>13</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class13agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class13agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class13agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class13Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class13Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class13Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>14</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class14agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class14agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class14agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class14Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class14Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class14Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>15</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class15agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class15agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class15agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class15Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class15Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class15Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>16</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class16agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class16agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class16agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class16Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class16Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class16Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>17</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class17agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class17agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class17agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class17Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class17Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class17Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>18</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class18agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class18agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class18agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class18Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class18Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class18Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>19</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class19agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class19agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class19agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class19Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class19Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class19Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>20</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class20agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class20agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class20agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class20Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class20Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class20Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>21</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class21agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class21agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class21agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class21Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class21Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class21Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>22</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class22agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class22agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class22agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class22Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class22Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class22Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>23</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class23agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class23agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class23agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class23Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class23Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class23Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>24</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class24agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class24agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class24agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class24Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class24Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class24Example/form[position() &gt; 1]">
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
			<tr>
<td>
				  <xsl:text>25</xsl:text>
			   </td>
<td>
				  <xsl:choose>
					 <xsl:when test="//typology/@class25agr='sg'">singulier</xsl:when>
					 <xsl:when test="//typology/@class25agr='pl'">pluriel</xsl:when>
				  	<xsl:when test="//typology/@class25agr='irrelevant'">non pertinent</xsl:when>
				  </xsl:choose>
			   </td>
<xsl:for-each select="//typology/class25Example/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
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
<xsl:for-each select="//typology/class25Example/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/class25Example/form[position() &gt; 1]">
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
		 </table>
</example>
</xsl:if>

   	<xsl:if test="normalize-space(//typology/@classifier)='yesType'">
<p>
<xsl:text>Voici quelques exemples de noms accompagnés de leurs classificateurs de type :</xsl:text>
</p>
</xsl:if>
	  <xsl:if test="normalize-space(//typology/@classifier)='yesType'">
<example num="xClassifiers.36">
<table border="1">
	        <tr>
	           <th>Nom</th>
	           <th>Glose</th>
	        </tr>
	        <tr>
<xsl:for-each select="//typology/classifierTypeExample/form[1]">
<td>
<langData lang="lVernacular">
<xsl:value-of select="vernacular" />
</langData>
</td>
<td>
<gloss lang="lGloss">
<xsl:variable name="sGloss">
<xsl:value-of select="gloss" />
</xsl:variable>
<xsl:choose>
<xsl:when test="string-length(normalize-space($sGloss)) &gt; 0">
<xsl:value-of select="$sGloss" />
</xsl:when>
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
</xsl:choose>
</gloss>
</td>
</xsl:for-each>
</tr>
<xsl:if test="$fOutputStyle='Blessymol'">
<tr>
<xsl:for-each select="//typology/classifierTypeExample/form[1]">
<td>
<langData lang="lIPA">
<xsl:value-of select="ipa" />
</langData>
</td>
<td> </td>
</xsl:for-each>
</tr>
</xsl:if>
<xsl:for-each select="//typology/classifierTypeExample/form[position() &gt; 1]">
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
<xsl:otherwise>SAISIR GLOSE</xsl:otherwise>
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
   	<xsl:if test="normalize-space(//typology/@classifier)='yesAgr'">
<p>
<xsl:text>Voici quelques exemples de phrases mettant en évidence l’accord de classe nominale dans le syntagme nominal et dans le verbe :</xsl:text>
</p>
</xsl:if>
	  <xsl:if test="normalize-space(//typology/@classifier)='yesAgr'">
<example num="xClassifiers.40">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/classifierAgrExample" />
<xsl:with-param name="sExNumber">xClassifiers.40</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
   	<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific'">
<p>
<xsl:text>Voici quelques exemples de syntagmes nominaux illustrant divers classificateurs utilisés avec des numéraux ou des démonstratifs et des noms :</xsl:text>
</p>
</xsl:if>
   	<xsl:if test="normalize-space(//typology/@classifier)='yesSpecific'">
<example num="xClassifiers.44">
<xsl:call-template name="OutputInterlinearEntries">
<xsl:with-param name="sExamples" select="//typology/classifierSpecificExample" />
<xsl:with-param name="sExNumber">xClassifiers.44</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</example>
</xsl:if>
   </section1>
</xsl:if>
	
		
	
	
		
	

   
   
   

   
      
      
   
      
   
   
      
      
        
      
        
   
   
        
      
        
      
        
   
   
        
 
        
      
        
   
   
        
      
        
      
        
   
   
        
      
        
      
        
   
   
        
      
        
      
        
   
   
        
      
        
      
        
   
   
      
   
   
        
      
        
      
        
      
        
   
   
        
      
        
      
        
      
        
        
        
      
        
      
 
    
 
   
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
   
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
		
		
		
		
	
	
		
	
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
		
		
		
		
		
		
		
		
		
		
		
	
	
		
	
	
		
	
	
		
	
	
		
	
   
		
      
      
	   
	   
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
   
   
      
      
      
      
      
      
      
      
      
      
      

      
      
      
      
      
      
      
      
      
      
      
  
      
      
      
      
      
   
      
      
      
      
      
   
   
      
      
      
      
      
      
   
      
      
      
      
      
      
   
      
      
      
      
      
      
   
      
      
      
      
      
      
   
      
      
      
      
      
      
   
      
      
      
      
      
      
   
      
      
      
      
      
      
   
   
   
	  
	  
	  
   
   
	  
   
   
	  
	  
	  
	  
	  
	  
	  
   
   
	  
   
   
	  
   
	
		
	
	
	  
   
	
		
		
		
	
	
	  
	  
	  
   
   
	  
	  
	  
	  
	  
	  
	  
   
   
	  
	  
	  
	  
	  
   
	
		
		
		
		
		
	
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
	  
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   
   
	  
   

</xsl:template>
</xsl:stylesheet>
