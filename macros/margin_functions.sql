{% macro margin_percent(turnover, purchase_cost, precision=2) %}
    round(
        safe_divide(({{ turnover }} - {{ purchase_cost }}), {{ turnover }}),
        {{ precision }}
    )
{% endmacro %}
{% macro margin(turnover, purchase_cost) %}
    cast({{ turnover }} - {{ purchase_cost }} as float64) as product_margin
{% endmacro %}
