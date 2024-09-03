{% macro generate_ratings() %}

{% set excellent_threshold = 4.5 %}
{% set good_threshold = 4.0 %}
{% set average_threshold = 3.0 %}

CASE
    WHEN user_rating >= {{ excellent_threshold }} THEN 'Excellent'
    WHEN user_rating >= {{ good_threshold }} THEN 'Good'
    WHEN user_rating >= {{ average_threshold }} THEN 'Average'
    ELSE 'Poor'
END as rating_category

{% endmacro %}