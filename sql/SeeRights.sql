SELECT * FROM USER_SYS_PRIVS; 
SELECT * FROM USER_TAB_PRIVS;
SELECT * FROM USER_ROLE_PRIVS;



select * 
from all_tables where owner = 'ADXMART'
and table_name not in 
(Select distinct table_name from 
       USER_TAB_PRIVS)
       
 select * FROM dba_tab_privs

select * from DIM_CAMPAIGN
grant select on dim_campaign to READ_BI,AUDIT_BI;
grant select on FACT_VIDEO_INV to READ_BI,AUDIT_BI;
grant select on CAMPAIGN_TARGET to READ_BI,AUDIT_BI;
grant select on FACT_TRAFFIC to READ_BI,AUDIT_BI;
grant select on AGG1_TRAFFIC to READ_BI,AUDIT_BI;