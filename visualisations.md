## CMMID Interactive Applications
{% for app in site.shinyapp %}
 - [{{ app.title }}]({{ app.url }})
{% endfor %}
