SELECT a.owner, a.table_name,a.NUM_ROWS,a.LAST_ANALYZED
  FROM all_tables a where owner = 'ADXMART' and
       table_name like 'AGG%' --and table_name like '%CAPP%'
order by substr(table_name,5,10)       
  
select * from all_tables  
  
 SELECT table_name, column_name, data_type, data_length
FROM USER_TAB_COLUMNS
WHERE table_name = 'all_tables'
 
  