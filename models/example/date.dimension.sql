WITH CTE AS 
(
SELECT

TO_TIMESTAMP(STARTED_AT) as started_at,
DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,
HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARED_AT,
CASE
WHEN DAYNAME(TO_TIMESTAMP(STARTED_AT)) IN ('Sat','Sun')
THEN 'Weekend'
ELSE 'working'
end AS day_name,
Month(TO_TIMESTAMP(STARTED_AT)),

CASE 
WHEN MONTH(TO_TIMESTAMP(STARTED_AT)) IN (12,1,2)
THEN 'winter'
WHEN MONTH(TO_TIMESTAMP(STARTED_AT)) IN (3,4,5)
THEN 'spring'
WHEN MONTH(TO_TIMESTAMP(STARTED_AT)) IN (6,7,8)
THEN 'summer'
ELSE 'Atumn'
END as station_of_year,

{{function1('started_at')}}

FROM
{{ source('demo1', 'bike') }}
where STARTED_AT != 'started_at'
)
SELECT * FROM CTE
