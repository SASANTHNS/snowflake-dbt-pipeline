{% macro generate_database_name(custom_database_name, node) %}

    {% if custom_database_name is none %}
        {{ target.database }}
    {% else %}
        {{ target.name | upper }}_{{ custom_database_name }}_DB
    {% endif %}

{% endmacro %}