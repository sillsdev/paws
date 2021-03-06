<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="ip">
<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//coord/@conjWord)!='no'">
<xsl:text>
rule {IP option conj - conjoined IPs}
IP = (InitConj) IP_1 Conj IP_2
          &lt;IP head&gt; = &lt;IP_2 head&gt;
          &lt;Conj head type conjoins_IP&gt; = +
          &lt;IP_1 head type pro-drop&gt; = &lt;IP_2 head type pro-drop&gt;
          &lt;IP_1 head infl finite&gt; = &lt;IP_2 head infl finite&gt;
          &lt;IP_1 head infl mood&gt; = &lt;IP_2 head infl mood&gt;
          &lt;IP_1 head fronted&gt; = &lt;IP_2 head fronted&gt;
          &lt;IP_1 head root&gt; = &lt;IP_2 head root&gt;
          &lt;IP_1 head type verbheaded&gt; = +
          &lt;IP_2 head type verbheaded&gt; = +
          &lt;IP conjoined&gt; = +
          &lt;IP_1 conjoined&gt; = -  |limit recursion
          &lt;IP head type prefix&gt; &lt;= &lt;IP_1 head type prefix&gt;  
          &lt;IP_1 head&gt; == [type:[auxiliary_required:+]] -&gt; ~[type:[auxiliary-C':-
                                                                  auxiliary-I':-
                                                                  auxiliary-VP:-]]
          &lt;IP option&gt; = conj
</xsl:text>
</xsl:if>
  
    
    
    
     
     
  
<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/proclitic/@checked)='yes'">
<xsl:text>
rule {IP option conjPrefix - conjoined IPs}
IP = IP_1  IP_2
          &lt;IP head&gt; = &lt;IP_2 head&gt;
          &lt;IP_1 head type pro-drop&gt; = &lt;IP_2 head type pro-drop&gt;
          &lt;IP_1 head infl finite&gt; = &lt;IP_2 head infl finite&gt;
          &lt;IP_1 head infl mood&gt; = &lt;IP_2 head infl mood&gt;
          &lt;IP_1 head fronted&gt; = &lt;IP_2 head fronted&gt;
          &lt;IP_1 head root&gt; = &lt;IP_2 head root&gt;
          &lt;IP_1 head type verbheaded&gt; = +
          &lt;IP_2 head type verbheaded&gt; = +
          &lt;IP conjoined&gt; = +
          &lt;IP_1 conjoined&gt; = -  |limit recursion
          &lt;IP_2 head type prefix conj&gt; = +
          &lt;IP head type prefix&gt; &lt;= &lt;IP_1 head type prefix&gt;
          &lt;IP_1 head&gt; == [type:[auxiliary_required:+]] -&gt; ~[type:[auxiliary-C':-
                                                                  auxiliary-I':-
                                                                  auxiliary-VP:-]]
          &lt;IP option&gt; = conjPrefix
</xsl:text>
</xsl:if>
   
      
      
      
      
      
      
      
      
<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/enclitic/@checked)='yes'">
<xsl:text>
rule {IP option conjSuffix - conjoined IPs}
IP = IP_1  IP_2
          &lt;IP head&gt; = &lt;IP_2 head&gt;
          &lt;IP_1 head type pro-drop&gt; = &lt;IP_2 head type pro-drop&gt;
          &lt;IP_1 head infl finite&gt; = &lt;IP_2 head infl finite&gt;
          &lt;IP_1 head infl mood&gt; = &lt;IP_2 head infl mood&gt;
          &lt;IP_1 head fronted&gt; = &lt;IP_2 head fronted&gt;
          &lt;IP_1 head root&gt; = &lt;IP_2 head root&gt;
          &lt;IP_1 head type verbheaded&gt; = +
          &lt;IP_2 head type verbheaded&gt; = +
          &lt;IP conjoined&gt; = +
          &lt;IP_1 conjoined&gt; = -  |limit recursion
          &lt;IP_1 head type suffix conj&gt; = +
          &lt;IP head type prefix&gt; &lt;= &lt;IP_1 head type prefix&gt;
          &lt;IP_1 head&gt; == [type:[auxiliary_required:+]] -&gt; ~[type:[auxiliary-C':-
                                                                  auxiliary-I':-
                                                                  auxiliary-VP:-]]
          &lt;IP option&gt; = conjSuffix
</xsl:text>
</xsl:if>
   
      
      
      
      
      
      
      
      
<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/attachesOther/@checked)='yes' or normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//coord/@noConj)='yes'">
<xsl:text>
rule {IP option conjNone - conjoined IPs}
IP = IP_1  IP_2
          &lt;IP head&gt; = &lt;IP_2 head&gt;
          &lt;IP_1 head type pro-drop&gt; = &lt;IP_2 head type pro-drop&gt;
          &lt;IP_1 head infl finite&gt; = &lt;IP_2 head infl finite&gt;
          &lt;IP_1 head infl mood&gt; = &lt;IP_2 head infl mood&gt;
          &lt;IP_1 head fronted&gt; = &lt;IP_2 head fronted&gt;
          &lt;IP_1 head root&gt; = &lt;IP_2 head root&gt;
          &lt;IP_1 head type verbheaded&gt; = +
          &lt;IP_2 head type verbheaded&gt; = +
          &lt;IP conjoined&gt; = +
          &lt;IP_1 conjoined&gt; = -  |limit recursion
          &lt;IP_2 head type prefix conj&gt; = -
          &lt;IP_1 head type suffix conj&gt; = -
          &lt;IP_1 head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;IP_1 head type prefix&gt;
          &lt;IP_1 head&gt; == [type:[auxiliary_required:+]] -&gt; ~[type:[auxiliary-C':-
                                                                  auxiliary-I':-
                                                                  auxiliary-VP:-]]
          &lt;IP option&gt; = conjNone
</xsl:text>
</xsl:if>
   
      
      
      
      
      
     
     
     
      
      
      
      
      
   
<xsl:if test="normalize-space(//ip/proDropImp/@checked)='yes' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV'">
<xsl:text>
rule {IP option 1a - no subject for imperatives}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;I' head infl mood&gt; = imperative
          &lt;I' head infl finite&gt; = +
          &lt;I' head type existential&gt; = -
          &lt;IP head type pro-drop&gt; = +
          &lt;IP head type question&gt; = -
          &lt;IP head fronted&gt; == ~[cat:DP]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;IP head topicP&gt; == ~[option:vocative]   | avoid TopicP if not topicmarked
          &lt;IP option&gt; = 1a
</xsl:text>
</xsl:if>
  
    
    
    
    
    
  
<xsl:if test="normalize-space(//ip/existVerb/@checked)='yes' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' or normalize-space(//ip/existPosition/@checked)='yes' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV'">
<xsl:text>
rule {IP option 1exist - subject missing for existentials without an existential Adv}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type existential&gt; = +
          &lt;IP head infl mood&gt; = declarative
          &lt;IP head infl valence&gt; = active
          &lt;IP head type verbheaded&gt; = +  | if no existential verb, then existential Adv required
          &lt;IP head fronted&gt; == ~[cat:DP]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;IP option&gt; = 1exist
</xsl:text>
</xsl:if>
  
    
    
    
    
    
  
    
    
    
    
    
  

<xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' or normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV'">
<xsl:text>
rule {IP option 1b - subject pro-drop, not passive}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type pro-drop&gt; = +
         {&lt;I' head type transitive&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head object head type reflexive&gt; = +
          &lt;I' head subject head agr&gt; = &lt;I' head object head agr&gt;
         }
          &lt;IP head infl valence&gt; = active
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head fronted&gt; == ~[cat:DP]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;IP option&gt; = 1b
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
  
<xsl:if test="normalize-space(//ip/proDropYes/@checked)='yes' and normalize-space(//ip/@passive)='yes' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' or normalize-space(//ip/proDropClitic/@checked)='yes' and normalize-space(//ip/@passive)='yes' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV'">
<xsl:text>
rule {IP option 1c - subject pro-drop, passive}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type pro-drop&gt; = +
          &lt;IP head infl valence&gt; = passive
          &lt;IP head fronted&gt; == ~[cat:DP]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;IP option&gt; = 1c
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  

<xsl:if test="normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV'">
<xsl:text>
rule {IP option 1d - subject pro-drop for non-root nonfinite clauses, not passive or antipassive}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = -
          &lt;IP head infl finite&gt; = -
          &lt;IP head type pro-drop&gt; = +
          &lt;IP head type question&gt; = -
          &lt;I' head type verbheaded&gt; = +   
          &lt;IP head infl&gt; == ~[valence:passive]
          &lt;IP head infl&gt; == ~[valence:antipassive]
          &lt;IP option&gt; = 1d
</xsl:text>
</xsl:if>

    
    
    
    
  
    
    
    
     
  

<xsl:if test="normalize-space(//relcl/@exist)='yes' and normalize-space(//ip/proDropClitic/@checked)='no' and normalize-space(//ip/proDropYes/@checked)='no' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV'">
<xsl:text>
rule {IP option 1e - subject missing in relative clauses}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = -
          &lt;IP head infl finite&gt; = +
          &lt;IP head type pro-drop&gt; = +
          &lt;IP head type question&gt; = -
          &lt;IP head type relative&gt; = +
          &lt;IP head infl&gt; == ~[valence:passive]
          &lt;IP head infl&gt; == ~[valence:antipassive]
          &lt;IP head&gt; == [subject:[head:[type:[pro-drop:+
                                             verbheaded:+]]]] 
                       -&gt; ~[fronted:[cat:FocusP]]
          &lt;IP option&gt; = 1e
</xsl:text>
</xsl:if>


  
  
    
    
    
    
    
     
  

<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@subjVerbRequired)!='yes'">
<xsl:text>
rule {IP option 2a - subject initial, required, active only}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = active
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;I' head type existential&gt; = -
         {&lt;I' head type speech_PP&gt; = +
         /&lt;I' head type speech_DP&gt; = +
         /&lt;I' head type copular&gt; = +
         /&lt;I' head type perception&gt; = +
         /&lt;I' head type transitive&gt; = -
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = +
          &lt;DP head agr&gt; = &lt;I' head object head agr&gt;
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = +
          &lt;DP head agr&gt; = &lt;I' head object head agr&gt;
         }
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]] 
          &lt;IP head&gt; == [subject:[head:[type:[pro-drop:+
                                             verbheaded:+]]]] 
                        -&gt; ~[fronted:[cat:FocusP]]   
          &lt;IP option&gt; = 2a
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
  

<xsl:if test="normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='SOV'">
<xsl:text>
rule {IP option 2aNegVerb - subject initial, required, active only, neg subj requires neg verb}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head infl valence&gt; = active
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;I' head type existential&gt; = -
         {&lt;I' head type speech_PP&gt; = +
         /&lt;I' head type speech_DP&gt; = +
         /&lt;I' head type copular&gt; = +
         /&lt;I' head type perception&gt; = +
         /&lt;I' head type transitive&gt; = -
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = +
          &lt;DP head agr&gt; = &lt;I' head object head agr&gt;
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = +
          &lt;DP head agr&gt; = &lt;I' head object head agr&gt;
         }
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]] 
          &lt;IP head&gt; == [subject:[head:[type:[pro-drop:+
                                             verbheaded:+]]]] 
                       -&gt; ~[fronted:[cat:FocusP]]   
          &lt;I' head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP option&gt; = 2aNegVerb
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
  
<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/causativeMake/@checked)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/causativeMake/@checked)='yes'">
<xsl:text>
rule {IP option 2aCaus - subject initial, required, causative only}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = causative
          &lt;DP head type wh&gt; = -
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;DP head type possessive&gt; = -           | subject not possessive
          &lt;DP head type reflexive&gt; = -            | subject not reflexive
          &lt;DP head type reciprocal&gt; = -           | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -          | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -       | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -          | not part of a conjunct  
          &lt;DP head type comma&gt; = -
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]]  
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;IP option&gt; = 2aCaus
</xsl:text>
</xsl:if>   
  
    
    
    
    
    
    
    
    
    
    
    
  
<xsl:if test="normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/causativeMake/@checked)='yes' or normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/causativeMake/@checked)='yes'">
<xsl:text>
rule {IP option 2aCausNegVerb - subject initial, required, causative only, neg subject requires neg verb}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = causative
          &lt;DP head type wh&gt; = -
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct 
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]]  
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;I' head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP option&gt; = 2aCausNegVerb
</xsl:text>
</xsl:if>   
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
   
<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/@applicative)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/@applicative)='yes'">
<xsl:text>
rule {IP option 2aApp - subject initial, required, applicative only}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = applicative
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]]  
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt; 
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;IP option&gt; = 2aApp
</xsl:text>
</xsl:if>   
  
    
    
    
    
    
    
    
    
    
    
    
  
<xsl:if test="normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/@applicative)='yes' or normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/@applicative)='yes'">
<xsl:text>
rule {IP option 2aAppNegVerb - subject initial, required, applicative only, neg subject requires neg verb}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = applicative
          &lt;DP head type wh&gt; = -
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct 
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]]  
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt; 
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;I' head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP option&gt; = 2aAppNegVerb
</xsl:text>
</xsl:if>   
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
   
<xsl:if test="normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' or normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes'">
<xsl:text>
rule {IP option 2b - subject initial, required, passive}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;DP head type wh&gt; = -
          &lt;IP head infl valence&gt; = passive
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;IP option&gt; = 2b
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
  
  <xsl:if test="normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' or normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes'">
<xsl:text>
rule {IP option 2bNegVerb - subject initial, required, passive, neg subj requires neg verb}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;DP head type wh&gt; = -
          &lt;IP head infl valence&gt; = passive
          &lt;DP head type focusmarked&gt; = -         | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -  | + in focus position
          &lt;DP head type suffix focusmarked&gt; =    | + in focus position
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;IP head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP option&gt; = 2bNegVerb
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
  

<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes'">
<xsl:text>
rule {IP option 2bantiNotErg - subject initial, required, antipassive, not ergative}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = antipassive
          &lt;DP head case&gt; = nominative
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP option&gt; = 2bantiNotErg
</xsl:text>
</xsl:if>
   
      
      
      
     
     
      
      
      
      
      
     
     
     
     
      
      
      
      
     
     
     
     
      
      
      
      
     
     
     
     
      
   
<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {IP option 2bantiNotErgNegV - subject initial, required, antipassive, not ergative, neg V requires neg Subj}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = antipassive
          &lt;DP head case&gt; = nominative
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;I' head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP option&gt; = 2bantiNotErgNegV
</xsl:text>
</xsl:if>
   
      
      
     
     
     
     
      
      
      
      
     
     
     
     
      
      
      
      
     
     
     
     
      
      
      
      
     
     
     
     
      
   

<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='split' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='split' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes'">
<xsl:text>
rule {IP option 2bantiErg - subject initial, required, antipassive, ergative}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = antipassive
          &lt;DP head case&gt; = absolutive
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP option&gt; = 2bantiErg
</xsl:text>
</xsl:if>
   
      
    
    
      
     
     
     
     
      
      
      
    
    
      
     
     
     
     
      

         
    
    
      
     
     
     
     
      
      
      
    
    
      
     
     
     
     
      

<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='split' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='split' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {IP option 2bantiErgNegV - subject initial, required, antipassive, ergative, neg V requires neg Subj}
IP = DP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = antipassive
          &lt;DP head case&gt; = absolutive
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;I' head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP option&gt; = 2bantiErgNegV
</xsl:text>
</xsl:if>
   
      
    
    
      
     
     
     
     
      
      
      
    
    
      
     
     
     
     
      

         
    
    
      
     
     
     
     
      
      
      
    
    
      
     
     
     
     
      


   <xsl:if test="normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//typology/@wordOrder)='OVS' or normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//typology/@wordOrder)='VOS'">
<xsl:text>
rule {IP option 2c - subject final, required,  required, active only}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head infl valence&gt; = active
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;I' head type existential&gt; = -
         {&lt;I' head type speech_PP&gt; = +
         /&lt;I' head type speech_DP&gt; = +
         /&lt;I' head type copular&gt; = +
         /&lt;I' head type perception&gt; = +
         /&lt;I' head type transitive&gt; = -
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = +
          &lt;DP head agr&gt; = &lt;I' head object head agr&gt;
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = +
          &lt;DP head agr&gt; = &lt;I' head object head agr&gt;
         }
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type suffix conj&gt; = -         | not part of a conjunct
          &lt;I' head type comma&gt; = -
          &lt;IP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]] 
          &lt;IP head&gt; == [subject:[head:[type:[pro-drop:+
                                             verbheaded:+]]]] 
                        -&gt; ~[fronted:[cat:FocusP]]   
          &lt;IP option&gt; = 2c
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
  
  <xsl:if test="normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='OVS' or normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='VOS'">
<xsl:text>
rule {IP option 2cNegVerb - subject final, required, active only, neg requires neg verb}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head infl valence&gt; = active
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;I' head type existential&gt; = -
         {&lt;I' head type speech_PP&gt; = +
         /&lt;I' head type speech_DP&gt; = +
         /&lt;I' head type copular&gt; = +
         /&lt;I' head type perception&gt; = +
         /&lt;I' head type transitive&gt; = -
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = +
          &lt;DP head agr&gt; = &lt;I' head object head agr&gt;
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head type speech_PP&gt; = -
          &lt;I' head type speech_DP&gt; = -
          &lt;I' head type copular&gt; = -
          &lt;I' head type perception&gt; = -
          &lt;I' head object head type reflexive&gt; = +
          &lt;DP head agr&gt; = &lt;I' head object head agr&gt;
         }
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type suffix conj&gt; = -         | not part of a conjunct
          &lt;I' head type comma&gt; = -
          &lt;IP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]] 
          &lt;IP head&gt; == [subject:[head:[type:[pro-drop:+
                                             verbheaded:+]]]] 
                       -&gt; ~[fronted:[cat:FocusP]]   
          &lt;I' head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP option&gt; = 2cNegVerb
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
  
  
<xsl:if test="normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/causativeMake/@checked)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/causativeMake/@checked)='yes'">
<xsl:text>
rule {IP option 2cCaus - subject final, required, causative only}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = causative
          &lt;DP head type wh&gt; = -
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type suffix conj&gt; = -         | not part of a conjunct  
          &lt;I' head type comma&gt; = -
          &lt;IP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]]  
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt; 
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;IP option&gt; = 2cCaus
</xsl:text>
</xsl:if>   
  
    
    
    
    
    
    
    
    
    
    
    
  
<xsl:if test="normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/causativeMake/@checked)='yes' or normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/causativeMake/@checked)='yes'">
<xsl:text>
rule {IP option 2cCausNegVerb - subject final, required, causative only, neg subject requires neg verb}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = causative
          &lt;DP head type wh&gt; = -
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type suffix conj&gt; = -         | not part of a conjunct  
          &lt;I' head type comma&gt; = -
          &lt;IP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]]  
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt; 
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;I' head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP option&gt; = 2cCausNegVerb
</xsl:text>
</xsl:if>   
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
   
<xsl:if test="normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/@applicative)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/@applicative)='yes'">
<xsl:text>
rule {IP option 2cApp - subject final, required, applicative only}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = applicative
          &lt;DP head type wh&gt; = -
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type suffix conj&gt; = -         | not part of a conjunct
          &lt;I' head type comma&gt; = -
          &lt;IP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]]  
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt; 
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;IP option&gt; = 2cApp
</xsl:text>
</xsl:if>   
  
    
    
    
    
    
    
    
    
    
    
    
  
<xsl:if test="normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/@applicative)='yes' or normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//ip/@applicative)='yes'">
<xsl:text>
rule {IP option 2cAppNegVerb - subject final, required, applicative only, neg subject requires neg verb}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = applicative
          &lt;DP head type wh&gt; = -
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type suffix conj&gt; = -         | not part of a conjunct
          &lt;I' head type comma&gt; = -
          &lt;IP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;IP head&gt; == [infl:[finite:+]] -&gt; ~[subject:[head:[case:accusative]]]  
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt; 
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head&gt; == [object:[head:[type:[reciprocal:+]]]] -&gt;
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;I' head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP option&gt; = 2cAppNegVerb
</xsl:text>
</xsl:if>   
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
  
<xsl:if test="normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' or normalize-space(//neg/@subjVerbRequired)!='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes'">
<xsl:text>
rule {IP option 2d - subject final, required, passive}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head object&gt; = &lt;DP&gt;
          &lt;DP head type wh&gt; = -
          &lt;IP head infl valence&gt; = passive 
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;DP head type possessive&gt; = -          |subject not possessive
          &lt;DP head type reflexive&gt; = -           |subject not reflexive
          &lt;DP head type reciprocal&gt; = -          |subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type suffix conj&gt; = -         | not part of a conjunct
          &lt;I' head type comma&gt; = -
          &lt;IP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;IP option&gt; = 2d
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
  
<xsl:if test="normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' or normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes'">
<xsl:text>
rule {IP option 2dNegVerb - subject final, required, passive, neg requires neg verb}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head object&gt; = &lt;DP&gt;
          &lt;DP head type wh&gt; = -
          &lt;IP head infl valence&gt; = passive
          &lt;DP head type focusmarked&gt; = -          | + in focus position
          &lt;DP head type prefix focusmarked&gt; = -   | + in focus position
          &lt;DP head type suffix focusmarked&gt; = -   | + in focus position
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;IP head fronted&gt; == ~[cat:FocusP]
          &lt;I' head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP option&gt; = 2dNegVerb
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
  

<xsl:if test="normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes'">
<xsl:text>
rule {IP option 2dantiNotErg - subject final, required, antipassive, not ergative}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head object&gt; = &lt;DP&gt;
          &lt;IP head infl valence&gt; = antipassive
          &lt;DP head case&gt; = nominative
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type prefix conj&gt; = -         | not part of a conjunct
          &lt;DP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP option&gt; = 2dantiNotErg
</xsl:text>
</xsl:if>
   
      
      
     
     
     
     
      
      
      
      
     
     
     
     
      
      
      
      
     
     
     
     
      
      
      
      
     
     
     
     
      
   
<xsl:if test="normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAgr/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveAffix/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {IP option 2dantiNotErgNegV - subject final, required, antipassive, not ergative, neg V requires neg Subj}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = antipassive
          &lt;DP head case&gt; = nominative
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type suffix conj&gt; = -         | not part of a conjunct
          &lt;I' head type comma&gt; = -
          &lt;IP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;I' head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP option&gt; = 2dantiNotErgNegV
</xsl:text>
</xsl:if>
   
      
      
     
     
     
     
      
      
      
      
     
     
     
     
      
      
      
      
     
     
     
     
      
      
      
      
     
     
     
     
      
   
   
<xsl:if test="normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='split' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='split' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)!='yes'">
<xsl:text>
rule {IP option 2dantiErg - subject final, required, antipassive, ergative}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = antipassive
          &lt;DP head case&gt; = absolutive
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type suffix conj&gt; = -         | not part of a conjunct
          &lt;I' head type comma&gt; = -
          &lt;IP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP option&gt; = 2dantiErg
</xsl:text>
</xsl:if>
   
      
    
    
      
     
     
     
     
      
      
      
    
    
      
     
     
     
     
      

         
    
    
      
     
     
     
     
      
      
      
    
    
      
     
     
     
     
      

<xsl:if test="normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='split' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='split' and normalize-space(//ip/@antipassive)='yes' and normalize-space(//ip/antipassiveErg/@checked)='yes' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {IP option 2dantiErgNegV - subject final, required, antipassive, ergative, neg V requires neg Subj}
IP = I' DP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = &lt;DP head type root&gt;
          &lt;IP head type pro-drop&gt; = -
          &lt;I' head subject&gt; = &lt;DP&gt;
          &lt;I' head infl valence&gt; = antipassive
          &lt;DP head case&gt; = absolutive
          &lt;DP head type wh&gt; = -
          &lt;DP head type possessive&gt; = -          | subject not possessive
          &lt;DP head type reflexive&gt; = -           | subject not reflexive
          &lt;DP head type reciprocal&gt; = -          | subject not reciprocal
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type suffix conj&gt; = -         | not part of a conjunct
          &lt;I' head type comma&gt; = -
          &lt;IP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;I' head&gt; == [subject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if subject negative, verb must be
          &lt;IP head&gt; == [type:[reciprocal:+]] -&gt;   
                       [subject:[head:[agr:[number:plural]]]]
          &lt;IP option&gt; = 2dantiErgNegV
</xsl:text>
</xsl:if>
   
      
    
    
      
     
     
     
     
      
      
      
    
    
      
     
     
     
     
      

         
    
    
      
     
     
     
     
      
      
      
    
    
      
     
     
     
     
      

  
<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' or normalize-space(//typology/@wordOrder)='VSO'">
<xsl:text>
rule {IP option 3 - subject internal to VP for VSO, OSV}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP option&gt; = 3
</xsl:text>
</xsl:if>
  
    
    
    
  
<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/existWord/@checked)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/existWord/@checked)='yes'">
<xsl:text>
rule {IP option 3aexist - existential Adv initial}
IP = AdvP I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head subject&gt; = &lt;AdvP&gt;
          &lt;IP head type existential&gt; = +
          &lt;AdvP head type existential&gt; = +
          &lt;IP head infl valence&gt; = active
          &lt;AdvP head type comma&gt; = -
          &lt;IP head type prefix&gt; &lt;= &lt;AdvP head type prefix&gt;
          &lt;IP option&gt; = 3aexist
</xsl:text>
</xsl:if>
   
      
      
      
      
      
      
      
   
<xsl:if test="normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/existWord/@checked)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/existWord/@checked)='yes'">
<xsl:text>
rule {IP option 3bexist - existential Adv final}
IP = I' AdvP
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head subject&gt; = &lt;AdvP&gt;
          &lt;IP head type existential&gt; = +
          &lt;AdvP head type existential&gt; = +
          &lt;IP head infl valence&gt; = active
          &lt;I'  head type comma&gt; = -
          &lt;IP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;AdvP head type suffix&gt;
          &lt;IP option&gt; = 3bexist
</xsl:text>
</xsl:if>
   
      
      
      
      
      
      
      
   
<xsl:if test="normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//q/@contFront)='before'">
<xsl:text>
rule {IP option 4a - subject questioned, not passive}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type question&gt; = +
          &lt;IP head type pro-drop&gt; = -
          &lt;IP head fronted cat&gt; = DP
          &lt;IP head fronted head type wh&gt; = +
          &lt;IP head fronted&gt; = &lt;I' head subject&gt; 
         {&lt;I' head type transitive&gt; = -
          &lt;I' head type ditransitive&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head object head type reflexive&gt; = +
          &lt;IP head fronted head agr&gt; = &lt;I' head object head agr&gt;
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head object head type reflexive&gt; = +
          &lt;IP head fronted head agr&gt; = &lt;I' head object head agr&gt;
         }
          &lt;IP head infl&gt; == ~[valence:passive]
          &lt;IP head fronted head&gt; == ~[case:accusative]
          &lt;IP option&gt; = 4a
</xsl:text>
</xsl:if>
  
    
    
    
    
    
  
 
<xsl:if test="normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//focus/@focus)='yes' and normalize-space(//focus/@focusPos)='before'">
<xsl:text>
rule {IP option 4afoc - subject focused, not passive, root only}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type root&gt; = +
          &lt;IP head type question&gt; = -
          &lt;IP head type pro-drop&gt; = -
          &lt;IP head fronted head type wh&gt; = -
          &lt;IP head fronted&gt; = &lt;I' head subject&gt; 
         {&lt;I' head type transitive&gt; = -
          &lt;I' head type ditransitive&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type transitive&gt; = +
          &lt;I' head type ditransitive&gt; = -
          &lt;I' head object head type reflexive&gt; = +
          &lt;IP head fronted head agr&gt; = &lt;I' head object head agr&gt;
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head object head type reflexive&gt; = -
         /&lt;I' head type ditransitive&gt; = +
          &lt;I' head object head type reflexive&gt; = +
          &lt;IP head fronted head agr&gt; = &lt;I' head object head agr&gt;
         }
          &lt;IP head type subject_focused&gt; &lt;= +        | check for focus marking
          &lt;IP head object&gt; == ~[cat:FocusP]
          &lt;IP head indirectobject&gt; == ~[cat:FocusP]
          &lt;IP head infl&gt; == ~[valence:passive]
          &lt;IP head fronted head&gt; == ~[case:accusative]
          &lt;IP option&gt; = 4afoc
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
  
<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after'">
<xsl:text>
rule {IP option 4aSOV - subject questioned, not passive, SOV}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type question&gt; = +
          &lt;IP head type pro-drop&gt; = -
          &lt;IP head infl&gt; == ~[valence:passive]
          &lt;IP option&gt; = 4aSOV
</xsl:text>
</xsl:if>
  
    
    
    
  

<xsl:if test="normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@passive)='yes'">
<xsl:text>
rule {IP option 4b - subject questioned, passive}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type question&gt; = +
          &lt;IP head type pro-drop&gt; = -
          &lt;IP head infl valence&gt; = passive
          &lt;IP head fronted cat&gt; = DP
          &lt;IP head fronted head type wh&gt; = +
          &lt;IP head fronted&gt; = &lt;I' head subject&gt; 
          &lt;IP head fronted head&gt; == ~[case:accusative]
          &lt;IP option&gt; = 4b
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
  
<xsl:if test="normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//ip/@passive)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//focus/@focusPos)='before'">
<xsl:text>
rule {IP option 4bfoc - subject focused, passive}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type question&gt; = -
          &lt;IP head type pro-drop&gt; = -
          &lt;IP head infl valence&gt; = passive
          &lt;IP head fronted cat&gt; = FocusP
          &lt;IP head fronted head type wh&gt; = -
          &lt;IP head fronted head agr&gt; = &lt;I' head subject head agr&gt;
          &lt;IP head type subject_focused&gt; &lt;= +        | check for focus marking
          &lt;IP head fronted head&gt; == ~[case:accusative]
          &lt;IP option&gt; = 4bfoc
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
  
<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@passive)='yes'">
<xsl:text>
rule {IP option 4bSOV - subject questioned, passive, SOV}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type question&gt; = +
          &lt;IP head type pro-drop&gt; = -
          &lt;IP head infl valence&gt; = passive
          &lt;IP option&gt; = 4bSOV
</xsl:text>
</xsl:if>
  
    
    
    
    
    
  
<xsl:if test="normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//q/@contFront)='before'">
<xsl:text>
rule {IP option 5 - adverb questioned, copular verb}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type question&gt; = +
          &lt;IP head fronted cat&gt; = AdvP
          &lt;IP head fronted head type wh&gt; = +
          &lt;I' head type copular&gt; = +
          &lt;I' head type transitive&gt; = -
          &lt;IP head infl&gt; == ~[valence:passive]
          &lt;IP option&gt; = 5
</xsl:text>
</xsl:if>
  
    
    
    
    
    
  
<xsl:if test="normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//q/@contFront)='before'">
<xsl:text>
rule {IP option 5nonroot - adverb questioned}
IP = I'
          &lt;IP head&gt; = &lt;I' head&gt;
          &lt;IP head type question&gt; = +
          &lt;IP head fronted cat&gt; = AdvP
          &lt;IP head fronted head type wh&gt; = +
          &lt;I' head type root&gt; = -
          &lt;IP head infl&gt; == ~[valence:passive]
          &lt;IP option&gt; = 5nonroot
</xsl:text>
</xsl:if>

  
<xsl:if test="normalize-space(//ip/@aux)='no' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)!='yes' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes'">
<xsl:text>
rule {IBar option 1 - no auxiliaries}
I' = VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;I' head type auxiliary-VP&gt; = -     | must not have VP Aux to use this rule
          &lt;I' head type auxiliary-I'&gt; = -
          &lt;I' option&gt; = 1
</xsl:text>
</xsl:if>
  

    
    
    
    
    

    
    
    
    
    
    

<xsl:if test="normalize-space(//ip/@aux)='no' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)!='yes' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes'">
<xsl:text>
rule {IBarNegObjVerbRequired option 1 - no auxiliaries}
I' = VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;I' head type auxiliary-VP&gt; = -     | must not have VP Aux to use this rule
          &lt;I' head type auxiliary-I'&gt; = -
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if indirectobject negative, VP must be
          &lt;VP head&gt; == [adjoinedVP1:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;VP head&gt; == [adjoinedVP2:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;I' option&gt; = 1NegObjVerbRequired
</xsl:text>
</xsl:if>
  

    
    
    
    

  
    
    
    
    
    
    

<xsl:if test="normalize-space(//ip/@aux)='no' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)!='yes' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text>
rule {IBar option 1NegAdvVerbRequired - no auxiliaries}
I' = VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;I' head type auxiliary-VP&gt; = -     | must not have VP Aux to use this rule
          &lt;I' head type auxiliary-I'&gt; = -
          &lt;VP head&gt; == [adverbialVP1:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialVP2:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialTemp:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if temporal adverbial negative, VP must be
          &lt;VP head&gt; == [location:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if location adverbial negative, VP must be
          &lt;I' option&gt; = 1NegAdvVerbRequired
</xsl:text>
</xsl:if>
  

    
    
    
    

  
    
    
    
    
    
    
  
<xsl:if test="normalize-space(//ip/@aux)='no' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//ip/@auxRequired)!='yes' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text>
rule {IBar option 1NegObjOrAdvVerbRequired - no auxiliaries}
I' = VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;I' head type auxiliary-VP&gt; = -     | must not have VP Aux to use this rule
          &lt;I' head type auxiliary-I'&gt; = -
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if indirectobject negative, VP must be
          &lt;VP head&gt; == [adjoinedVP1:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;VP head&gt; == [adjoinedVP2:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;VP head&gt; == [adverbialVP1:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialVP2:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialTemp:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if temporal adverbial negative, VP must be
          &lt;VP head&gt; == [location:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if location adverbial negative, VP must be
          &lt;I' option&gt; = 1NegObjOrAdvVerbRequired
</xsl:text>
</xsl:if>
  

    
    
    
    

  
    
    
    
    
    
    
  

 <xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes'">
<xsl:text>
rule {IBar option 2 - positive Aux initial, required}
I' = Aux VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = positive
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;Aux head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' option&gt; = 2
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
 <xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes'">
<xsl:text>
rule {IBar option 2NegObjVerbRequired - positive Aux initial, required}
I' = Aux VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = positive
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;Aux head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if indirectobject negative, VP must be
          &lt;VP head&gt; == [adjoinedVP1:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;VP head&gt; == [adjoinedVP2:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;I' option&gt; = 2NegObjVerbRequired
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
 <xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text>
rule {IBar option 2NegAdvVerbRequired - positive Aux initial, required}
I' = Aux VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = positive
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;Aux head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;VP head&gt; == [adverbialVP1:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialVP2:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialTemp:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if temporal adverbial negative, VP must be
          &lt;VP head&gt; == [location:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if location adverbial negative, VP must be
          &lt;I' option&gt; = 2NegAdvVerbRequired
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
 <xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text>
rule {IBar option 2NegObjOrAdvVerbRequired - positive Aux initial, required}
I' = Aux VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = positive
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;Aux head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if indirectobject negative, VP must be
          &lt;VP head&gt; == [adjoinedVP1:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;VP head&gt; == [adjoinedVP2:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;VP head&gt; == [adverbialVP1:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialVP2:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialTemp:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if temporal adverbial negative, VP must be
          &lt;VP head&gt; == [location:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if location adverbial negative, VP must be
          &lt;I' option&gt; = 2NegObjOrAdvVerbRequired
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  

 <xsl:if test="normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='VOS' or normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='VSO'">
<xsl:text>
rule {IBar option 2Neg - negative Aux word initial, but no other aux required}
I' = Aux VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;Aux head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' head infl polarity&gt; &lt;= negative
          &lt;VP head infl polarity&gt; &lt;= negative
          &lt;I' option&gt; = 2Neg
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
  
  
<xsl:if test="normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='VOS' or normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='VSO'">
<xsl:text>
rule {IBar option 2NegAuxVerbRequired - negative Aux word initial, but no other aux required}
I' = Aux VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
          &lt;VP head infl polarity&gt; = negative          | only neg verb with neg Aux
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;Aux head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' option&gt; = 2NegAuxVerbRequired
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
  
 
 <xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='VOS' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='VOS' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='VSO' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='VSO'">
<xsl:text>
rule {IBar option 2NegReqAux - negative Aux word initial with other aux required, for fronted Aux case}
I' = Aux VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
          &lt;Aux head type prefix negative&gt; = -        | not Neg clitic for this rule
          &lt;Aux head type suffix negative&gt; = -
          &lt;I' head type question&gt; = +                | questions only with fronted Aux for this rule
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;Aux head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' head infl polarity&gt; &lt;= negative
          &lt;VP head infl polarity&gt; &lt;= negative
          &lt;I' option&gt; = 2NegReqAux
</xsl:text>
</xsl:if>
  
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
  
  
<xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='VOS' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='VOS' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='VSO' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='VSO'">
<xsl:text>
rule {IBar option 2NegAuxVerbRequiredReqAux - negative Aux word initial with other aux required, for fronted Aux case}
I' = Aux VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
          &lt;VP head infl polarity&gt; = negative          | only neg verb with neg Aux
          &lt;Aux head type prefix negative&gt; = -        | not Neg clitic for this rule
          &lt;Aux head type suffix negative&gt; = -
          &lt;I' head type question&gt; = +                | questions only with fronted Aux for this rule
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;Aux head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' head infl polarity&gt; &lt;= negative
          &lt;VP head infl polarity&gt; &lt;= negative
          &lt;I' option&gt; = 2NegAuxVerbRequiredReqAux
</xsl:text>
</xsl:if>
  
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
  
 
  <xsl:if test="normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//typology/@wordOrder)='VOS' or normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//typology/@wordOrder)='VSO'">
<xsl:text>
rule {IBar option 2NegCL - positive Aux with Neg clitic initial}
I' = Aux VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
         {&lt;Aux head type prefix negative&gt; = +
         /&lt;Aux head type suffix negative&gt; = +
         }
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;Aux head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' head infl polarity&gt; &lt;= negative
          &lt;VP head infl polarity&gt; &lt;= negative
          &lt;I' option&gt; = 2NegCL
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
  
  
<xsl:if test="normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='SVO' or normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='VOS' or normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='VSO'">
<xsl:text>
rule {IBar option 2NegCLAuxVerbRequired - positive Aux with Neg clitic initial, no other aux required}
I' = Aux VP
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
          &lt;VP head infl polarity&gt; = negative          | only neg verb with neg Aux
         {&lt;Aux head type prefix negative&gt; = +
         /&lt;Aux head type suffix negative&gt; = +
         }
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;Aux head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type prefix&gt; &lt;= &lt;Aux head type prefix&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' option&gt; = 2NegCLAuxVerbRequired
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
  

 <xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)!='yes'">
<xsl:text>
rule {IBar option 3 - positive Aux final, required}
I' = VP Aux
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = positive
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;VP head type comma&gt; = -
          &lt;I' head type comma&gt; &lt;= &lt;Aux head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' option&gt; = 3
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

 <xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)!='yes'">
<xsl:text>
rule {IBar option 3NegObjVerbRequired - positive Aux final, required}
I' = VP Aux
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = positive
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;VP head type comma&gt; = -
          &lt;I' head type comma&gt; &lt;= &lt;Aux head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if indirectobject negative, VP must be
          &lt;VP head&gt; == [adjoinedVP1:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;VP head&gt; == [adjoinedVP2:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;I' option&gt; = 3NegObjVerbRequired
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

 <xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text>
rule {IBar option 3NegAdvVerbRequired - positive Aux final, required}
I' = VP Aux
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = positive
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;VP head type comma&gt; = -
          &lt;I' head type comma&gt; &lt;= &lt;Aux head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;VP head&gt; == [adverbialVP1:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialVP2:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialTemp:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if temporal adverbial negative, VP must be
          &lt;VP head&gt; == [location:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if location adverbial negative, VP must be
          &lt;I' option&gt; = 3NegAdvVerbRequired
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

 <xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@aux)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxNonfinite)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes' or normalize-space(//ip/@auxOther)='yes' and normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//neg/@advVerbRequired)='yes'">
<xsl:text>
rule {IBar option 3NegObjOrAdvVerbRequired - positive Aux final, required}
I' = VP Aux
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = positive
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;VP head type comma&gt; = -
          &lt;I' head type comma&gt; &lt;= &lt;Aux head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if indirectobject negative, VP must be
          &lt;VP head&gt; == [adjoinedVP1:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;VP head&gt; == [adjoinedVP2:[head:[object:[head:[infl:[polarity:negative]]]]]] -&gt;   
                       [infl:[polarity:negative]] | if object of adjoined PP negative, VP must be
          &lt;VP head&gt; == [adverbialVP1:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialVP2:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if adjoined adverbial negative, VP must be
          &lt;VP head&gt; == [adverbialTemp:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if temporal adverbial negative, VP must be
          &lt;VP head&gt; == [location:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if location adverbial negative, VP must be
          &lt;I' option&gt; = 3NegObjOrAdvVerbRequired
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


 <xsl:if test="normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='OSV' or normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='OVS'">
<xsl:text>
rule {IBar option 3Neg - negative Aux word final, but no other aux required}
I' = VP Aux
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;VP head type comma&gt; = -
          &lt;I' head type comma&gt; &lt;= &lt;Aux head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' head infl polarity&gt; &lt;= negative
          &lt;VP head infl polarity&gt; &lt;= negative
          &lt;I' option&gt; = 3Neg
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
  

 <xsl:if test="normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='OSV' or normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='OVS'">
<xsl:text>
rule {IBar option 3NegAuxVerbRequired - negative Aux final, but no other aux required}
I' = VP Aux
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
          &lt;VP head infl polarity&gt; = negative         | neg Aux requires neg verb
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;VP head type comma&gt; = -
          &lt;I' head type comma&gt; &lt;= &lt;Aux head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' option&gt; = 3NegAuxVerbRequired
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
  

 <xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='after' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='after' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='after' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='OVS' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='after' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='OVS' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='after' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='OSV' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='before' and normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='OSV'">
<xsl:text>
rule {IBar option 3NegReqAux - negative Aux word final with other aux required, for fronted Aux case}
I' = VP Aux
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
          &lt;Aux head type prefix negative&gt; = -        | not Neg clitic for this rule
          &lt;Aux head type suffix negative&gt; = -
          &lt;I' head type question&gt; = +                | questions only with fronted Aux for this rule
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;VP head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
          &lt;I' head type comma&gt; &lt;= &lt;Aux head type comma&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' head infl polarity&gt; &lt;= negative
          &lt;VP head infl polarity&gt; &lt;= negative
          &lt;I' option&gt; = 3NegReqAux
</xsl:text>
</xsl:if>
  
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
  
  
<xsl:if test="normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='after' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='after' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='after' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='OVS' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='after' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='OVS' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainCont)='noAux' and normalize-space(//q/@mainContAuxPos)='after' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='OSV' or normalize-space(//ip/@aux)='yes' and normalize-space(//q/@mainYN)='noAux' and normalize-space(//q/@mainYNAuxPos)='after' and normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxWord/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='yes' and normalize-space(//typology/@wordOrder)='OSV'">
<xsl:text>
rule {IBar option 3NegAuxVerbRequiredReqAux - negative Aux word initial with other aux required, for fronted Aux case}
I' = VP Aux
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
          &lt;VP head infl polarity&gt; = negative          | only neg verb with neg Aux
          &lt;Aux head type prefix negative&gt; = -        | not Neg clitic for this rule
          &lt;Aux head type suffix negative&gt; = -
          &lt;I' head type question&gt; = +                | questions only with fronted Aux for this rule
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;VP head type comma&gt; = -
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;I' head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
          &lt;I' head type comma&gt; &lt;= &lt;Aux head type comma&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' head infl polarity&gt; &lt;= negative
          &lt;VP head infl polarity&gt; &lt;= negative
          &lt;I' option&gt; = 3NegAuxVerbRequiredReqAux
</xsl:text>
</xsl:if>
  
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
     
    
    
        
        
        
        
    
    
    
    
    
    
    
    
    
  
 
 <xsl:if test="normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='OSV' or normalize-space(//neg/@auxVerbRequired)='no' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='OVS'">
<xsl:text>
rule {IBar option 3NegCL - positive Aux with Neg clitic final, but no other aux required}
I' = VP Aux
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
         {&lt;Aux head type prefix negative&gt; = +
         /&lt;Aux head type suffix negative&gt; = +
         }
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;VP head type comma&gt; = -
          &lt;I' head type comma&gt; &lt;= &lt;Aux head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' head infl polarity&gt; &lt;= negative
          &lt;VP head infl polarity&gt; &lt;= negative
          &lt;I' option&gt; = 3NegCL
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
  

 <xsl:if test="normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='OSV' or normalize-space(//neg/@auxVerbRequired)='yes' and normalize-space(//neg/@negVerbal)='yes' and normalize-space(//neg/negAuxAffix/@checked)='yes' and normalize-space(//neg/@negAuxRequiresAux)='no' and normalize-space(//typology/@wordOrder)='OVS'">
<xsl:text>
rule {IBar option 3NegCLAuxVerbRequired - positive Aux with Neg clitic final, but no other aux required}
I' = VP Aux
          &lt;I' head&gt; = &lt;VP head&gt;
          &lt;Aux head infl polarity&gt; = negative
          &lt;VP head infl polarity&gt; = negative         | neg Aux requires neg verb
         {&lt;Aux head type prefix negative&gt; = +
         /&lt;Aux head type suffix negative&gt; = +
         }
          &lt;I' head subject head agr&gt; = &lt;Aux head subject head agr&gt; 
          &lt;VP head type comma&gt; = -
          &lt;I' head type comma&gt; &lt;= &lt;Aux head type comma&gt;
          &lt;IP head type suffix&gt; &lt;= &lt;Aux head type suffix&gt;
          &lt;I' head infl finite&gt; &lt;= &lt;Aux head infl finite&gt;
          &lt;VP head type auxiliary-I'&gt; &lt;= +
          &lt;I' option&gt; = 3NegCLAuxVerbRequired
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
     
    
    
    
    
    
    
    
    
    
  

</xsl:template>
</xsl:stylesheet>
