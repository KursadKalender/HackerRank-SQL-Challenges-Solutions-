SELECT WANDS1.ID, 
       WANDS_PROPERTY1.AGE, 
       WANDS1.COINS_NEEDED, 
       WANDS1.POWER 
FROM   WANDS WANDS1 
       JOIN WANDS_PROPERTY WANDS_PROPERTY1 
         ON WANDS1.CODE = WANDS_PROPERTY1.CODE 
WHERE  WANDS_PROPERTY1.IS_EVIL = 0 
       AND WANDS1.COINS_NEEDED = (SELECT Min(WANDS2.COINS_NEEDED) 
                             FROM   WANDS WANDS2 
                                    JOIN WANDS_PROPERTY WANDS_PROPERTY2 
                                      ON WANDS2.CODE = WANDS_PROPERTY2.CODE 
                             WHERE  WANDS_PROPERTY1.AGE = WANDS_PROPERTY2.AGE 
                                    AND WANDS1.POWER = WANDS2.POWER) 
ORDER  BY WANDS1.POWER DESC, 
          WANDS_PROPERTY1.AGE DESC; 
