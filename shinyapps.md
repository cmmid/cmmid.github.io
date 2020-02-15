## All CMMID R Shiny Apps
{% for app in site.shinyapp %}
 - [{{ app.title }}]({{ app.url }})
{% endfor %}