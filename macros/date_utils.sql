{% macro function1(x) %}
case when to_timestamp({{x}})  < current_date
     then 'past'
     else 'future'
end

{% endmacro %}