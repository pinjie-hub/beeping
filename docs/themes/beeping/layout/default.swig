<!DOCTYPE html>
<html>

<head>
  <meta charSet='utf-8' />
  <title>Beeping - {{ page.title }}</title>
  <link href='{{ url_for("fonts/stylesheet.css") }}' rel='stylesheet'>
  <link href='{{ url_for("css/docs.css") }}' rel='stylesheet'>
  <link href='{{ url_for("css/style.css") }}' rel='stylesheet'>
  <link rel="icon" type="image/x-icon" href='{{ url_for("favicon.ico") }}'>
</head>

<body>
  <div class='menu'>

    <a class="logo" href='https://beeping.io/' target="_blank">
      <img src='{{ url_for("images/brand/logo-white.png") }}'>
    </a>

    <nav class='menu-nav'>
      {% for section in site.data[page.lang] %}
      <ul class='nav'>
        <span>{{ section.title }}</span>
        <ul class='nav'>
          {% for item in section.items %}
          <li>
            <a href='{{item.href || url_for(item.id + ".html") }}' {% if item.id == page.id %} class='active'
              {% endif %}>{{item.title}}</a>
          </li>
          {% endfor %}
        </ul>
      </ul>
      {% endfor %}
    </nav>
  </div>

  <div class='page'>    
    <div class='page-content'>
      <img src="https://beeping.io/assets/images/beeping/brand/brand48.png" style="margin-bottom: 1%;"/>                  
      {{page.content}}
    </div>

  </div>
  <div class='switch-page'>
    {% if page.prev %}
    <a class='previous' href='{{ url_for(page.prev) }}'>Previous</a>
    {% endif %}
    {% if page.next %}
    <a class='next' href='{{ url_for(page.next) }}'>Next</a>
    {% endif %}
  </div>
</body>

</html>