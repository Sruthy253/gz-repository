{% macro margin_percent(turnover, purchase_cost, precision=2) %}
   ROUND( SAFE_DIVIDE( ({{ turnover }} - {{ purchase_cost }}) , {{ turnover }} ) , {{ precision }})
{% endmacro %}
{% macro margin(turnover, purchase_cost) %}
   CAST({{ turnover }} - {{ purchase_cost }} AS FLOAT64) AS product_margin
{% endmacro %}