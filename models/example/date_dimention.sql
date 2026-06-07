WITH CTE AS 
(
SELECT
TO_TIMESTAMP(STARTED_AT) as started_at,
DATE(TO_TIMESTAMP(STARTED_AT)) AS DATE_STARTED_AT,
HOUR(TO_TIMESTAMP(STARTED_AT)) AS HOUR_STARED_AT,

{{function2('started_at')}} as Season,

{{function1('started_at')}} as new
FROM
{{ source('demo1', 'bike') }}
where STARTED_AT != 'started_at'
)
SELECT * FROM CTE
