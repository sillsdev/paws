<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="vpintcop">
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//coord/@conjWord)!='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//coord/@conjWord)!='no' or normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//coord/@conjWord)!='no'">
<xsl:text>
      rule {VP option conj - conjoined VPs}
      VP = (InitConj) VP_1 Conj VP_2
      &lt;VP head&gt; = &lt;VP_2 head&gt;
      &lt;VP_1 head type participle&gt; = &lt;VP_2 head type participle&gt;
      &lt;VP_1 head type gerund&gt; = &lt;VP_2 head type gerund&gt;
      &lt;VP_1 head type verbheaded&gt; = +
      &lt;VP_2 head type verbheaded&gt; = +
      &lt;VP_1 head fronted&gt; = none
      &lt;VP_2 head fronted&gt; = none
      &lt;Conj head type conjoins_IP&gt; = +
      &lt;VP conjoined&gt; = +
      &lt;VP_1 conjoined&gt; = -	|limit recursion
      &lt;VP head type prefix&gt; &lt;= &lt;VP_1 head type prefix&gt;
      &lt;VP option&gt; = conj
   </xsl:text>
</xsl:if>
   
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/proclitic/@checked)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/proclitic/@checked)='yes' or normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/proclitic/@checked)='yes'">
<xsl:text>
      rule {VP option conjPrefix - conjoined VPs}
      VP = VP_1 VP_2
      &lt;VP head&gt; = &lt;VP_2 head&gt;
      &lt;VP_1 head type participle&gt; = &lt;VP_2 head type participle&gt;
      &lt;VP_1 head type gerund&gt; = &lt;VP_2 head type gerund&gt;
      &lt;VP_1 head type verbheaded&gt; = +
      &lt;VP_2 head type verbheaded&gt; = +
      &lt;VP_1 head fronted&gt; = none
      &lt;VP_2 head fronted&gt; = none
      &lt;VP_2 head type prefix conj&gt; = +
      &lt;VP conjoined&gt; = +
      &lt;VP_1 conjoined&gt; = -	|limit recursion
      &lt;VP head type prefix&gt; &lt;= &lt;VP_1 head type prefix&gt;
      &lt;VP option&gt; = conjPrefix
   </xsl:text>
</xsl:if>
   
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
   	
   	
   	
      	
      	
      	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/enclitic/@checked)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/enclitic/@checked)='yes' or normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/enclitic/@checked)='yes'">
<xsl:text>
      rule {VP option conjSuffix - conjoined VPs}
      VP = VP_1 VP_2
      &lt;VP head&gt; = &lt;VP_2 head&gt;
      &lt;VP_1 head type participle&gt; = &lt;VP_2 head type participle&gt;
      &lt;VP_1 head type gerund&gt; = &lt;VP_2 head type gerund&gt;
      &lt;VP_1 head type verbheaded&gt; = +
      &lt;VP_2 head type verbheaded&gt; = +
      &lt;VP_1 head fronted&gt; = none
      &lt;VP_2 head fronted&gt; = none
      &lt;VP_1 head type suffix conj&gt; = +
      &lt;VP conjoined&gt; = +
      &lt;VP_1 conjoined&gt; = -	|limit recursion
      &lt;VP head type prefix&gt; &lt;= &lt;VP_1 head type prefix&gt;
      &lt;VP option&gt; = conjSuffix
   </xsl:text>
</xsl:if>
   
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
   	
   	
      	
      	
      	
      	
      	
   	
   	
   	
      	
      	
   	
   	
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/attachesOther/@checked)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/attachesOther/@checked)='yes' or normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/attachesOther/@checked)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//coord/@noConj)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//coord/@noConj)='yes' or normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//coord/@noConj)='yes'">
<xsl:text>
      rule {VP option conjNone - conjoined VPs}
      VP = VP_1 VP_2
      &lt;VP head&gt; = &lt;VP_2 head&gt;
      &lt;VP_1 head type participle&gt; = &lt;VP_2 head type participle&gt;
      &lt;VP_1 head type gerund&gt; = &lt;VP_2 head type gerund&gt;
      &lt;VP_1 head type verbheaded&gt; = +
      &lt;VP_2 head type verbheaded&gt; = +
      &lt;VP_1 head fronted&gt; = none
      &lt;VP_2 head fronted&gt; = none
      &lt;VP_1 head type suffix conj&gt; = -
      &lt;VP_2 head type prefix conj&gt; = -
      &lt;VP_1 head type comma&gt; = -
      &lt;VP conjoined&gt; = +
      &lt;VP_1 conjoined&gt; = -	|limit recursion
      &lt;VP head type prefix&gt; &lt;= &lt;VP_1 head type prefix&gt;
      &lt;VP option&gt; = conjNone
   </xsl:text>
</xsl:if>
   
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
   	
   	
      	
      	
      	
      	
      	
   	
   	
   	
      	
      	
   	
   	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
   	
   	
   	
   	
      	
   
   <xsl:if test="normalize-space(//ip/@auxMany)='yes' and normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//ip/@auxMany)='yes' and normalize-space(//typology/@wordOrder)='VOS' or normalize-space(//ip/@auxMany)='yes' and normalize-space(//typology/@wordOrder)='VSO'">
<xsl:text>
rule {VP option 0a - Aux initial, VP complement}
VP = Aux VP_1
	&lt;VP head&gt; = &lt;VP_1 head&gt;
	&lt;VP head type auxiliary&gt; = +	     | must have higher aux 
	&lt;Aux head infl polarity&gt; = positive	     | positive aux only 
	{&lt;VP head infl finite&gt; = -
	/&lt;VP head infl finite&gt; = +
	 &lt;Aux head infl tense&gt; =  &lt;VP head infl tense&gt;
       	}
       	&lt;Aux head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
	&lt;VP option&gt; = 0a
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//ip/@auxMany)='yes' and normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//ip/@auxMany)='yes' and normalize-space(//typology/@wordOrder)='OVS' or normalize-space(//ip/@auxMany)='yes' and normalize-space(//typology/@wordOrder)='OSV'">
<xsl:text>
rule {VP option 0b - Aux final, VP complement}
VP = VP_1 Aux
	&lt;VP head&gt; = &lt;VP_1 head&gt;
	&lt;VP head type auxiliary&gt; = +	     | must have higher aux
	&lt;Aux head infl polarity&gt; = positive	     | positive aux only 
	{&lt;VP head infl finite&gt; = -
	/&lt;VP head infl finite&gt; = +
	 &lt;Aux head infl tense&gt; =  &lt;VP head infl tense&gt;
       	}
       	&lt;VP_1 head type comma&gt; = -
       	&lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
       	&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
	&lt;VP option&gt; = 0b
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//q/@contFront)='before'">
<xsl:text>
rule {VP option 0c - Aux only for non-root copular questions}
VP = Aux
	&lt;VP head&gt; = &lt;Aux head&gt;
	&lt;Aux head infl polarity&gt; = positive	      | positive aux only
	&lt;VP head type copular&gt; = +
	&lt;VP head type question&gt; = +
	&lt;VP head type root&gt; = -
	&lt;VP option&gt; = 0c
</xsl:text>
</xsl:if>
	
		
		
		
	
	<xsl:if test="normalize-space(//advp/@mannerType)!='affix'">
<xsl:text>
rule {VP option 1a - manner AdvP initial, adjoined to VP}
VP = AdvP VP_1
	&lt;VP head&gt; = &lt;VP_1 head&gt;
	&lt;AdvP head type manner&gt; = +
	&lt;AdvP head infl polarity&gt; = positive	      | positive adv only
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
	&lt;VP option&gt; = 1a
</xsl:text>
</xsl:if>
	
		
	
	<xsl:text>
rule {VP option 1b - AdvP final, adjoined to VP}
VP = VP_1 AdvP
	&lt;VP head&gt; = &lt;VP_1 head&gt;
	&lt;AdvP head infl polarity&gt; = positive            | positive adv only
	&lt;VP_1 head type case-marked&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
	&lt;VP head adverbial&gt; &lt;= &lt;AdvP&gt;
	&lt;VP head&gt; == [type:[motion:+]] -&gt; ~[adverbial:[head:[type:[locative:+]]]] |Locative needs to be inside VP
	&lt;VP option&gt; = 1b
</xsl:text>
	<xsl:text>
rule {VP option 1c - PP final, adjoined to VP}
VP = VP_1 PP
	&lt;VP head&gt; = &lt;VP_1 head&gt;
	&lt;VP_1 head type case-marked&gt; = -
	&lt;VP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP option&gt; = 1c
</xsl:text>
	<xsl:if test="normalize-space(//focus/@focus)='no' or normalize-space(//focus/@focus)='yes' and normalize-space(//focus/@focusPos)!='after'">
<xsl:text>
rule {VP option 1d - heavy DP final, adjoined to VP}
VP = VP_1 DP
	&lt;VP head&gt; = &lt;VP_1 head&gt;
	&lt;DP head type no_N&gt; = -
	&lt;VP_1 head type verbheaded&gt; = +             
	&lt;VP_1 head type case-marked&gt; = -        
	&lt;VP_1 head type heavy_DP&gt; = -               | to restrict recursion
	&lt;VP head type heavy_DP&gt; &lt;= +
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP head adjoined&gt; = &lt;DP&gt;
	&lt;VP head&gt; == [type:[motion:+]] -&gt; ~[adjoined:[head:[type:[locative:+]]]]
	&lt;VP head&gt; == [type:[motion:+]] -&gt; ~[adjoined:[head:[case:dative]]]
	&lt;VP option&gt; = 1d
	</xsl:text>
</xsl:if>
	
		
		
		
		
				
	

   <xsl:if test="normalize-space(//np/@caseN)='yes' and normalize-space(//typology/@case)='nominative' or normalize-space(//np/@caseN)='yes' and normalize-space(//typology/@case)='split'">
<xsl:text>
      rule {VP option 1eInom - case-marked DP initial, adjoined to VP}
      VP = DP VP_1
      &lt;VP head&gt; = &lt;VP_1 head&gt;
      &lt;DP head type no_N&gt; = -
      &lt;VP_1 head type verbheaded&gt; = +             
      &lt;DP head type case-marked&gt; = -        
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP head adjoined&gt; = &lt;DP&gt;
      &lt;DP head&gt; == ~[case:nominative]
      &lt;DP head&gt; == ~[case:accusative]
      &lt;DP head&gt; == ~[case:genitive]
      &lt;VP head&gt; == [type:[motion:+]] -&gt; ~[adjoined:[head:[case:locative]]]
      &lt;VP head&gt; == [type:[motion:+]] -&gt; ~[adjoined:[head:[case:dative]]]
      &lt;VP option&gt; = 1eInom
   </xsl:text>
</xsl:if>
   
      
      
      

      
      
      
   
   <xsl:if test="normalize-space(//np/@caseN)='yes' and normalize-space(//typology/@case)='nominative' or normalize-space(//np/@caseN)='yes' and normalize-space(//typology/@case)='split'">
<xsl:text>
      rule {VP option 1eIerg - case-marked DP initial, adjoined to VP}
      VP = DP VP_1
      &lt;VP head&gt; = &lt;VP_1 head&gt;
      &lt;DP head type no_N&gt; = -
      &lt;VP_1 head type verbheaded&gt; = +             
      &lt;DP head type case-marked&gt; = -        
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP head adjoined&gt; = &lt;DP&gt;
      &lt;DP head&gt; == ~[case:ergative]
      &lt;DP head&gt; == ~[case:absolutive]
      &lt;DP head&gt; == ~[case:genitive]
      &lt;VP head&gt; == [type:[motion:+]] -&gt; ~[adjoined:[head:[case:locative]]]
      &lt;VP head&gt; == [type:[motion:+]] -&gt; ~[adjoined:[head:[case:dative]]]
      &lt;VP option&gt; = 1eIerg
   </xsl:text>
</xsl:if>
   
      
      
      
      
      
      
      
   
   <xsl:if test="normalize-space(//np/@caseN)='yes' and normalize-space(//typology/@case)='nominative' or normalize-space(//np/@caseN)='yes' and normalize-space(//typology/@case)='split'">
<xsl:text>
      rule {VP option 1eFnom - case-marked DP final, adjoined to VP}
      VP = VP_1 DP
      &lt;VP head&gt; = &lt;VP_1 head&gt;
      &lt;DP head type no_N&gt; = -
      &lt;VP_1 head type verbheaded&gt; = +             
      &lt;DP head type case-marked&gt; = -        
      &lt;VP_1 head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP head adjoined&gt; = &lt;DP&gt;
      &lt;DP head&gt; == ~[case:nominative]
      &lt;DP head&gt; == ~[case:accusative]
      &lt;DP head&gt; == ~[case:genitive]
      &lt;VP head&gt; == [type:[motion:+]] -&gt; ~[adjoined:[head:[case:locative]]]
      &lt;VP head&gt; == [type:[motion:+]] -&gt; ~[adjoined:[head:[case:dative]]]
      &lt;VP option&gt; = 1eFnom
   </xsl:text>
</xsl:if>
   
      
      
      
      
      
      
      
   
   <xsl:if test="normalize-space(//np/@caseN)='yes' and normalize-space(//typology/@case)='nominative' or normalize-space(//np/@caseN)='yes' and normalize-space(//typology/@case)='split'">
<xsl:text>
      rule {VP option 1eFerg - case-marked DP final, adjoined to VP}
      VP = VP_1 DP
      &lt;VP head&gt; = &lt;VP_1 head&gt;
      &lt;DP head type no_N&gt; = -
      &lt;VP_1 head type verbheaded&gt; = +             
      &lt;DP head type case-marked&gt; = -        
      &lt;VP_1 head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP head adjoined&gt; = &lt;DP&gt;
      &lt;DP head&gt; == ~[case:ergative]
      &lt;DP head&gt; == ~[case:absolutive]
      &lt;DP head&gt; == ~[case:genitive]
      &lt;VP head&gt; == [type:[motion:+]] -&gt; ~[adjoined:[head:[case:locative]]]
      &lt;VP head&gt; == [type:[motion:+]] -&gt; ~[adjoined:[head:[case:dative]]]
      &lt;VP option&gt; = 1eFerg
   </xsl:text>
</xsl:if>
   
      
      
      
      
      
      
      
   
  
   
   <xsl:if test="normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV'">
<xsl:text>
rule {VP option 2a - V initial/final, intransitive}
VP = V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;VP option&gt; = 2a
</xsl:text>
</xsl:if>
	
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 2b - VSO order, intransitive}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;DP head type locative&gt; = -  	|can't be locative for motion verb
	&lt;DP head type possessive&gt; = -  	|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -	|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;DP head&gt; == ~[case:accusative]
	&lt;DP head&gt; == ~[case:ergative]
	&lt;DP head&gt; == ~[case:dative]
	&lt;VP option&gt; = 2b
</xsl:text>
</xsl:if>
	
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 2bNeg - VSO order, intransitive, neg subj requires neg verb}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;DP head type locative&gt; = -  	|can't be locative for motion verb
	&lt;DP head type possessive&gt; = -  	|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -	|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;DP head&gt; == ~[case:accusative]
	&lt;DP head&gt; == ~[case:ergative]
	&lt;DP head&gt; == ~[case:dative]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, verb must be 
                     [infl:[polarity:negative]]
		&lt;VP option&gt; = 2bNeg
</xsl:text>
</xsl:if>
	
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropImp/@checked)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>
rule {VP option 2bi - VSO/OSV order, intransitive, imperative}
VP = V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood&gt; =  imperative
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;VP head type question&gt; = -
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 2bi
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropYes/@checked)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropClitic/@checked)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropYes/@checked)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropClitic/@checked)='yes'">
<xsl:text>
rule {VP option 2bp - VSO/OSV order, intransitive, pro-drop}
VP = V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;VP head type pro-drop&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;VP head infl mood&gt; = declarative
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 2bp
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 2c - OSV order, intransitive}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;DP head type locative&gt; = -	| can't be locative for motion V
	&lt;DP head type possessive&gt; = -  	|subject not possessive
	&lt;DP head type reflexive&gt; = -	|subject not reflexive
	&lt;DP head type reciprocal&gt; = -	|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -        | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;DP head&gt; == ~[case:accusative]
 	&lt;DP head&gt; == ~[case:ergative]
 	&lt;DP head&gt; == ~[case:dative]
 	&lt;VP option&gt; = 2c
</xsl:text>
</xsl:if>
	
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 2cNeg - OSV order, intransitive, neg subject requires neg verb}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;DP head type locative&gt; = -	| can't be locative for motion V
	&lt;DP head type possessive&gt; = -  	|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -	|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;DP head&gt; == ~[case:accusative]
	&lt;DP head&gt; == ~[case:ergative]
	&lt;DP head&gt; == ~[case:dative]
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, verb must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 2cNeg
</xsl:text>
</xsl:if>
	
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//q/@contFront)='before' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//q/@contFront)='before'">
<xsl:text>
rule {VP option 2d - VSO/OSV, intransitive, subject questioned} 
VP = V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V  head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;VP option&gt; = 2d
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//focus/@focus)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//focus/@focus)='yes'">
<xsl:text>
rule {VP option 2dfoc - VSO/OSV, intransitive, subject focused}
VP = V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V  head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;VP option&gt; = 2dfoc
</xsl:text>
</xsl:if>
	
		
	   	
	   	
	   	
		
		
		

	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//typology/@wordOrder)='VOS' or normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//typology/@wordOrder)='SVO'">
<xsl:text>
rule {VP option 3a - V initial, motion intransitive}
VP = V {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 3a
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='VOS' or normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='SVO'">
<xsl:text>
rule {VP option 3aNeg - V initial, motion intransitive, neg adv requires neg verb}
VP = V {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 3aNeg
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//typology/@wordOrder)='OVS' or normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//typology/@wordOrder)='SOV'">
<xsl:text>
rule {VP option 3b - V final, motion intransitive}
VP = {PP / AdvP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 3b
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='OVS' or normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='SOV'">
<xsl:text>
rule {VP option 3bNeg - V final, motion intransitive, neg adv requires neg verb}
VP = {PP / AdvP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 3bNeg
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after'">
<xsl:text>
rule {VP option 3bQSubj - V final, motion intransitive, subject questioned}
VP = {PP / AdvP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head subject&gt; = &lt;DP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head type wh&gt; = +
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
		&lt;VP option&gt; = 3bQSubj
</xsl:text>
</xsl:if>
	
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@negFront)='beforeVerb' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 3bNegSubj - V final, motion intransitive, subject negative}
VP = {PP / AdvP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head subject&gt; = &lt;DP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head type wh&gt; = -
	&lt;DP head infl polarity&gt; = negative
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
		&lt;VP option&gt; = 3bNegSubj
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@negFront)='beforeVerb' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 3bNegSubjVerbRequired - V final, motion intransitive, subject and verb negative}
VP = {PP / AdvP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head subject&gt; = &lt;DP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head type wh&gt; = -
	&lt;DP head infl polarity&gt; = negative
	&lt;V head infl polarity&gt; = negative        | neg subject requires neg verb
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 3bNegSubjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after'">
<xsl:text>
rule {VP option 3bQAdvP - V final, motion intransitive, adverb questioned}
VP = {PP / AdvP} AdvP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head type question&gt; = +
	&lt;AdvP_1 head type wh&gt; = +
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;AdvP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
		&lt;VP option&gt; = 3bQAdvP
</xsl:text>
</xsl:if>
	
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@negFront)='beforeVerb' and normalize-space(//neg/@advVerbRequired)='no'">
<xsl:text>
rule {VP option 3bNegAdvP - V final, motion intransitive, negative adverb}
VP = {PP / AdvP} AdvP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;AdvP_1 head infl polarity&gt; = negative
	&lt;AdvP_1 head type wh&gt; = -
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;AdvP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 3bNegAdvP
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@negFront)='beforeVerb' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text>
rule {VP option 3bNegAdvPVerbRequired - V final, motion intransitive, negative adverb and verb}
VP = {PP / AdvP} AdvP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;V head infl polarity&gt; = negative
	&lt;AdvP_1 head infl polarity&gt; = negative
	&lt;AdvP_1 head type wh&gt; = -
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;AdvP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 3bNegAdvPVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@advVerbRequired)='no'">
<xsl:text>
rule {VP option 3c - VSO order, motion intransitive}
VP = V DP {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;DP head&gt; == ~[case:accusative]
 	 &lt;DP head&gt; == ~[case:ergative]
 	 &lt;DP head&gt; == ~[case:dative]
 	 &lt;VP option&gt; = 3c
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='no'">
<xsl:text>
rule {VP option 3cNegSubjVerbRequired - VSO order, motion intransitive, neg subject requires neg verb}
VP = V DP {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, verb must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;DP head&gt; == ~[case:accusative]
 	 &lt;DP head&gt; == ~[case:ergative]
 	 &lt;DP head&gt; == ~[case:dative]
 	 &lt;VP option&gt; = 3cNegSubjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text>
rule {VP option 3cNegSubjOrAdvVerbRequired - VSO order, motion intransitive, neg subject or adv requires neg verb}
VP = V DP {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, verb must be 
                     [infl:[polarity:negative]]
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;DP head&gt; == ~[case:accusative]
 	 &lt;DP head&gt; == ~[case:ergative]
 	 &lt;DP head&gt; == ~[case:dative]
 	 &lt;VP option&gt; = 3cNegSubjOrAdvVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text> 
rule {VP option 3cNegAdvVerbRequired - VSO order, motion intransitive, neg adv requires neg verb}
VP = V DP {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;DP head&gt; == ~[case:accusative]
 	 &lt;DP head&gt; == ~[case:ergative]
 	 &lt;DP head&gt; == ~[case:dative]
 	 &lt;VP option&gt; = 3cNegAdvVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//neg/@advVerbRequired)='no'">
<xsl:text>
rule {VP option 3ci - VSO order, motion intransitive, imperative}
VP = V {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;VP head infl mood&gt; =  imperative
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type motion&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
		&lt;VP option&gt; = 3ci
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text>
rule {VP option 3ciNegAdvVerbRequired - VSO order, motion intransitive, imperative, neg adv requires neg verb}
VP = V {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type motion&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 3ciNegAdvVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropYes/@checked)='yes' or normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropClitic/@checked)='yes'">
<xsl:text>
rule {VP option 3cp - VSO order, motion intransitive, pro-drop}
VP = V {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;VP head infl mood&gt; = declarative
	&lt;V head type motion&gt; = +
	&lt;VP head type pro-drop&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;VP option&gt; = 3cp
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropYes/@checked)='yes' or normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropClitic/@checked)='yes'">
<xsl:text>
rule {VP option 3cpNegAdvVerbRequired - VSO order, motion intransitive, pro-drop, neg adv requires neg verb}
VP = V {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;VP head infl mood&gt; = declarative
	&lt;V head type motion&gt; = +
	&lt;VP head type pro-drop&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;VP option&gt; = 3cpNegAdvVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//typology/@wordOrder)='OSV'">
<xsl:text>
rule {VP option 3d - OSV order, motion intransitive}
VP = {PP / AdvP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;DP head&gt; == ~[case:accusative]
 	 &lt;DP head&gt; == ~[case:ergative]
 	 &lt;DP head&gt; == ~[case:dative]
 	 &lt;VP option&gt; = 3d
</xsl:text>
</xsl:if>
	
		
		
		
	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='OSV'">
<xsl:text>
rule {VP option 3dNegAdvVerbRequired - OSV order, motion intransitive}
VP = {PP / AdvP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;DP head&gt; == ~[case:accusative]
 	 &lt;DP head&gt; == ~[case:ergative]
 	 &lt;DP head&gt; == ~[case:dative]
 	 &lt;VP option&gt; = 3dNegAdvVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>
rule {VP option 3di - OSV order, motion intransitive, imperative}
VP = {PP / AdvP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type motion&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 3di
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>
rule {VP option 3diNegAdvVerbRequired - OSV order, motion intransitive, imperative}
VP = {PP / AdvP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type motion&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;VP head type question&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 3diNegAdvVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropYes/@checked)='yes' or normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropClitic/@checked)='yes'">
<xsl:text>
rule {VP option 3dp - OSV order, motion intransitive, pro-drop}
VP = {PP / AdvP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head infl mood&gt; = declarative
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;VP head type pro-drop&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;VP option&gt; = 3dp
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropYes/@checked)='yes' or normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropClitic/@checked)='yes'">
<xsl:text>
rule {VP option 3dpNegAdvVerbRequired - OSV order, motion intransitive, pro-drop}
VP = {PP / AdvP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head infl mood&gt; = declarative
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;VP head type pro-drop&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;VP option&gt; = 3dpNegAdvVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//q/@contFront)='before' and normalize-space(//neg/@advVerbRequired)='no'">
<xsl:text>
rule {VP option 3e - VSO order, motion intransitive, subject questioned}
VP = V {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
		&lt;VP option&gt; = 3e
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//focus/@focus)='yes'">
<xsl:text>
rule {VP option 3efoc - VSO order, motion intransitive, subject focused}
VP = V {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
		&lt;VP option&gt; = 3efoc
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//q/@contFront)='before' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text>
rule {VP option 3eNegAdvVerbRequired - VSO order, motion intransitive, subject questioned}
VP = V {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 3eNegAdvVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//focus/@focus)='yes'">
<xsl:text>
rule {VP option 3eNegAdvVerbRequiredFoc - VSO order, motion intransitive, subject focused}
VP = V {PP / AdvP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 3eNegAdvVerbRequiredFoc
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//q/@contFront)='before' and normalize-space(//neg/@advVerbRequired)='no'">
<xsl:text>
rule {VP option 3f - OSV order, motion intransitive, subject questioned}
VP = {PP / AdvP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
	&lt;VP option&gt; = 3f
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@advVerbRequired)='no' and normalize-space(//focus/@focus)='yes'">
<xsl:text>
rule {VP option 3fFoc - OSV order, motion intransitive, subject focused}
VP = {PP / AdvP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
	&lt;VP option&gt; = 3fFoc
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//q/@contFront)='before' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text>
rule {VP option 3fNegAdvVerbRequired - OSV order, motion intransitive, subject questioned}
VP = {PP / AdvP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 3fNegAdvVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@advVerbRequired)='yes' and normalize-space(//focus/@focus)='yes'">
<xsl:text>
rule {VP option 3fNegAdvVerbRequiredFoc - OSV order, motion intransitive, subject focused}
VP = {PP / AdvP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head location&gt; = &lt;PP&gt;
	&lt;VP head location&gt; = &lt;AdvP&gt;
	&lt;PP head type locative&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;AdvP head type locative&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head type copular&gt; = -
	&lt;V head type motion&gt; = +
	&lt;V head infl valence&gt; = active
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
	&lt;VP head&gt; == [locative:[head:[infl:[polarity:negative]]]] -&gt;  | if locative negative, verb must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 3fNegAdvVerbRequiredFoc
</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4a - V initial, copular, not passive}
VP = V {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4a
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4aNegVerbRequired - V initial, copular, not passive}
VP = V {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4aNegVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//typology/@wordOrder)='VOS'">
<xsl:text>
      rule {VP option 4aperc - V initial, perception verb, not passive}
      VP = V AdjP
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;V head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4aperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/existVerb/@checked)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/existPosition/@checked)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/existVerb/@checked)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/existPosition/@checked)='yes'">
<xsl:text>
      rule {VP option 4aexist - V initial, existential verb}
      VP = V DP (AdvP / PP / DP_1)
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type existential&gt; = +
      &lt;V head object&gt; = &lt;DP&gt;
      &lt;V head agr number&gt; = &lt;DP head agr number&gt;     
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdvP head type locative&gt; = +
      &lt;PP head type locative&gt; = +
      &lt;DP_1 head type locative&gt; = +
      &lt;V head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4aexist
   </xsl:text>
</xsl:if>
   
      	
      	
      	
      	
   	
   	
   	
   	
   	
      	
      	
   	
   	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4b - V final, copular, not passive}
VP = {PP / AdjP / DP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4b
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4bNegVerbRequired - V final, copular, not passive}
VP = {PP / AdjP / DP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4bNegVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//typology/@wordOrder)='OVS'">
<xsl:text>
      rule {VP option 4bperc - V final, perception, not passive}
      VP = AdjP V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4bperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/existVerb/@checked)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/existPosition/@checked)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/existVerb/@checked)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/existPosition/@checked)='yes'">
<xsl:text>
      rule {VP option 4bexist - V final, existential verb}
      VP = (AdvP / PP / DP_1) DP V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type existential&gt; = +
      &lt;V head object&gt; = &lt;DP&gt;
      &lt;V head agr number&gt; = &lt;DP head agr number&gt;     
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdvP head type locative&gt; = +
      &lt;PP head type locative&gt; = +
      &lt;DP_1 head type locative&gt; = +
      &lt;DP head type comma&gt; = -
      &lt;AdvP head type comma&gt; = -
      &lt;PP head type comma&gt; = -
      &lt;DP_1 head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4bexist 
   </xsl:text>
</xsl:if>
   
      	
      	
      	
      	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@copular)!='no' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4bQSubj - V final, copular, not passive, subject questioned}
VP = {PP / AdjP / DP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head subject&gt; = &lt;DP_1&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = +
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP option&gt; = 4bQSubj
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@copular)!='no' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4bQSubjNegObjVerbRequired - V final, copular, not passive, subject questioned}
VP = {PP / AdjP / DP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head subject&gt; = &lt;DP_1&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = +
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 4bQSubjNegObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after'">
<xsl:text>
      rule {VP option 4bQSubjperc - V final, perception, not passive, subject questioned}
      VP = AdjP DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;VP head subject&gt; = &lt;DP_1&gt;
      &lt;VP head type question&gt; = +
      &lt;VP head type pro-drop&gt; = -
      &lt;DP_1 head type wh&gt; = +
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;PP head type sentential&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP option&gt; = 4bQSubjperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
      <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@negFront)='beforeVerb' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='yes'">
<xsl:text>
rule {VP option 4bNegSubj - V final, copular, not passive, subject negative}
VP = {PP / AdjP / DP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head subject&gt; = &lt;DP_1&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = -
	&lt;DP_1 head infl polarity&gt; = negative
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4bNegSubj
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@negFront)='beforeVerb' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 4bNegSubjVerbRequired - V final, copular, not passive, subject negative}
VP = {PP / AdjP / DP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head subject&gt; = &lt;DP_1&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = -
	&lt;DP_1 head infl polarity&gt; = negative
	&lt;VP head infl polarity&gt; = negative
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4bNegSubjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@negFront)='beforeVerb' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
      rule {VP option 4bNegSubjperc - V final, perception, not passive, subject negative}
      VP = AdjP DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;VP head subject&gt; = &lt;DP_1&gt;
      &lt;VP head type pro-drop&gt; = -
      &lt;DP_1 head type wh&gt; = -
      &lt;DP_1 head infl polarity&gt; = negative
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;PP head type sentential&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;DP_1 head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4bNegSubjperc
   </xsl:text>
</xsl:if>
   
      
      
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@negFront)='beforeVerb' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
      rule {VP option 4bNegSubjVerbRequiredperc - V final, perception, not passive, subject negative}
      VP = AdjP DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;VP head subject&gt; = &lt;DP_1&gt;
      &lt;VP head type pro-drop&gt; = -
      &lt;DP_1 head type wh&gt; = -
      &lt;DP_1 head infl polarity&gt; = negative
      &lt;VP head infl polarity&gt; = negative
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;DP_1 head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4bNegSubjVerbRequiredperc
   </xsl:text>
</xsl:if>
   
      
      
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@negFront)='beforeVerb' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='yes'">
<xsl:text>
rule {VP option 4bNegSubjObjVerbRequired - V final, copular, not passive, subject negative}
VP = {PP / AdjP / DP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head subject&gt; = &lt;DP_1&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;DP_1 head type wh&gt; = -
	&lt;DP_1 head infl polarity&gt; = negative
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, verb must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4bNegSubjObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@copular)!='no' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4bQAdvP - V final, copular, not passive, AdvP questioned}
VP = {PP / AdjP / DP} AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4bQAdvP
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@copular)!='no' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4bQAdvPObjVerbRequired - V final, copular, not passive, AdvP questioned}
VP = {PP / AdjP / DP} AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 4bQAdvPObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@negFront)='beforeVerb' and normalize-space(//neg/@objVerbRequired)!='yes'">
<xsl:text>
rule {VP option 4bNegAdvP - V final, copular, not passive, negative AdvP}
VP = {PP / AdjP / DP} AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;AdvP head type wh&gt; = -
	&lt;AdvP head infl polarity&gt; = negative
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4bNegAdvP
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@negFront)='beforeVerb' and normalize-space(//neg/@objVerbRequired)='yes'">
<xsl:text>
rule {VP option 4bNegAdvPObjVerbRequired - V final, copular, not passive, negative AdvP}
VP = {PP / AdjP / DP} AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP&gt;
	&lt;AdvP head type wh&gt; = -
	&lt;AdvP head infl polarity&gt; = negative
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, verb must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4bNegAdvPObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//ip/@auxRequired)!='yes'">
<xsl:text>
rule {VP option 4c - copular sentence, no verb, not passive, no aux required}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;PP head type sentential&gt; = -
	&lt;VP head type copular&gt; = +
	&lt;VP head type verbheaded&gt; = -             | to restrict recursion
	&lt;VP head type transitive&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4c
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/existVerb/@checked)='no' and normalize-space(//ip/existPosition/@checked)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/existVerb/@checked)='no' and normalize-space(//ip/existPosition/@checked)='no'">
<xsl:text>
      rule {VP option 4cinitialexist - no verb, DP initial, existential}
      VP = DP (AdvP / PP / DP_1)
      &lt;VP head&gt; = &lt;DP head&gt;
      &lt;VP head type existential&gt; &lt;= +
      &lt;VP head type verbheaded&gt; = -    | no existential verb, so existential Adv required
      &lt;AdvP head type locative&gt; = +
      &lt;PP head type locative&gt; = +
      &lt;DP_1 head type locative&gt; = +
      &lt;D head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
      &lt;VP option&gt; = 4cinitialexist 
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
   	
   	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/existVerb/@checked)='no' and normalize-space(//ip/existPosition/@checked)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/existVerb/@checked)='no' and normalize-space(//ip/existPosition/@checked)='no'">
<xsl:text>
      rule {VP option 4cfinalexist - no verb, DP final, existential}
      VP = (AdvP / PP / DP_1) DP
      &lt;VP head&gt; = &lt;DP head&gt;
      &lt;VP head type existential&gt; &lt;= +
      &lt;VP head type verbheaded&gt; = -    | no existential verb, so existential Adv required
      &lt;AdvP head type locative&gt; = +
      &lt;PP head type locative&gt; = +
      &lt;DP_1 head type locative&gt; = +
      &lt;AdvP head type comma&gt; = -
      &lt;PP head type comma&gt; = -
      &lt;DP_1 head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
      &lt;VP option&gt; = 4cfinalexist 
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
   	
   	
      	
   	
   	
   	
   	
   
   
	<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)!='no' and normalize-space(//ip/@auxRequired)!='yes'">
<xsl:text>
rule {VP option 4caff - copular sentence, no verb, not passive, no aux required, copular affix}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
        {&lt;AdjP head type prefix copular&gt; = +
        /&lt;AdjP head type suffix copular&gt; = +
        }
        {&lt;DP head type prefix copular&gt; = +
        /&lt;DP head type suffix copular&gt; = +
        }
	&lt;PP head type sentential&gt; = -
	&lt;VP head type copular&gt; = +
	&lt;VP head type verbheaded&gt; = -             | to restrict recursion
	&lt;VP head type transitive&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4cpre
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes'">
<xsl:text>
rule {VP option 4d - copular sentence, no verb, not passive, aux required}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;PP head type sentential&gt; = -
	&lt;VP head type copular&gt; = +
	&lt;VP head type verbheaded&gt; = -             | to restrict recursion
	&lt;VP head type transitive&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4d
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
	

	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4e - VSO order, copular}
VP = V DP {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;DP head&gt; == ~[case:accusative]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;VP option&gt; = 4e
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@subjVerbRequired)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4eNegSubjVerbRequired - VSO order, copular}
VP = V DP {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;DP head&gt; == ~[case:accusative]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;VP option&gt; = 4eNegSubjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@subjVerbRequired)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4eNegSubjOrObjVerbRequired - VSO order, copular}
VP = V DP {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;DP head&gt; == ~[case:accusative]
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4eNegSubjOrObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4eNegObjVerbRequired - VSO order, copular}
VP = V DP {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;DP head&gt; == ~[case:accusative]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;VP option&gt; = 4eNegObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
      rule {VP option 4eperc - VSO order, perception}
      VP = V DP AdjP
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;DP head type possessive&gt; = -  		|subject not possessive
      &lt;DP head type reflexive&gt; = -		|subject not reflexive
      &lt;DP head type reciprocal&gt; = -		|subject not reciprocal
      &lt;DP head type suffix poss&gt; = -         | only in possessor position
      &lt;DP head type prefix poss&gt; = -
      &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;DP head type suffix copular&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;V head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;DP head&gt; == ~[case:accusative]
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP head fronted&gt; == ~[cat:DP]
      &lt;VP option&gt; = 4eperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/existVerb/@checked)='yes' and normalize-space(//ip/existWord/@checked)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/existPosition/@checked)='yes' and normalize-space(//ip/existWord/@checked)='yes'">
<xsl:text>
      rule {VP option 4eexistAdv - VSO order, existential verb, existential Adv as "subject"}
      VP = V AdvP_1 DP (AdvP / PP / DP_1)
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type existential&gt; = +
      &lt;AdvP_1 head type existential&gt; = +
      &lt;V head object&gt; = &lt;DP&gt;
      &lt;V head agr number&gt; = &lt;DP head agr number&gt;     
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdvP head type locative&gt; = +
      &lt;PP head type locative&gt; = +
      &lt;DP_1 head type locative&gt; = +
      &lt;V head type comma&gt; = -
      &lt;AdvP_1 head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4eexistAdv
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
      	
   	
   	
   	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/existVerb/@checked)='yes' and normalize-space(//ip/existWord/@checked)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/existPosition/@checked)='yes' and normalize-space(//ip/existWord/@checked)='no'">
<xsl:text>
      rule {VP option 4eexist - VSO order, existential verb, no existential Adv}
      VP = V DP (AdvP / PP / DP_1)
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type existential&gt; = +
      &lt;V head object&gt; = &lt;DP&gt;
      &lt;V head agr number&gt; = &lt;DP head agr number&gt;     
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdvP head type locative&gt; = +
      &lt;PP head type locative&gt; = +
      &lt;DP_1 head type locative&gt; = +
      &lt;V head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4eexist
   </xsl:text>
</xsl:if>
   
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@subjVerbRequired)!='no'">
<xsl:text>
      rule {VP option 4eNegSubjVerbRequiredperc - VSO order, perception}
      VP = V DP AdjP
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;PP head type sentential&gt; = -
      &lt;DP head type possessive&gt; = -  		|subject not possessive
      &lt;DP head type reflexive&gt; = -		|subject not reflexive
      &lt;DP head type reciprocal&gt; = -		|subject not reciprocal
      &lt;DP head type suffix poss&gt; = -         | only in possessor position
      &lt;DP head type prefix poss&gt; = -
      &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;DP head type suffix copular&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;V head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be 
      [infl:[polarity:negative]]
      &lt;DP head&gt; == ~[case:accusative]
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP head fronted&gt; == ~[cat:DP]
      &lt;VP option&gt; = 4eNegSubjVerbRequiredperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4ei - VSO order, copular, imperative}
VP = V {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;PP head type sentential&gt; = -
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;  | sentential PP
	&lt;DP head&gt; == ~[case:accusative]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4ei
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4eiNegObjVerbRequired - VSO order, copular, imperative}
VP = V {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;PP head type sentential&gt; = -
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;  | sentential PP
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;DP head&gt; == ~[case:accusative]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4eiNegObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>
      rule {VP option 4eiperc - VSO order, perception, imperative}
      VP = V  AdjP
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;VP head infl mood&gt; = imperative
      &lt;PP head type sentential&gt; = -
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;V head infl valence&gt; = active
      &lt;V head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;VP head type question&gt; = -
      &lt;V head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;DP head&gt; == ~[case:accusative]
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4eiperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4ep - VSO order, copular, pro-drop}
VP = V {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head type copular&gt; = +
	&lt;VP head infl mood&gt; = declarative
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = +
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;  | sentential PP
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4ep
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4epNegObjVerbRequired - VSO order, copular, pro-drop}
VP = V {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V head type copular&gt; = +
	&lt;VP head infl mood&gt; = declarative
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = +
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;  | sentential PP
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
        &lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4epNegObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/porDropYes/@checked)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/proDropClitic/@checked)='yes'">
<xsl:text>
      rule {VP option 4epperc - VSO order, perception, pro-drop}
      VP = V AdjP
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;VP head infl mood&gt; = declarative
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = +
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;V head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP head fronted&gt; == ~[cat:DP]
      &lt;VP option&gt; = 4epperc
   </xsl:text>
</xsl:if>
   
      
      
      
      
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//ip/@auxRequired)!='yes'">
<xsl:text>
rule {VP option 4f - VSO order, copular sentence, no verb, no Aux required}
VP = DP {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP_1 head&gt;
	&lt;VP head subject&gt; = &lt;DP&gt;
	&lt;VP head type verbheaded&gt; = -             | to restrict recursion
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type wh&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
|	&lt;DP_1 head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP_1 head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;  | sentential PP
	&lt;VP head type copular&gt; &lt;= +
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;DP head&gt; == ~[case:accusative]
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4f
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/existVerb/@checked)='no' and normalize-space(//ip/existPosition/@checked)='no' and normalize-space(//ip/existWord/@checked)='yes'">
<xsl:text>
      rule {VP option 4fexistAdv - VSO order, no existential verb, existential Adv as "subject"}
      VP = AdvP_1 DP (AdvP / PP / DP_1)
      &lt;VP head&gt; = &lt;DP head&gt;
      &lt;VP head type existential&gt; &lt;= +
      &lt;AdvP_1 head type existential&gt; = +
      &lt;VP head type verbheaded&gt; = -      
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdvP head type locative&gt; = +
      &lt;PP head type locative&gt; = +
      &lt;DP_1 head type locative&gt; = +
      &lt;AdvP_1 head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4fexistAdv
   </xsl:text>
</xsl:if>
   
      	
      	
   	
   	
   	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)!='no' and normalize-space(//ip/@auxRequired)!='yes'">
<xsl:text>
rule {VP option 4faff - VSO order, copular sentence, no verb, no Aux required, copular affix}
VP = DP {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP_1 head&gt;
       	{&lt;AdjP head type prefix copular&gt; = +
        /&lt;AdjP head type suffix copular&gt; = +
     	}
        {&lt;DP_1 head type prefix copular&gt; = + 
        /&lt;DP_1 head type suffix copular&gt; = + 
       	}
	&lt;VP head type transitive&gt; = -
	&lt;VP head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type wh&gt; = -
	&lt;DP_1 head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP_1 head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
	&lt;DP head&gt; == ~[case:accusative]
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4faff
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes'">
<xsl:text>
rule {VP option 4faux - VSO order, copular sentence, no verb, Aux required}
VP = DP {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP_1 head&gt;
	&lt;VP head type transitive&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type wh&gt; = -
	&lt;DP_1 head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP_1 head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;  | sentential PP
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
	&lt;DP head&gt; == ~[case:accusative]
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4faux
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/@auxRequired)!='yes'">
<xsl:text>
rule {VP option 4fi - VSO order, copular sentence, no verb, imperative, no Aux required}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;PP head type sentential&gt; = -
	&lt;VP head type transitive&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
	&lt;DP head&gt; == ~[case:accusative]
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4fi
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/@copularAffix)!='no' and normalize-space(//ip/@auxRequired)!='yes'">
<xsl:text>
rule {VP option 4fiaff - VSO order, copular sentence, no verb, imperative, no Aux required, copular affix}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
        {&lt;AdjP head type prefix copular&gt; = +
        /&lt;AdjP head type suffix copular&gt; = +
       	}
       	{&lt;DP head type prefix copular&gt; = + 
       	/&lt;DP head type suffix copular&gt; = + 
       	}
	&lt;VP head infl mood&gt; = imperative
	&lt;PP head type sentential&gt; = -
	&lt;VP head type transitive&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head type copular&gt; &lt;= +
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4fiaff
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes'">
<xsl:text>
rule {VP option 4fai - VSO order, copular sentence, no verb, imperative, Aux required}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;PP head type sentential&gt; = -
	&lt;VP head type transitive&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4fai
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@auxRequired)!='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@auxRequired)!='yes'">
<xsl:text>
rule {VP option 4fp - VSO order, copular sentence, no verb, pro-drop, no Aux required}
VP = {PP /  DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head type transitive&gt; = -
	&lt;VP head infl mood&gt; = declarative
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type wh&gt; = -
	&lt;DP head type relative&gt; = -		| avoid DP only IP
|	&lt;DP head type pronoun&gt; = -             | to restrict pronouns 
	&lt;DP head type quantifier&gt; = -          | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
	&lt;VP head type pro-drop&gt; &lt;= +
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 4fp
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@auxRequired)!='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@auxRequired)!='yes'">
<xsl:text>
rule {VP option 4fpAdj - VSO order, copular sentence, no verb Adj predicate, pro-drop, no Aux required}
VP = AdjP
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head type transitive&gt; = -
	&lt;VP head infl mood&gt; = declarative
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;VP head type copular&gt; &lt;= +
	&lt;VP head type pro-drop&gt; &lt;= +
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 4fpAdj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)!='no' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@auxRequired)!='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)!='no' and normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@auxRequired)!='yes'">
<xsl:text>
rule {VP option 4fpaff - VSO order, copular sentence, no verb, pro-drop, no Aux required, copular affix}
VP =  {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP_1 head&gt;
        {&lt;AdjP head type prefix copular&gt; = +
        /&lt;AdjP head type suffix copular&gt; = +
       	}
        {&lt;DP_1 head type prefix copular&gt; = + 
        /&lt;DP_1 head type suffix copular&gt; = + 
       	}
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = +
	&lt;VP head infl mood&gt; = declarative
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type wh&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -   
	&lt;VP head type copular&gt; &lt;= +
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4fpaff
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/proDropClitic/@checked)='yesClitic' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes'">
<xsl:text>
rule {VP option 4fap - VSO order, copular sentence, no verb, pro-drop, Aux required}
VP =  {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head type transitive&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type pro-drop&gt; = +
	&lt;VP head infl mood&gt; = declarative
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= - 
	&lt;VP head type copular&gt; &lt;= +
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4fap
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4g - OSV order, copular}
VP = {PP / AdjP / DP_1} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
 	&lt;DP head&gt; == ~[case:accusative]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;VP option&gt; = 4g
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@subjVerbRequired)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4gNegSubjVerbRequired - OSV order, copular}
VP = {PP / AdjP / DP_1} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be 
                     [infl:[polarity:negative]]
 	&lt;DP head&gt; == ~[case:accusative]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;VP option&gt; = 4gNegSubjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@subjVerbRequired)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4gNegSubjOrObjVerbRequired - OSV order, copular}
VP = {PP / AdjP / DP_1} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
 	&lt;DP head&gt; == ~[case:accusative]
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4gNegSubjOrObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4gNegObjVerbRequired - OSV order, copular}
VP = {PP / AdjP / DP_1} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
 	&lt;DP head&gt; == ~[case:accusative]
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4gNegObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
      rule {VP option 4gperc - OSV order, perception}
      VP = AdjP DP V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;VP head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;DP head type possessive&gt; = -  		|subject not possessive
      &lt;DP head type reflexive&gt; = -		|subject not reflexive
      &lt;DP head type reciprocal&gt; = -		|subject not reciprocal
      &lt;DP head type suffix poss&gt; = -         | only in possessor position
      &lt;DP head type prefix poss&gt; = -
      &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;DP head type suffix copular&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;DP head&gt; == ~[case:accusative]
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP head fronted&gt; == ~[cat:DP]
      &lt;VP option&gt; = 4gperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@subjVerbRequired)!='no'">
<xsl:text>
		rule {VP option 4gNegSubjVerbRequiredperc - OSV order, perception}
		VP = AdjP DP V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = +
		&lt;VP head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;DP head type possessive&gt; = -  		|subject not possessive
		&lt;DP head type reflexive&gt; = -		|subject not reflexive
		&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
		&lt;DP head type suffix poss&gt; = -         | only in possessor position
		&lt;DP head type prefix poss&gt; = -
		&lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
		&lt;DP head type suffix copular&gt; = -
		&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
		&lt;AdjP head type suffix copular&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
		&lt;VP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;  | if subject negative, VP must be 
		[infl:[polarity:negative]]
		&lt;DP head&gt; == ~[case:accusative]
		&lt;VP head fronted&gt; == ~[cat:FocusP]
		&lt;VP head fronted&gt; == ~[cat:DP]
		&lt;VP option&gt; = 4gNegSubjVerbRequiredperc
	</xsl:text>
</xsl:if>
	
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/existVerb/@checked)='yes' and normalize-space(//ip/existWord/@checked)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/existPosition/@checked)='yes' and normalize-space(//ip/existWord/@checked)='yes'">
<xsl:text>
      rule {VP option 4gexistAdv - OSV order, existential verb, existential Adv as "subject"}
      VP = (AdvP / PP / DP_1) DP AdvP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type existential&gt; = +
      &lt;AdvP_1 head type existential&gt; = +
      &lt;V head object&gt; = &lt;DP&gt;
      &lt;V head agr number&gt; = &lt;DP head agr number&gt;     
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdvP head type locative&gt; = +
      &lt;PP head type locative&gt; = +
      &lt;DP_1 head type locative&gt; = +
      &lt;AdvP_1 head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;AdvP head type comma&gt; = -
      &lt;PP head type comma&gt; = -
      &lt;DP_1 head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4gexistAdv
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
   	
   	
   	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/existVerb/@checked)='yes' and normalize-space(//ip/existWord/@checked)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/existPosition/@checked)='yes' and normalize-space(//ip/existWord/@checked)='no'">
<xsl:text>
      rule {VP option 4gexist - OSV order, existential verb, no existential Adv}
      VP = (AdvP / PP / DP_1) DP V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type existential&gt; = +
      &lt;V head object&gt; = &lt;DP&gt;
      &lt;V head agr number&gt; = &lt;DP head agr number&gt;     
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdvP head type locative&gt; = +
      &lt;PP head type locative&gt; = +
      &lt;DP_1 head type locative&gt; = +
      &lt;DP head type comma&gt; = -
      &lt;AdvP head type comma&gt; = -
      &lt;PP head type comma&gt; = -
      &lt;DP_1 head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4gexist
   </xsl:text>
</xsl:if>
   
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4gi - OSV order, copular, imperative}
VP = {PP / AdjP / DP_1} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;PP head type sentential&gt; = -
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;V head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4gi
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4giNegObjVerbRequired - OSV order, copular, imperative}
VP = {PP / AdjP / DP_1} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;PP head type sentential&gt; = -
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;V head infl valence&gt; = active
	&lt;V head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4giNegObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropImp/@checked)='yes'">
<xsl:text>
      rule {VP option 4giperc - OSV order, perception, imperative}
      VP = AdjP V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;VP head infl mood&gt; = imperative
      &lt;PP head type sentential&gt; = -
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;V head infl valence&gt; = active
      &lt;V head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;VP head type question&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4giperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4gp - OSV order, copular, pro-drop}
VP = {PP / AdjP / DP_1} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = +
	&lt;VP head infl mood&gt; = declarative
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
 	 &lt;VP head fronted&gt; == ~[cat:FocusP]
 	 &lt;VP head fronted&gt; == ~[cat:DP]
 	 &lt;VP option&gt; = 4gp
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4gpNegObjVerbRequired - OSV order, copular, pro-drop}
VP = {PP / AdjP / DP_1} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = +
	&lt;VP head infl mood&gt; = declarative
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4gpNegObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropYes/@checked)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropYes/@checked)='yes'">
<xsl:text>
      rule {VP option 4gpperc - OSV order, perception, pro-drop}
      VP = AdjP V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;VP head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = +
      &lt;VP head infl mood&gt; = declarative
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;PP head type sentential&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP head fronted&gt; == ~[cat:DP]
      &lt;VP option&gt; = 4gpperc
   </xsl:text>
</xsl:if>
   
      	
      	
   	
   	
      	
      	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copluarAffix)='no' and normalize-space(//ip/@auxRequired)!='yes'">
<xsl:text>
rule {VP option 4h - OSV order, copular sentence, no verb, no Aux required}
VP = {PP / AdjP / DP_1} DP
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP_1 head&gt;
	&lt;VP head type transitive&gt; = -
	&lt;VP head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type wh&gt; = -
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP_1 head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP_1 head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP head type copular&gt; &lt;= +
	&lt;DP head&gt; == ~[case:accusative]
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4h
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/existVerb/@checked)='no' and normalize-space(//ip/existPosition/@checked)='no' and normalize-space(//ip/existWord/@checked)='yes'">
<xsl:text>
      rule {VP option 4hexistAdv - OSV order, no existential verb, existential Adv as "subject"}
      VP = (AdvP / PP / DP_1) DP AdvP_1
      &lt;VP head&gt; = &lt;DP head&gt;
      &lt;VP head type existential&gt; &lt;= +
      &lt;AdvP_1 head type existential&gt; = +
      &lt;VP head type verbheaded&gt; = -      
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdvP head type locative&gt; = +
      &lt;PP head type locative&gt; = +
      &lt;DP_1 head type locative&gt; = +
      &lt;DP head type comma&gt; = -
      &lt;AdvP head type comma&gt; = -
      &lt;PP head type comma&gt; = -
      &lt;DP_1 head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
      &lt;VP head fronted&gt; == ~[cat:FocusP]
      &lt;VP option&gt; = 4hexistAdv
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copluarAffix)!='no' and normalize-space(//ip/@auxRequired)='no'">
<xsl:text>
rule {VP option 4haff - OSV order, copular sentence, no verb, no Aux required, copular affix}
VP = {PP / AdjP / DP_1} DP
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP_1 head&gt;
        {&lt;AdjP head type prefix copular&gt; = +
        /&lt;AdjP head type suffix copular&gt; = +
      	}
        {&lt;DP_1 head type prefix copular&gt; = + 
        /&lt;DP_1 head type suffix copular&gt; = + 
       	}
	&lt;VP head type transitive&gt; = -
	&lt;VP head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type wh&gt; = -
	&lt;DP_1 head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP_1 head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type verbheaded&gt; &lt;= -     
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP head type copular&gt; &lt;= +
	&lt;DP head&gt; == ~[case:accusative]
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4haff
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes'">
<xsl:text>
rule {VP option 4ha - OSV order, copular sentence, no verb, Aux required}
VP = {PP / AdjP / DP_1} DP
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP_1 head&gt;
	&lt;VP head type transitive&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head subject&gt; = &lt;DP&gt;
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type wh&gt; = -
	&lt;DP_1 head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP_1 head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type verbheaded&gt; &lt;= -    
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	&lt;VP head type copular&gt; &lt;= +
	&lt;DP head&gt; == ~[case:accusative]
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4ha
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copluarAffix)='no' and normalize-space(//ip/@auxRequired)='no'">
<xsl:text>
rule {VP option 4hi - OSV order, copular sentence, no verb, imperative, no Aux required}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type transitive&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4hi
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copluarAffix)!='no' and normalize-space(//ip/@auxRequired)='no'">
<xsl:text>
rule {VP option 4hiaff - OSV order, copular sentence, no verb, imperative, no Aux required, copular affix}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;AdjP head type prefix copular&gt; = +
	&lt;DP_1 head type prefix copular&gt; = +
	&lt;VP head infl mood&gt; = imperative
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type transitive&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4hiaff
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes'">
<xsl:text>
rule {VP option 4hai - OSV order, copular sentence, no verb, imperative, Aux required}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head infl mood&gt; = imperative
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type transitive&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4hai
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//ip/@auxRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//ip/@auxRequired)='no'">
<xsl:text>
rule {VP option 4hp - OSV order, copular sentence, no verb, pro-drop, no Aux required}
VP = {PP / AdjP / DP} 
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = +
	&lt;VP head infl mood&gt; = declarative
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 4hp
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)!='no' and normalize-space(//ip/@auxRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)!='no' and normalize-space(//ip/@auxRequired)='no'">
<xsl:text>
rule {VP option 4hpaff - OSV order, copular sentence, no verb, pro-drop, no Aux required, copular affix}
VP = {PP / AdjP / DP} 
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
        {&lt;AdjP head type prefix copular&gt; = +
        /&lt;AdjP head type suffix copular&gt; = +
        }
	{&lt;DP head type prefix copular&gt; = +
	/&lt;DP head type suffix copular&gt; = +
	}
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = +
	&lt;VP head infl mood&gt; = declarative
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4hpaff
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes'">
<xsl:text>
rule {VP option 4hap - OSV order, copular sentence, no verb, pro-drop, Aux required}
VP = {PP / AdjP / DP} 
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head type transitive&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type pro-drop&gt; = +
	&lt;VP head infl mood&gt; = declarative
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -      
	&lt;VP head type copular&gt; &lt;= +
 	&lt;VP head fronted&gt; == ~[cat:FocusP]
 	&lt;VP head fronted&gt; == ~[cat:DP]
 	&lt;VP option&gt; = 4hap
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4i - VSO order, copular, subject questioned}
VP = V {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP option&gt; = 4i
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes'">
<xsl:text>
rule {VP option 4iFoc - VSO order, copular, subject focused}
VP = V {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP option&gt; = 4iFoc
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4iNegObjVerbRequired - VSO order, copular, subject questioned}
VP = V {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 4iNegObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)!='yes'">
<xsl:text>
rule {VP option 4iNegObjVerbRequiredFoc - VSO order, copular, subject focused}
VP = V {PP / AdjP / DP_1}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 4iNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//q/@contFront)='before'">
<xsl:text>
      rule {VP option 4iperc - VSO order, perception, subject questioned}
      VP = V AdjP
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = +
      &lt;VP head fronted cat&gt; = DP
      &lt;VP head fronted head type wh&gt; = +
      &lt;VP head fronted&gt; = &lt;V head subject&gt;
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;V head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;VP option&gt; = 4iperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//focus/@focus)='yes'">
<xsl:text>
      rule {VP option 4iFocperc - VSO order, perception, subject focused}
      VP = V AdjP
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head fronted cat&gt; = FocusP
      &lt;VP head fronted head type wh&gt; = -
      &lt;VP head fronted&gt; = &lt;V head subject&gt;
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;V head type comma&gt; = -
      &lt;VP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;VP option&gt; = 4iFocperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//ip/@auxRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//ip/@auxRequired)='no'">
<xsl:text>
rule {VP option 4j - VSO/OSV order, copular sentence, no verb, subj/AdvP questioned}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head type transitive&gt; = -
	&lt;VP head type question&gt; = +
	{&lt;VP head fronted cat&gt; = AdvP
	&lt;VP head type pro-drop&gt; = +
	/&lt;VP head fronted cat&gt; = DP
	&lt;VP head type pro-drop&gt; = - }
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
|	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
	&lt;VP option&gt; = 4j
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@auxRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)='no' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@auxRequired)='no'">
<xsl:text>
rule {VP option 4jFoc - VSO/OSV order, copular sentence, no verb, subject focused}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
	&lt;VP option&gt; = 4jFoc
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)!='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)!='no'">
<xsl:text>
rule {VP option 4jaff - VSO/OSV order, copular sentence, no verb, subj/AdvP questioned, copular afffix}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
        	{&lt;AdjP head type prefix copular&gt; = +
        	/&lt;AdjP head type suffix copular&gt; = +
        	}
	{&lt;DP head type prefix copular&gt; = +
	/&lt;DP head type suffix copular&gt; = +
	}
	&lt;VP head type transitive&gt; = -
	&lt;VP head type question&gt; = +
	{&lt;VP head fronted cat&gt; = AdvP
	&lt;VP head type pro-drop&gt; = +
	/&lt;VP head fronted cat&gt; = DP
	&lt;VP head type pro-drop&gt; = - }
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
	&lt;VP option&gt; = 4jaff
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)!='no' and normalize-space(//focus/@focus)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@copularAffix)!='no' and normalize-space(//focus/@focus)='yes'">
<xsl:text>
rule {VP option 4jaffFoc - VSO/OSV order, copular sentence, no verb, subject focused, copular afffix}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
        	{&lt;AdjP head type prefix copular&gt; = +
        	/&lt;AdjP head type suffix copular&gt; = +
        	}
	{&lt;DP head type prefix copular&gt; = +
	/&lt;DP head type suffix copular&gt; = +
	}
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
	&lt;VP option&gt; = 4jaffFoc
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes'">
<xsl:text>
rule {VP option 4ja - VSO/OSV order, copular sentence, no verb, subj/AdvP questioned, Aux required}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type transitive&gt; = -
	&lt;VP head type question&gt; = +
	{&lt;VP head fronted cat&gt; = AdvP
	&lt;VP head type pro-drop&gt; = +
	/&lt;VP head fronted cat&gt; = DP
	&lt;VP head type pro-drop&gt; = - }
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
	&lt;VP option&gt; = 4ja
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@copular)!='yes' and normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)='yes'">
<xsl:text>
rule {VP option 4jaFoc - VSO/OSV order, copular sentence, no verb, subject focused, Aux required}
VP = {PP / AdjP / DP}
	&lt;VP head&gt; = &lt;PP head&gt;
	&lt;VP head&gt; = &lt;AdjP head&gt;
	&lt;VP head&gt; = &lt;DP head&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP head type pronoun&gt; = -		 | to restrict pronouns
	&lt;DP head type quantifier&gt; = -		 | to restrict quantifiers
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type verbheaded&gt; &lt;= -
	&lt;VP head type copular&gt; &lt;= +
	&lt;VP option&gt; = 4jaFoc
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 4k - OSV order, copular, subject questioned}
VP = {PP / AdjP / DP_1} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 4k
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//focus/@focus)='yes'">
<xsl:text>
rule {VP option 4kFoc - OSV order, copular, subject focused}
VP = {PP / AdjP / DP_1} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 4kFoc
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 4kNegObjVerbRequired - OSV order, copular, subject questioned}
VP = {PP / AdjP / DP_1} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = +
	&lt;VP head fronted cat&gt; = DP
	&lt;VP head fronted head type wh&gt; = +
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 4kNegObjVerbRequired
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@copular)!='no' and normalize-space(//neg/@objVerbRequired)!='no' and normalize-space(//focus/@focus)='yes'">
<xsl:text>
rule {VP option 4kNegObjVerbRequiredFoc - OSV order, copular, subject focused}
VP = {PP / AdjP / DP_1} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head object&gt; = &lt;DP_1&gt;
	&lt;V head type copular&gt; = +
	&lt;V head type transitive&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;VP head type question&gt; = -
	&lt;VP head fronted cat&gt; = FocusP
	&lt;VP head fronted head type wh&gt; = -
	&lt;VP head fronted&gt; = &lt;V head subject&gt;
	&lt;VP head infl valence&gt; = active
	&lt;VP head type motion&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
	&lt;AdjP head type suffix copular&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdjP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;  | if object negative, VP must be 
                     [infl:[polarity:negative]]
	&lt;VP option&gt; = 4kNegObjVerbRequiredFoc
</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//q/@contFront)='before'">
<xsl:text>
      rule {VP option 4kperc - OSV order, perception, subject questioned}
      VP = AdjP V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = +
      &lt;VP head fronted cat&gt; = DP
      &lt;VP head fronted head type wh&gt; = +
      &lt;VP head fronted&gt; = &lt;V head subject&gt;
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP option&gt; = 4kperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//focus/@focus)='yes'">
<xsl:text>
      rule {VP option 4kFocperc - OSV order, perception, subject focused}
      VP = AdjP V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = +
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head fronted cat&gt; = FocusP
      &lt;VP head fronted head type wh&gt; = -
      &lt;VP head fronted&gt; = &lt;V head subject&gt;
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type prefix copular&gt; = -      | only in no V/Aux copulars
      &lt;AdjP head type suffix copular&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP option&gt; = 4kFocperc
   </xsl:text>
</xsl:if>
   
      
      
      
   
 
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='yes'">
<xsl:text>
      rule {VP option 4la - V initial, comparative of equal nouns}
      VP = V (Art) Deg N Conj DP (Aux / V_1)
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type equalN&gt; = +
      &lt;Conj head type compareN&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;N head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP option&gt; = 4la
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
   	
      	
      	
   	
   	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='yes'">
<xsl:text>
		rule {VP option 4laCL - V initial, comparative of equal nouns, degree clitic on N}
		VP = V (Art) N Conj DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;N head type equalN&gt; = +
		&lt;Conj head type compareN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Art head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4laCL
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='no'">
<xsl:text>
		rule {VP option 4laNoConj - V initial, comparative of equal nouns w/o conj}
		VP = V (Art) Deg N DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;Deg head type equalN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Art head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4laNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='no'">
<xsl:text>
		rule {VP option 4laCLNoConj - V initial, comparative of equal nouns, degree clitic on N, w/o conj}
		VP = V (Art) N DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;N head type equalN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Art head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4laCLNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	

	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='yes'">
<xsl:text>
      rule {VP option 4lb - V initial, comparative of equal adjectives}
      VP = V Deg AdjP Conj DP (Aux / V_1)
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type equalAdj&gt; = +
      &lt;Conj head type compareAdj&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP option&gt; = 4lb
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
   	
   	
      	
   	
   	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='yes'">
<xsl:text>
		rule {VP option 4lbNoDeg - V initial, comparative of equal adjectives, w/o Deg}
		VP = V AdjP Conj DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Conj head type compareAdj&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4lbNoDeg
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='no'">
<xsl:text>
		rule {VP option 4lbNoConj - V initial, comparative of equal adjectives, w/o Conj}
		VP = V Deg AdjP DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type equalAdj&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4lbNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='no'">
<xsl:text>
		rule {VP option 4lbNoDegNoConj - V initial, comparative of equal adjectives, w/o Deg or Conj}
		VP = V AdjP DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;AdjP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4lbNoDegNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4lc1 - V initial, comparative Adj with degree words}
      VP = V Deg AdjP Conj DP
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
      &lt;VP option&gt; = 4lc1
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4lc2 - V initial, comparative Adj with degree affix}
      VP = V AdjP Conj DP
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
      &lt;VP option&gt; = 4lc2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
   	
   	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4lc1NoConj - V initial, comparative Adj with degree words, w/o Conj}
		VP = V Deg AdjP DP
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
		&lt;VP option&gt; = 4lc1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4lc2NoConj - V initial, comparative Adj with degree affix, w/o Conj}
		VP = V AdjP DP
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;AdjP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
		&lt;VP option&gt; = 4lc2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4lc3 - V initial, comparative N}
      VP = V (Art) {Deg/AdjP} N Conj DP (Aux / V_1)
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;N head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP option&gt; = 4lc3
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4lc3NoConj - V initial, comparative N, w/o Conj}
		VP = V (Art) {Deg/AdjP} N DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Art head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4lc3NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='yes'">
<xsl:text>
      rule {VP option 4ld1 - V initial, superlative Adj with degree words}
      VP = V (Art) Deg AdjP (PP)
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type superlative&gt; = +
      &lt;Deg head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;VP option&gt; = 4ld1
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
      	
      	
      	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='no'">
<xsl:text>
      rule {VP option 4ld2 - V initial, superlative Adj with degree affix}
      VP = V (Art) AdjP (PP)
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;AdjP head type superlative&gt; = +
      &lt;Art head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;VP option&gt; = 4ld2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
      	
      	
      	
   
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//typology/@wordOrder)='VOS'">
<xsl:text>
      rule {VP option 4ld3 - V initial, superlative N}
      VP = V (Art) {Deg/AdjP} N (PP)
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type superlative&gt; = +
      &lt;AdjP head type superlative&gt; = +
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;VP option&gt; = 4ld3
   </xsl:text>
</xsl:if>
   
      
      
      
   

	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4le1 - V initial, long comparative Adj with degree words}
      VP = V Deg AdjP Conj DP {Aux / V_1} AdjP_1
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
      &lt;VP option&gt; = 4le1
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
      rule {VP option 4le1gap - V initial, long comparative Adj with degree words with gap}
      VP = V Deg AdjP Conj DP {Aux / V_1}
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;Aux head type comma&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;V_1 head type comma&gt;
      &lt;VP option&gt; = 4le1gap
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
      	
      	
   	
   	
   	
      	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4le2 - V initial, long comparative Adj with degree affix}
      VP = V AdjP Conj DP {Aux / V_1} AdjP_1
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
      &lt;VP option&gt; = 4le2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
      rule {VP option 4le2gap - V initial, long comparative Adj with degree affix with gap}
      VP = V AdjP Conj DP {Aux / V_1}
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
      &lt;VP option&gt; = 4le2gap
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
      	
      	
   	
   	
   	
      	
   
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4le1NoConj - V initial, long comparative Adj with degree words, w/o Conj}
		VP = V Deg AdjP DP {Aux / V_1} AdjP_1
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
		&lt;VP option&gt; = 4le1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4le1gapNoConj - V initial, long comparative Adj with degree words with gap, w/o Conj}
		VP = V Deg AdjP DP {Aux / V_1}
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type comma&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4le1gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4le2NoConj - V initial, long comparative Adj with degree affix, w/o Conj}
		VP = V AdjP DP {Aux / V_1} AdjP_1
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
		&lt;VP option&gt; = 4le2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4le2gapNoConj - V initial, long comparative Adj with degree affix with gap, w/o Conj}
		VP = V AdjP DP {Aux / V_1}
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
		&lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4le2gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4lf1 - V initial, long comparative Adj with degree words, noncopular verb}
      VP = V Deg AdjP Conj DP {Aux / V_1} AdjP_1
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
      &lt;VP option&gt; = 4lf1
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
      rule {VP option 4lf1gap - V initial, long comparative Adj with degree words, noncopular verb with gap}
      VP = V Deg AdjP Conj DP {Aux / V_1} 
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
      &lt;VP option&gt; = 4lf1gap
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
      	
      	
   	
   	
   	
      	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4lf2 - V initial, long comparative Adj with degree affix, noncopular verb}
      VP = V AdjP Conj DP {Aux / V_1} AdjP_1
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
      &lt;VP option&gt; = 4lf2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
      rule {VP option 4lf2gap - V initial, long comparative Adj with degree affix, noncopular verb with gap}
      VP = V AdjP Conj DP {Aux / V_1}
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
      &lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
      &lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
      &lt;VP option&gt; = 4lf2gap
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
      	
      	
   	
   	
   	
      	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4lf1NoConj - V initial, long comparative Adj with degree words, noncopular verb, w/oConj}
		VP = V Deg AdjP DP {Aux / V_1} AdjP_1
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
		&lt;VP option&gt; = 4lf1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4lf1gapNoConj - V initial, long comparative Adj with degree words, noncopular verb with gap, w/o Conj}
		VP = V Deg AdjP DP {Aux / V_1} 
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
		&lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4lf1gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4lf2NoConj - V initial, long comparative Adj with degree affix, noncopular verb, w/o Conj}
		VP = V AdjP DP {Aux / V_1} AdjP_1
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
		&lt;VP option&gt; = 4lf2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4lf2gapNoConj - V initial, long comparative Adj with degree affix, noncopular verb with gap, w/o Conj}
		VP = V AdjP DP {Aux / V_1}
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
		&lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4lf2gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='yes'">
<xsl:text>
      rule {VP option 4ma - V final, comparative of equal nouns}
      VP = (Aux / V_1) DP Conj N Deg (Art) V
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type equalN&gt; = +
      &lt;Conj head type compareN&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;N head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP option&gt; = 4ma
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
   	
   	
      	
   	
   	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='yes'">
<xsl:text>
		rule {VP option 4maCL - V final, comparative of equal nouns, Deg clitic on N}
		VP = (Aux / V_1) DP Conj N (Art) V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;N head type equalN&gt; = +
		&lt;Conj head type compareN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Art head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4maCL
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='no'">
<xsl:text>
		rule {VP option 4maNoConj - V final, comparative of equal nouns, no conj}
		VP = (Aux / V_1) DP N Deg (Art) V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;Deg head type equalN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Art head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4maNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='no'">
<xsl:text>
		rule {VP option 4maCLNoConj - V final, comparative of equal nouns, Deg clitic on N, no conj}
		VP = (Aux / V_1) DP N (Art) V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;N head type equalN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Art head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4maCLNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='yes'">
<xsl:text>
      rule {VP option 4mb - V final, comparative of equal adjectives}
      VP = (Aux / V_1) DP Conj AdjP Deg V
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type equalAdj&gt; = +
      &lt;Conj head type compareAdj&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP option&gt; = 4mb
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
   	
   	
      	
   	
   	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='yes'">
<xsl:text>
		rule {VP option 4mbNoDeg - V final, comparative of equal adjectives, w/o Deg}
		VP = (Aux / V_1) DP Conj AdjP V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Conj head type compareAdj&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4mbNoDeg
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='no'">
<xsl:text>
		rule {VP option 4mbNoConj - V final, comparative of equal adjectives, w/o Conj}
		VP = (Aux / V_1) DP AdjP Deg V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type equalAdj&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4mbNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='no'">
<xsl:text>
		rule {VP option 4mbNoDegNoConj - V final, comparative of equal adjectives, w/o Deg, w/o Conj}
		VP = (Aux / V_1) DP AdjP V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4mbNoDegNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4mc1 - V final, comparative Adj with degree words}
      VP = DP Conj AdjP Deg V
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP option&gt; = 4mc1
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
   	
   	
      	
   	
   	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4mc2 - V final, comparative Adj with degree affix}
      VP = DP Conj AdjP V
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP option&gt; = 4mc2
   </xsl:text>
</xsl:if>
   
     	 
      	
      	
   	
   	
   	
      	
      	
     	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4mc1NoConj - V final, comparative Adj with degree words, w/o Conj}
		VP = DP AdjP Deg V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4mc1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4mc2NoConj - V final, comparative Adj with degree affix, w/o Conj}
		VP = DP AdjP V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4mc2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4mc3 - V final, comparative N}
      VP = (Aux / V_1) DP Conj N {Deg/AdjP} (Art) V
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;N head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP option&gt; = 4mc3
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4mc3NoConj - V final, comparative N, w/o Conj}
		VP = (Aux / V_1) DP N {Deg/AdjP} (Art) V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Art head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4mc3NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='yes'">
<xsl:text>
      rule {VP option 4md1 - V final, superlative Adj with degree words}
      VP = (PP) AdjP Deg (Art) V
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type superlative&gt; = +
      &lt;Deg head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP option&gt; = 4md1
   </xsl:text>
</xsl:if>
   
      
      
      
      
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='no'">
<xsl:text>
      rule {VP option 4md2 - V final, superlative Adj with degree affix}
      VP = (PP) AdjP (Art) V
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;AdjP head type superlative&gt; = +
      &lt;Art head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP option&gt; = 4md2
   </xsl:text>
</xsl:if>
   
      
      
      
      
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//typology/@wordOrder)='OVS'">
<xsl:text>
      rule {VP option 4md3 - V final, superlative N}
      VP = (PP) N {Deg/AdjP} (Art) V
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type superlative&gt; = +
      &lt;AdjP head type superlative&gt; = +
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;N head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;N head type prefix&gt;
      &lt;VP option&gt; = 4md3
   </xsl:text>
</xsl:if>
   
      
      
      
   

		
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4me1 - V final, long comparative Adj with degree words}
      VP = AdjP_1 {Aux / V_1} DP Conj AdjP Deg V
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;AdjP_1 head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP_1 head type prefix&gt;
      &lt;VP option&gt; = 4me1
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4me1gap - V final, long comparative Adj with degree words with gap}
		VP = {Aux / V_1} DP Conj AdjP Deg V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4me1gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4me2 - V final, long comparative Adj with degree affix}
      VP =  AdjP_1 {Aux / V_1} DP Conj AdjP V
      &lt;VP head&gt; = &lt;V head&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;AdjP_1 head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP_1 head type prefix&gt;
      &lt;VP option&gt; = 4me2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4me2gap - V final, long comparative Adj with degree affix, w/ gap}
		VP = {Aux / V_1} DP Conj AdjP V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4me2gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4me1NoConj - V final, long comparative Adj with degree words, no conj}
		VP = AdjP_1 {Aux / V_1} DP AdjP Deg V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;AdjP_1 head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;AdjP_1 head type prefix&gt;
		&lt;VP option&gt; = 4me1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4me1gapNoConj - V final, long comparative Adj with degree words with gap, w/o Conj}
		VP = {Aux / V_1} DP AdjP Deg V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4me1gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4me2NoConj - V final, long comparative Adj with degree affix, w/o Conj}
		VP =  AdjP_1 {Aux / V_1} DP AdjP V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;AdjP_1 head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;AdjP_1 head type prefix&gt;
		&lt;VP option&gt; = 4me2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4me2gapNoConj - V final, long comparative Adj with degree affix, w/ gap, w/o Conj}
		VP = {Aux / V_1} DP AdjP V
		&lt;VP head&gt; = &lt;V head&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4me2gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4mf1 - V final, long comparative Adj with degree words, noncopular verb}
      VP = AdjP_1 {Aux / V_1}  DP Conj AdjP Deg V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;AdjP_1 head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP_1 head type prefix&gt;
      &lt;VP option&gt; = 4mf1
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4mf1gap - V final, long comparative Adj with degree words, noncopular verb, w/ gap}
		VP = {Aux / V_1}  DP Conj AdjP Deg V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;Deg head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4mf1gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4mf2 - V final, long comparative Adj with degree affix, noncopular verb}
      VP = AdjP_1 {Aux / V_1} DP Conj AdjP V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;AdjP head type comma&gt; = -
      &lt;AdjP_1 head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP_1 head type prefix&gt;
      &lt;VP option&gt; = 4mf2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   	
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4mf2gap - V final, long comparative Adj with degree affix, noncopular verb, w/ gap}
		VP = {Aux / V_1} DP Conj AdjP V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;AdjP head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4mf2gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4mf1NoConj - V final, long comparative Adj with degree words, noncopular verb, w/o Conj}
		VP = AdjP_1 {Aux / V_1}  DP AdjP Deg V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;AdjP_1 head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;AdjP_1 head type prefix&gt;
		&lt;VP option&gt; = 4mf1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4mf1gapNoConj - V final, long comparative Adj with degree words, noncopular verb, w/ gap, w/o Conj}
		VP = {Aux / V_1}  DP AdjP Deg V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4mf1gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4mf2NoConj - V final, long comparative Adj with degree affix, noncopular verb, w/o Conj}
		VP = AdjP_1 {Aux / V_1} DP AdjP V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;AdjP head type comma&gt; = -
		&lt;AdjP_1 head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;AdjP_1 head type prefix&gt;
		&lt;VP option&gt; = 4mf2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4mf2gapNoConj - V final, long comparative Adj with degree affix, noncopular verb, w/ gap, w/o Conj}
		VP = {Aux / V_1} DP AdjP V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4mf2gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='yes'">
<xsl:text>
      rule {VP option 4na - VSO order, comparative of equal nouns}
      VP = V DP_1 (Art) Deg N Conj DP (Aux / V_1)
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type equalN&gt; = +
      &lt;Conj head type compareN&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;N head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP option&gt; = 4na
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='yes'">
<xsl:text>
		rule {VP option 4naCL - VSO order, comparative of equal nouns, Deg clitic on N}
		VP = V DP_1 (Art) N Conj DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;N head type equalN&gt; = +
		&lt;Conj head type compareN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Art head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4naCL
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='no'">
<xsl:text>
		rule {VP option 4naNoConj - VSO order, comparative of equal nouns, w/o Conj}
		VP = V DP_1 (Art) Deg N DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;Deg head type equalN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Art head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4naNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='no'">
<xsl:text>
		rule {VP option 4naCLNoConj - VSO order, comparative of equal nouns, Deg clitic on N, w/o Conj}
		VP = V DP_1 (Art) N DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;N head type equalN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Art head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4naCLNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='yes'">
<xsl:text>
      rule {VP option 4nb - VSO order, comparative of equal adjectives}
      VP = V DP_1 Deg AdjP Conj DP (Aux / V_1)
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type equalAdj&gt; = +
      &lt;Conj head type compareAdj&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP option&gt; = 4nb
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='yes'">
<xsl:text>
		rule {VP option 4nbNoDeg - VSO order, comparative of equal adjectives, w/o Deg}
		VP = V DP_1 AdjP Conj DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Conj head type compareAdj&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4nbNoDeg
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='no'">
<xsl:text>
		rule {VP option 4nbNoConj - VSO order, comparative of equal adjectives, w/o Conj}
		VP = V DP_1 Deg AdjP DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type equalAdj&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4nbNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='no'">
<xsl:text>
		rule {VP option 4nbNoDegNoConj - VSO order, comparative of equal adjectives, w/o Deg, w/o Conj}
		VP = V DP_1 AdjP DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4nbNoDegNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4nc1 - VSO order, comparative Adj with degree words}
      VP = V DP_1 Deg AdjP Conj DP
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;DP_1 head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
      &lt;VP option&gt; = 4nc1
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4nc2 - VSO order, comparative Adj with degree affix}
      VP = V DP_1 AdjP Conj DP
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;DP_1 head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
      &lt;VP option&gt; = 4nc2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4nc1NoConj - VSO order, comparative Adj with degree words, w/o Conj}
		VP = V DP_1 Deg AdjP DP
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
		&lt;VP option&gt; = 4nc1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4nc2NoConj - VSO order, comparative Adj with degree affix, w/o Conj}
		VP = V DP_1 AdjP DP
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
		&lt;VP option&gt; = 4nc2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4nc3 - VSO order, comparative N}
      VP = V DP_1 (Art) {Deg/AdjP} N Conj DP (Aux / V_1)
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;N head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
      &lt;VP option&gt; = 4nc3
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4nc3NoConj - VSO order, comparative N, w/o Conj}
		VP = V DP_1 (Art) {Deg/AdjP} N DP (Aux / V_1)
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Art head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
		&lt;VP option&gt; = 4nc3NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='yes'">
<xsl:text>
      rule {VP option 4nd1 - VSO order, superlative Adj with degree words}
      VP = V DP_1 (Art) Deg AdjP (PP)
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type superlative&gt; = +
      &lt;DP_1 head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;VP option&gt; = 4nd1
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='no'">
<xsl:text>
      rule {VP option 4nd2 - VSO order, superlative Adj with degree affix}
      VP = V DP_1 (Art) AdjP (PP)
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;AdjP head type superlative&gt; = +
      &lt;DP_1 head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP head type suffix&gt;
      &lt;VP option&gt; = 4nd2
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO'">
<xsl:text>
      rule {VP option 4nd3 - VSO order, superlative N}
      VP = V DP_1 (Art) {Deg/AdjP} N (PP)
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type superlative&gt; = +
      &lt;AdjP head type superlative&gt; = +
      &lt;DP_1 head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;N head type suffix&gt;
      &lt;VP option&gt; = 4nd3
   </xsl:text>
</xsl:if>
   
      
   
 
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4ne1 - VSO order, long comparative Adj with degree words}
      VP = V DP_1 Deg AdjP Conj DP {Aux / V_1} AdjP_1
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
      &lt;VP option&gt; = 4ne1
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4ne1gap - VSO order, long comparative Adj with degree words, w/ gap}
		VP = V DP_1 Deg AdjP Conj DP {Aux / V_1} 
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
		&lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4ne1gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4ne2 - VSO order, long comparative Adj with degree affix}
      VP = V DP_1 AdjP Conj DP {Aux / V_1} AdjP_1
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
      &lt;VP option&gt; = 4ne2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4ne2gap - VSO order, long comparative Adj with degree affix, w/ gap}
		VP = V DP_1 AdjP Conj DP {Aux / V_1} 
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
		&lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4ne2gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4ne1NoConj - VSO order, long comparative Adj with degree words, w/o Conj}
		VP = V DP_1 Deg AdjP DP {Aux / V_1} AdjP_1
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
		&lt;VP option&gt; = 4ne1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4ne1gapNoConj - VSO order, long comparative Adj with degree words, w/ gap, w/o Conj}
		VP = V DP_1 Deg AdjP DP {Aux / V_1} 
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;AdjP_ux1 head type comma&gt;
		&lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4ne1gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4ne2NoConj - VSO order, long comparative Adj with degree affix, w/o Conj}
		VP = V DP_1 AdjP DP {Aux / V_1} AdjP_1
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
		&lt;VP option&gt; = 4ne2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4ne2gapNoConj - VSO order, long comparative Adj with degree affix, w/ gap, w/o Conj}
		VP = V DP_1 AdjP DP {Aux / V_1} 
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
		&lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4ne2gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4nf1 - VSO order, long comparative Adj with degree words, noncopular verb}
      VP = V DP_1 Deg AdjP Conj DP {Aux / V_1} AdjP_1
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
      &lt;VP option&gt; = 4nf1
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4nf1gap - VSO order, long comparative Adj with degree words, noncopular verb, w/ gap}
		VP = V DP_1 Deg AdjP Conj DP {Aux / V_1}
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;Deg head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
		&lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4nf1gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4nf2 - VSO order, long comparative Adj with degree affix, noncopular verb}
      VP = V DP_1 AdjP Conj DP {Aux / V_1} AdjP_1
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
      &lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
      &lt;VP option&gt; = 4nf2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4nf2gap - VSO order, long comparative Adj with degree affix, noncopular verb, w/ gap}
		VP = V DP_1 AdjP Conj DP {Aux / V_1}
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;AdjP head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
		&lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4nf2gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4nf1NoConj - VSO order, long comparative Adj with degree words, noncopular verb, w/o Conj}
		VP = V DP_1 Deg AdjP DP {Aux / V_1} AdjP_1
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
		&lt;VP option&gt; = 4nf1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4nf1gapNoConj - VSO order, long comparative Adj with degree words, noncopular verb, w/ gap, w/o Conj}
		VP = V DP_1 Deg AdjP DP {Aux / V_1}
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
		&lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4nf1gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4nf2NoConj - VSO order, long comparative Adj with degree affix, noncopular verb, w/o Conj}
		VP = V DP_1 AdjP DP {Aux / V_1} AdjP_1
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;AdjP_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;AdjP_1 head type comma&gt;
		&lt;VP option&gt; = 4nf2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4nf2gapNoConj - VSO order, long comparative Adj with degree affix, noncopular verb, w/ gap, w/o Conj}
		VP = V DP_1 AdjP DP {Aux / V_1}
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
		&lt;VP head type suffix&gt; &lt;= &lt;V_1 head type suffix&gt;
		&lt;VP head type comma&gt; &lt;= &lt;Aux head type comma&gt;
		&lt;VP head type comma&gt; &lt;= &lt;V_1 head type comma&gt;
		&lt;VP option&gt; = 4nf2gapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='yes'">
<xsl:text>
      rule {VP option 4oa - OSV order, comparative of equal nouns}
      VP = (Aux / V_1) DP Conj N Deg (Art) DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type equalN&gt; = +
      &lt;Conj head type compareN&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;N head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP option&gt; = 4oa
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='yes'">
<xsl:text>
		rule {VP option 4oaCL - OSV order, comparative of equal nouns, Deg clitic on N}
		VP = (Aux / V_1) DP Conj N (Art) DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;N head type equalN&gt; = +
		&lt;Conj head type compareN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Art head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4oaCL
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@same)='yes' and normalize-space(//ip/@compareN)='no'">
<xsl:text>
		rule {VP option 4oaNoConj - OSV order, comparative of equal nouns, w/o Conj}
		VP = (Aux / V_1) DP N Deg (Art) DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;Deg head type equalN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Art head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4oaNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@same)!='yes' and normalize-space(//ip/@compareN)='no'">
<xsl:text>
		rule {VP option 4oaCLNoConj - OSV order, comparative of equal nouns, Deg clitic on N, w/o Conj}
		VP = (Aux / V_1) DP N (Art) DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = +
		&lt;N head type equalN&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Art head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4oaCLNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	

	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='yes'">
<xsl:text>
      rule {VP option 4ob - OSV order, comparative of equal adjectives}
      VP = (Aux / V_1) DP Conj AdjP Deg DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type equalAdj&gt; = +
      &lt;Conj head type compareAdj&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP option&gt; = 4ob
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='yes'">
<xsl:text>
		rule {VP option 4obNoDeg - OSV order, comparative of equal adjectives, w/o Deg}
		VP = (Aux / V_1) DP Conj AdjP DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Conj head type compareAdj&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4obNoDeg
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@as)='yes' and normalize-space(//ip/@compareAdj)='no'">
<xsl:text>
		rule {VP option 4obNoConj - OSV order, comparative of equal adjectives, w/o Conj}
		VP = (Aux / V_1) DP AdjP Deg DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type equalAdj&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4obNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@as)='no' and normalize-space(//ip/@compareAdj)='no'">
<xsl:text>
		rule {VP option 4obNoDegNoConj - OSV order, comparative of equal adjectives, w/o Deg, w/o Conj}
		VP = (Aux / V_1) DP AdjP DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4obNoDegNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4oc1 - OSV order, comparative AdjP with degree words}
      VP = DP Conj AdjP Deg DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;DP_1 head type comma&gt; =  -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP option&gt; = 4oc1
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4oc2 - OSV order, comparative AdjP with degree affix}
      VP = DP Conj AdjP DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;DP_1 head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP option&gt; = 4oc2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4oc1NoConj - OSV order, comparative AdjP with degree words, w/o Conj}
		VP = DP AdjP Deg DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;DP_1 head type comma&gt; =  -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4oc1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4oc2NoConj - OSV order, comparative AdjP with degree affix, w/o Conj}
		VP = DP AdjP DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4oc2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4oc3 - OSV order, comparative N}
      VP = (Aux / V_1) DP Conj N {Deg/AdjP} (Art) DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;N head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
      &lt;VP option&gt; = 4oc3
   </xsl:text>
</xsl:if>
   
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4oc3NoConj - OSV order, comparative N, w/o Conj}
		VP = (Aux / V_1) DP N {Deg/AdjP} (Art) DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Art head type definite&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Art head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;N head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
		&lt;VP option&gt; = 4oc3NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='yes'">
<xsl:text>
      rule {VP option 4od1 - OSV order, superlative AdjP with degree words}
      VP = (PP) AdjP Deg (Art) DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type superlative&gt; = +
      &lt;DP_1 head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP option&gt; = 4od1
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='no'">
<xsl:text>
      rule {VP option 4od2 - OSV order, superlative Adj with degree affix}
      VP = (PP) AdjP (Art) DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;AdjP head type superlative&gt; = +
      &lt;DP-1 head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;AdjP head type prefix&gt;
      &lt;VP option&gt; = 4od2
   </xsl:text>
</xsl:if>
   
      
      
      
   
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV'">
<xsl:text>
      rule {VP option 4od3 - OSV order, superlative N}
      VP = (PP) N {Deg/AdjP} (Art) DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Art head type definite&gt; = +
      &lt;Deg head type superlative&gt; = +
      &lt;AdjP head type superlative&gt; = +
      &lt;DP_1 head type comma&gt; = -
      &lt;Art head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;N head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;N head type prefix&gt;
      &lt;VP option&gt; = 4od3
   </xsl:text>
</xsl:if>
   
      
   
	
   <xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4oe1 - OSV order, long comparative Adj with degree words}
      VP = AdjP_1 {Aux / V_1} DP Conj AdjP Deg DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;AdjP_1 head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
      &lt;VP option&gt; = 4oe1
   </xsl:text>
</xsl:if>
   
      	
	
   	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4oe1Gap - OSV order, long comparative Adj with degree words, w/ gap}
		VP = {Aux / V_1} DP Conj AdjP Deg DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4oe1Gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4oe2 - OSV  order, long comparative Adj with degree affix}
      VP =  AdjP_1 {Aux / V_1} DP Conj AdjP DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      {&lt;V head type copular&gt; = +
      / &lt;V head type perception&gt; = +}
      &lt;V head type transitive&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;VP head type motion&gt; = -
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;AdjP_1 head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;Aux head type comma&gt; = -
      &lt;V_1 head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
      &lt;VP option&gt; = 4oe2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4oe2Gap - OSV  order, long comparative Adj with degree affix, w/ gap}
		VP =  {Aux / V_1} DP Conj AdjP DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4oe2Gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4oe1NoConj - OSV order, long comparative Adj with degree words, w/o Conj}
		VP = AdjP_1 {Aux / V_1} DP AdjP Deg DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;AdjP_1 head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4oe1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4oe1GapNoConj - OSV order, long comparative Adj with degree words, w/ gap, w/o Conj}
		VP = {Aux / V_1} DP AdjP Deg DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4oe1GapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
		
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4oe2NoConj - OSV  order, long comparative Adj with degree affix, w/o Conj}
		VP =  AdjP_1 {Aux / V_1} DP AdjP DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;AdjP_1 head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4oe2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4oe2GapNoConj - OSV  order, long comparative Adj with degree affix, w/ gap, w/o Conj}
		VP =  {Aux / V_1} DP AdjP DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		{&lt;V head type copular&gt; = +
		/ &lt;V head type perception&gt; = +}
		&lt;V head type transitive&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;VP head type motion&gt; = -
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;Aux head type comma&gt; = -
		&lt;V_1 head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4oe2GapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4of1 - OSV order, long comparative Adj with degree words, noncopular verb}
      VP = AdjP_1 {Aux / V_1}  DP Conj AdjP Deg DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;Deg head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;Deg head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;AdjP_1 head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
      &lt;VP option&gt; = 4of1
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4of1Gap - OSV order, long comparative Adj with degree words, noncopular verb, w/ gap}
		VP = {Aux / V_1}  DP Conj AdjP Deg DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;Deg head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4of1Gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes'">
<xsl:text>
      rule {VP option 4of2 - OSV order, long comparative Adj with degree affix,  noncopular verb}
      VP = AdjP_1 {Aux / V_1} DP Conj AdjP DP_1 V
      &lt;VP head&gt; = &lt;V head&gt;
      &lt;V head subject&gt; = &lt;DP_1&gt;
      &lt;V head type copular&gt; = -
      &lt;V head type perception&gt; = -
      &lt;VP head type pro-drop&gt; = -
      &lt;VP head type question&gt; = -
      &lt;VP head infl valence&gt; = active
      &lt;AdjP head type comparative&gt; = +
      &lt;Conj head type comparative&gt; = +
      &lt;V head lex&gt; = &lt;V_1 head lex&gt;
      {&lt;V_1 head type copular&gt; = +
      / &lt;V_1 head type perception&gt; = +}
      &lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
      &lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
      &lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
      &lt;DP_1 head type comma&gt; = -
      &lt;AdjP head type comma&gt; = -
      &lt;AdjP_1 head type comma&gt; = -
      &lt;Conj head type comma&gt; = -
      &lt;DP head type comma&gt; = -
      &lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
      &lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
      &lt;VP option&gt; = 4of2
   </xsl:text>
</xsl:if>
   
      	
      	
      	
   	
   	
   
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='yes' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4of2Gap - OSV order, long comparative Adj with degree affix,  noncopular verb, w/ gap}
		VP = {Aux / V_1} DP Conj AdjP DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;AdjP head type comparative&gt; = +
		&lt;Conj head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;Conj head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4of2Gap
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4of1NoConj - OSV order, long comparative Adj with degree words, noncopular verb, w/o Conj}
		VP = AdjP_1 {Aux / V_1}  DP AdjP Deg DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;AdjP_1 head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4of1NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='yes' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4of1GapNoConj - OSV order, long comparative Adj with degree words, noncopular verb, w/ gap, w/o Conj}
		VP = {Aux / V_1}  DP AdjP Deg DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;Deg head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;Deg head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4of1GapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no'">
<xsl:text>
		rule {VP option 4of2NoConj - OSV order, long comparative Adj with degree affix,  noncopular verb, w/o Conj}
		VP = AdjP_1 {Aux / V_1} DP AdjP DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;AdjP head lex&gt; = &lt;AdjP_1 head lex&gt;
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;AdjP_1 head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4of2NoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
	
	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@comparativeAdj)!='no' and normalize-space(//ip/@comparative)='no' and normalize-space(//ip/@gap)='yes'">
<xsl:text>
		rule {VP option 4of2GapNoConj - OSV order, long comparative Adj with degree affix,  noncopular verb, w/ gap, w/o Conj}
		VP = {Aux / V_1} DP AdjP DP_1 V
		&lt;VP head&gt; = &lt;V head&gt;
		&lt;V head subject&gt; = &lt;DP_1&gt;
		&lt;V head type copular&gt; = -
		&lt;V head type perception&gt; = -
		&lt;VP head type pro-drop&gt; = -
		&lt;VP head type question&gt; = -
		&lt;VP head infl valence&gt; = active
		&lt;AdjP head type comparative&gt; = +
		&lt;V head lex&gt; = &lt;V_1 head lex&gt;
		{&lt;V_1 head type copular&gt; = +
		/ &lt;V_1 head type perception&gt; = +}
		&lt;DP head agr number&gt; = &lt;V_1 head subject head agr number&gt;
		&lt;DP head agr number&gt; = &lt;Aux head subject head agr number&gt;
		&lt;DP_1 head type comma&gt; = -
		&lt;AdjP head type comma&gt; = -
		&lt;DP head type comma&gt; = -
		&lt;VP head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
		&lt;VP head type prefix&gt; &lt;= &lt;V_1 head type prefix&gt;
		&lt;VP option&gt; = 4of2GapNoConj
	</xsl:text>
</xsl:if>
	
		
		
		
		
		
		
		
	
	
</xsl:template>
</xsl:stylesheet>
