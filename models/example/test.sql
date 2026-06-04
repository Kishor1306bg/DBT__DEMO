select * from
{{ source('demo1', 'bike') }}

limit 10