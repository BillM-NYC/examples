update dim_nytd_subscription a
set a.AD_ID = 
(select b.AD_ID
from dim_nytd_subscription_fix b
where a.SUBSCRIPTION_ID = b.SUBSCRIPTION_ID)
where exists  
(select 1 from dim_nytd_subscription_fix 
 where a.SUBSCRIPTION_ID = dim_nytd_subscription_fix.SUBSCRIPTION_ID )






drop table dim_nytd_subscription_fix
create table dim_nytd_subscription_fix as 
(Select distinct 
	   a.AD_ID as dim_ad_id,
	   c.AD_ID, 
	   b.ADX_AD_ID,
       a.SUBSCRIPTION_ID,
       b.SARTRE_SUBSCRIPTION_ID 
from dim_nytd_subscription a
join nytd_subscription b on a.SUBSCRIPTION_ID = b.SARTRE_SUBSCRIPTION_ID 
join ad_campaign_assoc c on b.ADX_AD_ID = c.ADX_AD_ID
join dim_campaign d on c.CAMPAIGN_ID = d.CAMPAIGN_ID
where a.CAMPAIGN_ID <> -1 and
      a.PAGE_ID <> 0 and
      a.POSITION_ID <> 0 and
      a.AD_ID = 0 and
      d.advertiser = 'Digital_Paid_Products'
)



--4789
select a.*,b.ADX_AD_ID
from nytd_subscription a
left outer join ad_campaign_assoc b on a.ADX_AD_ID = b.ADX_AD_ID
where a.SARTRE_SUBSCRIPTION_ID = 7845493

select distinct  SUBSCRIPTION_ID
from dim_nytd_subscription a
where a.CAMPAIGN_ID <> -1 and
      a.PAGE_ID <> 0 and
      a.POSITION_ID <> 0 and
      a.AD_ID = 0 and
      a.SUBSCRIPTION_ID not in
(select distinct subscription_id
from dim_nytd_subscription_fix)      
      
      