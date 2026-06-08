
WITH CTE AS (
    SELECT
       started_at,
       
    FROM {{ source('demo1', 'bike') }}
    
)

SELECT *
FROM CTE




