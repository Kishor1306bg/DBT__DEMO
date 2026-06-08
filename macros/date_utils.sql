{% macro function1(x) %}
case when to_timestamp({{x}})  < current_date
     then 'past'
     else 'future'
end

{% endmacro %}


{% macro function3(p) %}
CASE WHEN DAYNAME(TO_TIMESTAMP({{p}})) IN ('Sat','Sun')
then 'WEEKEND'
ELSE 'BUSINESSDAY'
END 
{% endmacro %}

{% macro function2(y) %}
CASE 
WHEN MONTH(TO_TIMESTAMP({{y}})) IN (12,1,2)
THEN 'winter'
WHEN MONTH(TO_TIMESTAMP({{y}})) IN (3,4,5)
THEN 'spring'
WHEN MONTH(TO_TIMESTAMP({{y}})) IN (6,7,8)
THEN 'summer'
ELSE 'Atumn'
end
{% endmacro %}