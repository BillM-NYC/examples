SELECT /*+parallel(a,8)*/

SUM (impressions) all_impressions

,SUM (CASE WHEN MEDIA = 'nytimes.com' THEN impressions ELSE 0 END) media_nytimes

FROM fact_capp a

LEFT OUTER JOIN dim_campaign b ON a.campaign_id = b.campaign_id

LEFT OUTER JOIN dim_position d ON a.position_id = d.position_id

LEFT OUTER JOIN dim_page e ON a.page_id = e.page_id

WHERE a.date_id = 2193