
WITH CTE AS (
    SELECT
        ride_id,
        started_at
    FROM {{ source('demo1', 'bike') }}
)

SELECT *
FROM CTE
