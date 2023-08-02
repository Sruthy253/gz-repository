
{% macro margin(turnover, purchase_cost) %}
   CAST({{ turnover }} - {{ purchase_cost }} AS FLOAT64) AS product_margin
{% endmacro %}