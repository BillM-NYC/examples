WITH abc
     AS (    SELECT LEVEL
                   ,ROUND (DBMS_RANDOM.VALUE (1, 999)) DATA_COUNT
                   ,TO_DATE ('04-SEP-2014') - LEVEL / 24 dt
               FROM DUAL
         CONNECT BY LEVEL <= 72)
  SELECT SUM ( CASE  WHEN DT BETWEEN TO_DATE ('04-SEP-2014') - 1 AND TO_DATE ('04-SEP-2014')   
                     THEN  DATA_COUNT  END) D_MINUS_1,
         SUM ( CASE  WHEN DT BETWEEN TO_DATE ('04-SEP-2014') - 2 AND TO_DATE ('04-SEP-2014') - 1 
                     THEN  DATA_COUNT  END) D_MINUS_2,  
         SUM ( CASE  WHEN DT BETWEEN TO_DATE ('04-SEP-2014') - 3 AND TO_DATE ('04-SEP-2014') - 2  
                     THEN  DATA_COUNT  END) D_MINUS_3,  
         SUM (DATA_COUNT) AS TOTAL
    FROM ABC
ORDER BY DT