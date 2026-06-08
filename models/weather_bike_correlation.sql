WITH CTE AS (
    select
     t.*,
     w.*
    FROM {{ ref('trip_fact') }} t
    left join {{ ref('daily_weather') }} w
    ON t.trp_date = w.daily_weather
    order by trp_date desc
)
select * from CTE