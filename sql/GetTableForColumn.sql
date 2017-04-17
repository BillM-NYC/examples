select table_name from all_tab_cols
where owner = 'AMPT_OWNER' and
column_name = upper('SALES_TARGET_ID')


select table_name from all_tab_cols
where owner = 'AMPT_OWNER' and
column_name  like '%section%'
 
 sections 