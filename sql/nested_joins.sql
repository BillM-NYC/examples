select a.dfp_lineitem_id,
b.sos_lineitem_id,
a.YEAR_MONTH,
a.impressions
from 
(select 
a.dfp_lineitem_id,
a.YEAR_MONTH,
a.impressions
from 
(select
a.lineitemid as dfp_lineitem_id,
a.YEAR_MONTH,
sum(a.impressions) as impressions
from 
(
SELECT
lineitemid,
CONCAT(split(trans_date, '\\-')[0]
, split(trans_date, '\\-')[1]) as YEAR_MONTH,
impressions
FROM data_solutions.w_dfp_daily_logs_imps_agg_1) a
group by a.lineitemid,a.YEAR_MONTH) a
) a
left outer join data_solutions.base_sos_dims b
on a.dfp_lineitem_id = b.dfp_lineitem_id







