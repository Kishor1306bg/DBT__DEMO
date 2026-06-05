WITH CTE AS
{
SELECT
ride_id,started_at
{{ source('demo1', 'bike') }}

}

SELECT 
* FROM CTE