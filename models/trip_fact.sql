WITH TRIPS as (
select 
RIDE_ID,
RIDEABLE_TYPE,
DATE(TO_TIMESTAMP(STARTED_AT)) as TRP_DATE,
START_STATIO_ID as start_station_id,
end_station_id,
MEMBER_CSUAL as member_casual,
TIMESTAMPDIFF(second,To_timestamp(STARTED_AT),To_timestamp(ended_at)) as trip_duration_second
FROM
{{ source('demo1', 'bike') }}
where RIDE_ID != 'ride_id'


)
select * from TRIPS