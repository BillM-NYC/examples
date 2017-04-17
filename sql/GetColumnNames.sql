
select distinct owner as name from all_tab_cols
where owner = 'AMPT_OWNER' and
table_name = upper('DIM_AMPT_LINEITEM')
union all
select distinct table_name as name from all_tab_cols
where owner = 'AMPT_OWNER' and
table_name = upper('DIM_AMPT_LINEITEM')
union all
select column_name from all_tab_cols
where owner = 'AMPT_OWNER' and
table_name = upper('DIM_AMPT_LINEITEM')
/*
select distinct table_name,column_name
from all_tab_cols
where owner = 'AMPT_OWNER' and 
	 upper(column_name) = upper('price_type')
*/

select distinct owner as name from all_tab_cols
where owner = 'NYTDODS' and
table_name = upper('AMPT_SALES_TARGET')
union all
select distinct table_name as name from all_tab_cols
where owner = 'NYTDODS' and
table_name = upper('AMPT_SALES_TARGET')
union all
select column_name from all_tab_cols
where owner = 'NYTDODS' and
table_name = upper('AMPT_SALES_TARGET')
----------------------------
----------------------------
select distinct owner as name from all_tab_cols
where owner = 'ADXMART' and
table_name = upper('DIM_AMPT_LINEITEM')
union all
select distinct table_name as name from all_tab_cols
where owner = 'ADXMART' and
table_name = upper('DIM_AMPT_LINEITEM')
union all
select column_name from all_tab_cols
where owner = 'ADXMART' and
table_name = upper('DIM_AMPT_LINEITEM')
--------------------
--------------------
select table_name from all_tab_cols
where owner = 'NYTDODS' and
column_name = upper('SOS_SALES_TARGET_ID')
