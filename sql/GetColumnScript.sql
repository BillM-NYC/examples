DECLARE
  V_owner                  VARCHAR2(100);
  V_table_n                 VARCHAR2(100);

BEGIN

select 'AMPT_PH2_OWNER' into V_owner
from dual;
--select V_owner from dual;
end;

/*
select distinct owner as name from all_tab_cols
where owner = 'AMPT_PH2_OWNER' and
table_name = upper('MP_COUNTRY_REGION_MAPPING');

union all
select distinct table_name as name from all_tab_cols
where owner = 'AMPT_PH2_OWNER' and
table_name = upper('MP_COUNTRY_REGION_MAPPING')
union all
select column_name from all_tab_cols
where owner = 'AMPT_PH2_OWNER' and
table_name = upper('MP_COUNTRY_REGION_MAPPING');
*/
