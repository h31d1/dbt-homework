
{% macro Luhns(cc,n) %}
    {% set s = 0 %}
    {% for i in range(n) %}
        {% set digit = cc%10 %}
        {% set cc = cc//10 %}
        {% if i%2 == 1 %}
            {% set digit = digit*2 %}
        {% endif %}
        {% if digit > 9 %}
            {% set digit = digit-9 %}
        {% endif %}
        {% set s = s + digit %}
    {% endfor %}
    {% if s%10 == 0 %}
        {% set valid = 1 %}
    {% else %}
        {% set valid = 0 %}
    {% endif %}

    {{log( s, True)}}
{% endmacro %}