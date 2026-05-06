<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="vpditrandp5">
  <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7dqNegObjVerbRequiredVAbs - V final, ditransitive with DP (absolutive object questioned)}
VP = DP V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = dative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = oblique
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = dative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = oblique
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         }
          &lt;V head indirectobject&gt; = &lt;DP&gt; 
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if indirectobject negative, VP must be
          &lt;VP option&gt; = 7dqNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       
  
    <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7dqNegObjVerbRequiredSOVVAbs - V final, ditransitive with DP (absolutive object questioned)}
VP = DP DP_1 V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP_1&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;DP_1 head case&gt; = ergative
          &lt;DP head case&gt; = dative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;DP_1 head case&gt; = ergative
          &lt;DP head case&gt; = oblique
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = absolutive
          &lt;DP head case&gt; = dative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = absolutive
          &lt;DP head case&gt; = oblique
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         }
          &lt;V head indirectobject&gt; = &lt;DP&gt; 
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP_1 head type suffix poss&gt; = -       | only in possessor position
          &lt;DP_1 head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
          &lt;DP_1 head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;DP_1 head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if indirectobject negative, VP must be
          &lt;VP option&gt; = 7dqNegObjVerbRequiredSOVVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7dqNegObjVerbRequiredFocVAbs - V final, ditransitive with DP (absolutive object focused)}
VP = DP V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = FocusP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = dative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = oblique
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = dative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = oblique
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = ergative
          &lt;DP head case&gt; = absolutive
         }
          &lt;V head indirectobject&gt; = &lt;DP&gt; 
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;VP head type question&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if indirectobject negative, VP must be
          &lt;VP option&gt; = 7dqNegObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       
  
 
  
 <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7aqioVNom - V initial, ditransitive with DP (IO questioned)}
VP = V DP
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;V head type comma&gt; = -
          &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP option&gt; = 7aqioVNom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
     
       
       
       
       
       
    
    
    
    
    
    
    
    
     
       
       
       
       
       
    
    
    
    
    
    
    
    
     
       
       
       
       
       
    
    
    
    
    
    
    
    
     
       
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7aqioFocVNom - V initial, ditransitive with DP (IO focused)}
VP = V DP
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = FocusP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         }
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;VP head type question&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;V head type comma&gt; = -
          &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;VP option&gt; = 7aqioFocVNom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
     
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
     
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
     
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
     
    
    
       
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7aqioNegObjVerbRequiredVNom - V initial, ditransitive with DP (IO questioned)}
VP = V DP
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;V head type comma&gt; = -
          &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP option&gt; = 7aqioNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
       
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7aqioNegObjVerbRequiredFocVNom - V initial, ditransitive with DP (IO focused)}
VP = V DP
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = FocusP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         }
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;VP head type question&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;V head type comma&gt; = -
          &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP option&gt; = 7aqioNegObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7bqioVAbs - V initial, ditransitive with DP (IO questioned)}
VP = V DP
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;V head type comma&gt; = -
          &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP option&gt; = 7bqioVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7bqioFocVAbs - V initial, ditransitive with DP (IO focused)}
VP = V DP
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = FocusP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         }
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;VP head type question&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;V head type comma&gt; = -
          &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;VP option&gt; = 7bqioFocVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7bqioNegObjVerbRequiredVAbs - V initial, ditransitive with DP (IO questioned)}
VP = V DP
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;V head type comma&gt; = -
          &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP option&gt; = 7bqioNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7bqioNegObjVerbRequiredFocVAbs - V initial, ditransitive with DP (IO focused)}
VP = V DP
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = FocusP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         }
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;VP head type question&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;V head type comma&gt; = -
          &lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP option&gt; = 7bqioNegObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
     
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7cqioVNom - V final, ditransitive with DP (IO questioned)}
VP = DP V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP option&gt; = 7cqioVNom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
     
       
       
       
       
       
    
    
    
    
    
    
    
    
     
       
       
       
       
       
    
    
    
    
    
    
    
    
     
       
       
       
       
       
    
    
    
    
    
    
    
    
     
       
       
       
       
  
        <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7cqioSOVVNom - V final, ditransitive with DP (IO questioned)}
VP = DP DP_1 V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;DP_1&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;DP_1 head case&gt; = genitive
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;DP_1 head case&gt; = dative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = dative
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP_1 head type suffix poss&gt; = -       | only in possessor position
          &lt;DP_1 head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
          &lt;DP_1 head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;DP_1 head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP option&gt; = 7cqioSOVVNom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7cqioFocVNom - V final, ditransitive with DP (IO focused)}
VP = DP V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = FocusP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         }
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;VP head type question&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP option&gt; = 7cqioFocVNom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
     
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
     
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
     
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
     
    
    
       
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7cqioNegObjVerbRequiredVNom - V final, ditransitive with DP (IO questioned)}
VP = DP V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP option&gt; = 7cqioNegObjVerbRequiredVNom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
       
       
       
       
  
      <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7cqioNegObjVerbRequiredSOVVNom - V final, ditransitive with DP (IO questioned)}
VP = DP DP_1 V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;DP_1&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;DP_1 head case&gt; = genitive
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;DP_1 head case&gt; = dative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = dative
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP_1 head type suffix poss&gt; = -       | only in possessor position
          &lt;DP_1 head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
          &lt;DP_1 head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;DP_1 head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP option&gt; = 7cqioNegObjVerbRequiredSOVVnom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7cqioNegObjVerbRequiredFocVNom - V final, ditransitive with DP (IO focused)}
VP = DP V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = FocusP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = genitive
          /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = genitive
          &lt;DP head case&gt; = nominative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;V head fronted head case&gt; = nominative
          &lt;DP head case&gt; = genitive
         }
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;VP head type question&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP option&gt; = 7cqioNegObjVerbRequiredFocVNom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
  
 
  <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7dqioVAbs - V final, ditransitive with DP (IO questioned)}
VP = DP V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP option&gt; = 7dqioVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       

    
    
    
    
    
    
    
    
     
    
       
       
       
  
      <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7dqioSOVVAbs - V final, ditransitive with DP (IO questioned)}
VP = DP DP_1 V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;DP_1&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;DP_1 head case&gt; = dative
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;DP_1 head case&gt; = oblique
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = dative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = oblique
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP_1 head type suffix poss&gt; = -       | only in possessor position
          &lt;DP_1 head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
          &lt;DP_1 head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;DP_1 head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP option&gt; = 7dqioSOVVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7dqioFocVAbs - V final, ditransitive with DP (IO focused)}
VP = DP V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = FocusP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         }
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;VP head type question&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP option&gt; = 7dqioFocVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       

    
    
    
    
    
    
    
    
     
    
    
    
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7dqioNegObjVerbRequiredVAbs - V final, ditransitive with DP (IO questioned)}
VP = DP V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP option&gt; = 7dqioNegObjVerbRequiredVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       
  
    <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='after' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7dqioNegObjVerbRequiredSOVVAbs - V final, ditransitive with DP (IO questioned)}
VP = DP DP_1 V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;DP_1&gt;
          &lt;VP head fronted cat&gt; = DP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;DP_1 head case&gt; = dative
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;DP_1 head case&gt; = oblique
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = dative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = oblique
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;DP_1 head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         }
          &lt;VP head type question&gt; = +
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP_1 head type suffix poss&gt; = -       | only in possessor position
          &lt;DP_1 head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
          &lt;DP_1 head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;DP_1 head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP option&gt; = 7dqioNegObjVerbRequiredSOVVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='ergative' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//typology/@case)='split' and normalize-space(//q/@contFront)='before' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//focus/@focus)='yes' and normalize-space(//ip/@voiceCase)='yesAbs' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7dqioNegObjVerbRequiredFocVAbs - V final, ditransitive with DP (IO focused)}
VP = DP V
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP&gt; 
          &lt;V head indirectobject&gt; = &lt;VP head fronted&gt;
          &lt;VP head fronted cat&gt; = FocusP
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = absolutive
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = dative
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = oblique
          &lt;DP head case&gt; = absolutive
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = ergative
          &lt;V head fronted head case&gt; = absolutive
          &lt;DP head case&gt; = ergative
         }
          &lt;V head type ditransitive&gt; = +
          &lt;V head infl valence&gt; = active
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
          &lt;VP head type question&gt; = -
          &lt;DP head type suffix poss&gt; = -         | only in possessor position
          &lt;DP head type prefix poss&gt; = -
          &lt;DP head type prefix copular&gt; = -      | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP option&gt; = 7dqioNegObjVerbRequiredFocVAbs
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       

    
    
    
    
    
    
    
    
    
    
    
    
       
       
       
  
 
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='dp' and normalize-space(//ip/@diOrder)='direct' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/causativeAffix/@checked)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//ip/@diOrder)='direct' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/causativeAffix/@checked)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='dp' and normalize-space(//ip/@diOrder)='direct' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/causativeAffix/@checked)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//ip/@diOrder)='direct' and normalize-space(//neg/@objVerbRequired)!='yes' and normalize-space(//ip/causativeAffix/@checked)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7aCAVNom - V initial, causative ditransitive with DP, DO,IO order}
VP = V DP_1 DP_2
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP_1&gt;
          &lt;V head indirectobject&gt; = &lt;DP_2&gt;
          &lt;V head type transitive&gt; = +
          &lt;V head infl valence&gt; = causative
          &lt;V head type causative_syntax&gt; = - 
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = genitive
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = dative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP_2 head case&gt; = genitive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP_2 head case&gt; = dative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = nominative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = nominative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = nominative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = nominative
         }
          &lt;DP_1 head type suffix poss&gt; = -       | only in possessor position
          &lt;DP_1 head type prefix poss&gt; = -
          &lt;DP_2 head type suffix poss&gt; = -       | only in possessor position
          &lt;DP_2 head type prefix poss&gt; = -
          &lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
          &lt;DP_1 head type suffix copular&gt; = -
          &lt;DP_2 head type prefix copular&gt; = -    | only in no V/Aux copulars
          &lt;DP_2 head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;V head type comma&gt; = -
          &lt;DP_1 head type comma&gt; = -
          &lt;VP head type comma&gt; &lt;= &lt;DP_2 head type comma&gt;
          &lt;VP head type suffix&gt; &lt;= &lt;DP_2 head type suffix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP option&gt; = 7aCAVNom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
     
    
    
    
    
       
       
    
    
    
    
    
    
    
    
    
     
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
     
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
     
    
    
       
       
       
       
  
  <xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='dp' and normalize-space(//ip/@diOrder)='direct' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/causativeAffix/@checked)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//ip/@diOrder)='direct' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/causativeAffix/@checked)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='dp' and normalize-space(//ip/@diOrder)='direct' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/causativeAffix/@checked)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//typology/@case)!='ergative' and normalize-space(//ip/@diCat)='both' and normalize-space(//ip/@diOrder)='direct' and normalize-space(//neg/@objVerbRequired)='yes' and normalize-space(//ip/causativeAffix/@checked)='yes' and normalize-space(//ip/@voiceCase)='yesNom' and normalize-space(//ip/@voice)='yes'">
<xsl:text>
rule {VP option 7aCANegObjVerbRequiredVNom - V initial, causative ditransitive with DP, DO,IO order}
VP = V DP_1 DP_2
          &lt;VP head&gt; = &lt;V head&gt;
          &lt;V head object&gt; = &lt;DP_1&gt;
          &lt;V head indirectobject&gt; = &lt;DP_2&gt;
          &lt;V head type transitive&gt; = +
          &lt;V head infl valence&gt; = causative
          &lt;V head type causative_syntax&gt; = - 
          &lt;V head type copular&gt; = -
          &lt;V head type existential&gt; = -
         {&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = genitive
         /&lt;V head infl voice&gt; = actor
          &lt;V head subject head case&gt; = nominative
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = dative
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP_2 head case&gt; = genitive
         /&lt;V head infl voice&gt; = objective
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = nominative
          &lt;DP_2 head case&gt; = dative
         /&lt;V head infl voice&gt; = dative
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = nominative
         /&lt;V head infl voice&gt; = locative
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = nominative
         /&lt;V head infl voice&gt; = instrumental
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = nominative
         /&lt;V head infl voice&gt; = goal
          &lt;V head subject head case&gt; = genitive
          &lt;DP_1 head case&gt; = genitive
          &lt;DP_2 head case&gt; = nominative
         }
          &lt;DP_1 head type suffix poss&gt; = -       | only in possessor position
          &lt;DP_1 head type prefix poss&gt; = -
          &lt;DP_2 head type suffix poss&gt; = -       | only in possessor position
          &lt;DP_2 head type prefix poss&gt; = -
          &lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
          &lt;DP_1 head type suffix copular&gt; = -
          &lt;DP_2 head type prefix copular&gt; = -    | only in no V/Aux copulars
          &lt;DP_2 head type suffix copular&gt; = -
          &lt;VP head type motion&gt; = -
          &lt;V head type comma&gt; = -
          &lt;DP_1 head type comma&gt; = -
          &lt;VP head type comma&gt; &lt;= &lt;DP_2 head type comma&gt;
          &lt;VP head type suffix&gt; &lt;= &lt;DP_2 head type suffix&gt;
          &lt;VP head fronted&gt; == ~[cat:FocusP]
          &lt;VP head&gt; == [object:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if object negative, VP must be
          &lt;VP head&gt; == [indirectobject:[head:[infl:[polarity:negative]]]] -&gt;   
                       [infl:[polarity:negative]] | if indirectobject negative, VP must be
          &lt;VP option&gt; = 7aCANegObjVerbRequiredVNom
</xsl:text>
</xsl:if>
  
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
       
    
    
    
    
    
    
    
    
    
    
    
       
       
       
       
  
</xsl:template>
</xsl:stylesheet>
