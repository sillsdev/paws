<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="pp">
<xsl:if test="normalize-space(//coord/@conjWord)!='no'">
<xsl:text>
rule {PP option conj - conjoined PPs}
PP = (InitConj) PP_1 Conj PP_2
          &lt;PP head&gt; = &lt;PP_2 head&gt;
          &lt;PP conjoined&gt; = +
          &lt;PP_1 conjoined&gt; = -  |limit recursion
          &lt;PP option&gt; = conj
</xsl:text>
</xsl:if>
   
      
   
<xsl:if test="normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/proclitic/@checked)='yes'">
<xsl:text>
rule {PP option conjPrefix - conjoined PPs}
PP = PP_1  PP_2
          &lt;PP head&gt; = &lt;PP_2 head&gt;
          &lt;PP conjoined&gt; = +
          &lt;PP_1 conjoined&gt; = -  |limit recursion
          &lt;PP_2 head type prefix conj&gt; = +
          &lt;PP option&gt; = conjPrefix
</xsl:text>
</xsl:if>
   
      
      
      
   
<xsl:if test="normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/enclitic/@checked)='yes'">
<xsl:text>
rule {PP option conjSuffix - conjoined PPs}
PP = PP_1  PP_2
          &lt;PP head&gt; = &lt;PP_2 head&gt;
          &lt;PP conjoined&gt; = +
          &lt;PP_1 conjoined&gt; = -  |limit recursion
          &lt;PP_1 head type suffix conj&gt; = +
          &lt;PP option&gt; = conjSuffix
</xsl:text>
</xsl:if>
   
      
      
      
   
<xsl:if test="normalize-space(//coord/@conjWord)!='yes' and normalize-space(//coord/attachesOther/@checked)='yes' or normalize-space(//coord/@noConj)='yes'">
<xsl:text>
rule {PP option conjNone - conjoined PPs}
PP = PP_1  PP_2
          &lt;PP head&gt; = &lt;PP_2 head&gt;
          &lt;PP conjoined&gt; = +
          &lt;PP_1 conjoined&gt; = -  |limit recursion
          &lt;PP_2 head type prefix conj&gt; = -
          &lt;PP_1 head type suffix conj&gt; = -
          &lt;PP_1 head type comma&gt; = -
          &lt;PP option&gt; = conjNone
</xsl:text>
</xsl:if>
   
      
       
       
       
       
   
<xsl:text>
rule {PP option 0 - no modifiers}
PP = P'
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;PP option&gt; = 0
</xsl:text>
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes' and normalize-space(//pp/ppDegreePosBefore/@checked)='yes'">
<xsl:text>
rule {PP option 1a - degree word before}
PP = Deg P'
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;Deg head type modifies_PP&gt; = +
          &lt;Deg head type PP-initial&gt; = +
          &lt;Deg head type comma&gt; = -
          &lt;PP option&gt; = 1a
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes' and normalize-space(//pp/ppDegreePosAfter/@checked)='yes'">
<xsl:text>
rule {PP option 1b - degree word after}
PP = P' Deg
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;Deg head type modifies_PP&gt; = +
          &lt;Deg head type PP-final&gt; = +
          &lt;P' head type comma&gt; = -
          &lt;PP head type comma&gt; &lt;= &lt;Deg head type comma&gt;
          &lt;PP option&gt; = 1b
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierDegree/@checked)='yes' and normalize-space(//pp/ppDegreePosBoth/@checked)='yes'">
<xsl:text>
rule {PP option 1c - degree word both sides}
PP = Deg_1 P' Deg_2
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;Deg_1 head type modifies_PP&gt; = +
          &lt;Deg_1 head type PP-initial&gt; = +
          &lt;Deg_2 head type modifies_PP&gt; = +
          &lt;Deg_2 head type PP-final&gt; = +
          &lt;Deg_1 head type comma&gt; = -
          &lt;P' head type comma&gt; = -
          &lt;PP head type comma&gt; &lt;= &lt;Deg_2 head type comma&gt;
          &lt;PP option&gt; = 1c
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierManner/@checked)='yes' and normalize-space(//pp/ppMannerPosBefore/@checked)='yes'">
<xsl:text>
rule {PP option 2a - adverbial before}
PP = AdvP P'
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;AdvP head type manner&gt; = +
          &lt;AdvP head type PP-initial&gt; = +
          &lt;AdvP head type comma&gt; = -
          &lt;PP option&gt; = 2a
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierManner/@checked)='yes' and normalize-space(//pp/ppMannerPosAfter/@checked)='yes'">
<xsl:text>
rule {PP option 2b - adverbial after}
PP = P' AdvP
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;AdvP head type manner&gt; = +
          &lt;AdvP head type PP-final&gt; = +
          &lt;P' head type comma&gt; = -
          &lt;PP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
          &lt;PP option&gt; = 2b
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierManner/@checked)='yes' and normalize-space(//pp/ppMannerPosBoth/@checked)='yes'">
<xsl:text>
rule {PP option 2c - adverbial both sides}
PP = AdvP_1 P' AdvP_2
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;AdvP_1 head type manner&gt; = +
          &lt;AdvP_1 head type PP-initial&gt; = +
          &lt;AdvP_2 head type manner&gt; = +
          &lt;AdvP_2 head type PP-final&gt; = +
          &lt;AdvP_1 head type comma&gt; = -
          &lt;P' head type comma&gt; = -
          &lt;PP head type comma&gt; &lt;= &lt;AdvP_2 head type comma&gt;
          &lt;PP option&gt; = 2c
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierLocative/@checked)='yes' and normalize-space(//pp/ppLocativePosBefore/@checked)='yes'">
<xsl:text>
rule {PP option 2aLoc - locative adverbial before}
PP = AdvP P'
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;AdvP head type locative&gt; = +
          &lt;AdvP head type PP-initial&gt; = +
          &lt;AdvP head type comma&gt; = -
          &lt;PP option&gt; = 2aLoc
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierLocative/@checked)='yes' and normalize-space(//pp/ppLocativePosAfter/@checked)='yes'">
<xsl:text>
rule {PP option 2bLoc - locative adverbial after}
PP = P' AdvP
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;AdvP head type locative&gt; = +
          &lt;AdvP head type PP-final&gt; = +
          &lt;P' head type comma&gt; = -
          &lt;PP head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
          &lt;PP option&gt; = 2bLoc
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierLocative/@checked)='yes' and normalize-space(//pp/ppLocativePosBoth/@checked)='yes'">
<xsl:text>
rule {PP option 2cLoc - locative adverbial both sides}
PP = AdvP_1 P' AdvP_2
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;AdvP_1 head type locative&gt; = +
          &lt;AdvP_1 head type PP-initial&gt; = +
          &lt;AdvP_2 head type manner&gt; = +
          &lt;AdvP_2 head type PP-final&gt; = +
          &lt;AdvP_1 head type comma&gt; = -
          &lt;P' head type comma&gt; = -
          &lt;PP head type comma&gt; &lt;= &lt;AdvP_2 head type comma&gt;
          &lt;PP option&gt; = 2cLoc
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOrdinal/@checked)='yes' and normalize-space(//pp/ppOrdinalPosBefore/@checked)='yes'">
<xsl:text>
rule {PP option 3a - ordinal before}
PP = AdjP P'
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;AdjP head type ordinal&gt; = +
          &lt;AdjP head type PP-initial&gt; = +
          &lt;AdjP head type comma&gt; = -
          &lt;PP option&gt; = 3a
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOrdinal/@checked)='yes' and normalize-space(//pp/ppOrdinalPosAfter/@checked)='yes'">
<xsl:text>
rule {PP option 3b - ordinal after}
PP = P' AdjP
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;AdjP head type ordinal&gt; = +
          &lt;AdjP head type PP-final&gt; = +
          &lt;P' head type comma&gt; = -
          &lt;PP head type comma&gt; &lt;= &lt;AdjP head type comma&gt;
          &lt;PP option&gt; = 3b
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@modifiers)='yes' and normalize-space(//pp/ppModifierOrdinal/@checked)='yes' and normalize-space(//pp/ppOrdinalPosBoth/@checked)='yes'">
<xsl:text>
rule {PP option 3c - ordinal both sides}
PP = AdjP_1 P' AdjP_2
          &lt;PP head&gt; = &lt;P' head&gt;
          &lt;AdjP_1 head type ordinal&gt; = +
          &lt;AdjP_1 head type PP-initial&gt; = +
          &lt;AdjP_2 head type ordinal&gt; = +
          &lt;AdjP_2 head type PP-final&gt; = +
          &lt;AdjP_1 head type comma&gt; = -
          &lt;P' head type comma&gt; = -
          &lt;PP head type comma&gt; &lt;= &lt;AdjP_2 head type comma&gt;
          &lt;PP option&gt; = 3c
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
    

<xsl:if test="normalize-space(//pp/@pPos)='before' and normalize-space(//pp/@pType)!='clitic' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@pType)!='clitic'">
<xsl:text>
rule {PBar option 1aNoCase - prepositions, P marks case, no case on DP complement}
P' = P DP
          &lt;P' head&gt; = &lt;P head&gt;
          &lt;P' head object&gt; = &lt;DP&gt;
          &lt;P head type PP-initial&gt; = +
          &lt;DP head type case-marked&gt; = -
          &lt;DP head type relative&gt; = -    | no relative clauses, use IP rule
          &lt;P' head type stranded&gt; = -    | not missing a complement
          &lt;P' head type wh&gt; &lt;= &lt;DP head type wh&gt;  | wh for pied-piping
          &lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
          &lt;DP head type suffix copular&gt; = -
          &lt;P head type comma&gt; = -
          &lt;P' head type comma&gt; &lt;= &lt;DP head type comma&gt;
          &lt;P' head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
          &lt;P' option&gt; = 1aNoCase
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@pPos)='after' and normalize-space(//pp/@pType)!='clitic' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@pType)!='clitic'">
<xsl:text>
rule {PBar option 1bNoCase - postpositions, P marks case, no case on DP complement}
P' = DP P
          &lt;P' head&gt; = &lt;P head&gt;
          &lt;P' head object&gt; = &lt;DP&gt;
          &lt;P head type PP-final&gt; = +
          &lt;DP head type case-marked&gt; = -
          &lt;DP head type relative&gt; = -    | no relative clauses, use IP rule
          &lt;P' head type stranded&gt; = -    | not missing a complement
          &lt;P' head type wh&gt; &lt;= &lt;DP head type wh&gt;  | wh for pied-piping
          &lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars   
          &lt;DP head type suffix copular&gt; = -
          &lt;DP head type comma&gt; = -
          &lt;P' head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
          &lt;P' option&gt; = 1bNoCase
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@pPos)='before' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@locative)='yes' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@locative)='yes'">
<xsl:text>
rule {PBar option 2a - prepositions, locative AdvP complement}
P' = P AdvP
          &lt;P' head&gt; = &lt;P head&gt;
          &lt;P head type PP-initial&gt; = +
          &lt;P head type locative&gt; = +
          &lt;AdvP head type locative&gt; = +
          &lt;P' head type stranded&gt; = -    | not missing a complement
          &lt;P head type comma&gt; = -
          &lt;P' head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
          &lt;P' head type suffix poss&gt; &lt;= &lt;AdvP head type suffix poss&gt;
          &lt;P' head type temporal&gt; &lt;= &lt;AdvP head type temporal&gt;
          &lt;P' head type locative&gt; &lt;= &lt;AdvP head type locative&gt;
          &lt;P' head type sentential&gt; &lt;= -
          &lt;P' option&gt; = 2a
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@pPos)='after' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@locative)='yes' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@locative)='yes'">
<xsl:text>
rule {PBar option 2b - postpositions, locative AdvP complement}
P' = AdvP P
          &lt;P' head&gt; = &lt;P head&gt;
          &lt;P head type PP-final&gt; = +
          &lt;P head type locative&gt; = +
          &lt;AdvP head type locative&gt; = +
          &lt;P' head type stranded&gt; = -    | not missing a complement
          &lt;AdvP head type comma&gt; = -
          &lt;P' head type prefix poss&gt; &lt;= &lt;AdvP head type prefix poss&gt;
          &lt;P' head type temporal&gt; &lt;= &lt;AdvP head type temporal&gt;
          &lt;P' head type locative&gt; &lt;= &lt;AdvP head type locative&gt;
          &lt;P' head type sentential&gt; &lt;= -
          &lt;P' option&gt; = 2b
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@tempComp)='yes' and normalize-space(//pp/@pPos)='before' and normalize-space(//pp/@pType)!='clitic' or normalize-space(//pp/@tempComp)='yes' and normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@pType)!='clitic'">
<xsl:text>
rule {PBar option 2c - prepositions, temporal AdvP complement}
P' = P AdvP
          &lt;P' head&gt; = &lt;P head&gt;
          &lt;P head type PP-initial&gt; = +
          &lt;P head type temporal&gt; = +
          &lt;AdvP head type temporal&gt; = +
          &lt;P' head type stranded&gt; = -    | not missing a complement
          &lt;P head type comma&gt; = -
          &lt;P' head type comma&gt; &lt;= &lt;AdvP head type comma&gt;
          &lt;P' head type suffix poss&gt; &lt;= &lt;AdvP head type suffix poss&gt;
          &lt;P' head type temporal&gt; &lt;= &lt;AdvP head type temporal&gt;
          &lt;P' head type locative&gt; &lt;= &lt;AdvP head type locative&gt;
          &lt;P' head type sentential&gt; &lt;= -
          &lt;P' option&gt; = 2c
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@tempComp)='yes' and normalize-space(//pp/@pPos)='after' and normalize-space(//pp/@pType)!='clitic' or normalize-space(//pp/@tempComp)='yes' and normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@pType)!='clitic'">
<xsl:text>
rule {PBar option 2d - postpositions, temporal AdvP complement}
P' = AdvP P
          &lt;P' head&gt; = &lt;P head&gt;
          &lt;P head type PP-final&gt; = +
          &lt;P head type temporal&gt; = +
          &lt;AdvP head type temporal&gt; = +
          &lt;P' head type stranded&gt; = -    | not missing a complement
          &lt;AdvP head type comma&gt; = -
          &lt;P' head type prefix poss&gt; &lt;= &lt;AdvP head type prefix poss&gt;
          &lt;P' head type temporal&gt; &lt;= &lt;AdvP head type temporal&gt;
          &lt;P' head type locative&gt; &lt;= &lt;AdvP head type locative&gt;
          &lt;P' head type sentential&gt; &lt;= -
          &lt;P' option&gt; = 2d
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@pPos)='before' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@ppComp)='yes' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@ppComp)='yes'">
<xsl:text>
rule {PBar option 3a - prepositions, locative PP complement}
P' = P PP
          &lt;P' head&gt; = &lt;P head&gt;
          &lt;P head type PP-initial&gt; = +
          &lt;P head type locative&gt; = +
          &lt;PP head type locative&gt; = +
          &lt;P' head type stranded&gt; = -    | not missing a complement
          &lt;P head type comma&gt; = -
          &lt;P' head type comma&gt; &lt;= &lt;PP head type comma&gt;
          &lt;P' head type suffix poss&gt; &lt;= &lt;PP head type suffix poss&gt;
          &lt;P' head type sentential&gt; &lt;= -
          &lt;P' option&gt; = 3a
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@pPos)='after' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@ppComp)='yes' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@ppComp)='yes'">
<xsl:text>
rule {PBar option 3b - postpositions, locative PP complement}
P' = PP P
          &lt;P' head&gt; = &lt;P head&gt;
          &lt;P head type PP-final&gt; = +
          &lt;P head type locative&gt; = + 
          &lt;PP head type locative&gt; = +
          &lt;P' head type stranded&gt; = -    | not missing a complement
          &lt;PP head type comma&gt; = -
          &lt;P' head type prefix poss&gt; &lt;= &lt;PP head type prefix poss&gt;
          &lt;P' head type sentential&gt; &lt;= -
          &lt;P' option&gt; = 3b
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@pPos)='before' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@tempComp)='yes' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@tempComp)='yes'">
<xsl:text>
rule {PBar option 4a - prepositions, gerund complement }
P' = P VP
          &lt;P' head&gt; = &lt;P head&gt;
          &lt;P head type PP-initial&gt; = +
          &lt;VP head type gerund&gt; = +
          &lt;P' head type stranded&gt; = -    | not missing a complement
          &lt;P head type temporal&gt; = +           | assuming only temporals take gerunds
          &lt;P head type comma&gt; = -
          &lt;P' head type comma&gt; &lt;= &lt;VP head type comma&gt;
          &lt;P' option&gt; = 4a
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@pPos)='after' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@tempComp)='yes' or normalize-space(//pp/@pPos)='both' and normalize-space(//pp/@pType)!='clitic' and normalize-space(//pp/@tempComp)='yes'">
<xsl:text>
rule {PBar option 4b - postpositions, gerund complement}
P' = VP P
          &lt;P' head&gt; = &lt;P head&gt;
          &lt;P head type PP-final&gt; = +
          &lt;VP head type gerund&gt; = +
          &lt;P' head type stranded&gt; = -    | not missing a complement
          &lt;P head type temporal&gt; = +           | assuming only temporals take gerunds
          &lt;VP head type comma&gt; = -
          &lt;P' option&gt; = 4b
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
        
        
        
        
    


    
<xsl:if test="normalize-space(//pp/@pPos)!='after' and normalize-space(//pp/@pType)!='word' and normalize-space(//pp/@attaches)='edge'">
<xsl:text>
rule {PBar option 5a - P_prefix}
P' = DP
          &lt;P' head&gt; = &lt;DP head&gt;
          &lt;DP head type prefix P&gt; = +
          &lt;P' head type stranded&gt; = -
          &lt;P' option&gt; = 5a
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@pPos)!='before' and normalize-space(//pp/@pType)!='word' and normalize-space(//pp/@attaches)='edge'">
<xsl:text>
rule {PBar option 5b - P_suffix}
P' = DP
          &lt;P' head&gt; = &lt;DP head&gt;
          &lt;DP head type suffix P&gt; = +
          &lt;P' head type stranded&gt; = -
          &lt;P' option&gt; = 5b
</xsl:text>
</xsl:if>
    
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@pType)!='word' and normalize-space(//pp/@attaches)='head'">
<xsl:text>
rule {PBar option 5aN - PP affix on N}
P' = DP
          &lt;P' head&gt; = &lt;DP head&gt;
          &lt;DP head type PP&gt; = +
          &lt;DP head type verbheaded&gt; = -
          &lt;P' head type stranded&gt; = -
          &lt;P' option&gt; = 5aN
</xsl:text>
</xsl:if>
    
        
        
        
    
<xsl:if test="normalize-space(//pp/@pPos)!='after' and normalize-space(//pp/@pType)!='word' and normalize-space(//pp/@attaches)='edge' and normalize-space(//pp/@tempComp)='yes'">
<xsl:text>
rule {PBar option 6a - P_prefix, gerund complement}
P' = VP
          &lt;P' head&gt; = &lt;VP head&gt;
          &lt;VP head type prefix P&gt; = +
          &lt;P' head type stranded&gt; = -
          &lt;P' head type gerund&gt; = +
          &lt;P' option&gt; = 6a
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
    
<xsl:if test="normalize-space(//pp/@pPos)!='before' and normalize-space(//pp/@pType)!='word' and normalize-space(//pp/@attaches)='edge' and normalize-space(//pp/@tempComp)='yes'">
<xsl:text>
rule {PBar option 6b - P_suffix, gerund complement}
P' = VP
          &lt;P' head&gt; = &lt;VP head&gt;
          &lt;VP head type suffix P&gt; = +
          &lt;P' head type stranded&gt; = -
          &lt;P' head type gerund&gt; = +
          &lt;P' option&gt; = 6b
</xsl:text>
</xsl:if>
    
        
        
        
        
        
        
        
    

</xsl:template>
</xsl:stylesheet>
