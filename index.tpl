<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{feed_title}}</title>
  </head>
  <body>
   <section class="section">
    <div class="container">
    <h1 class="title ">{{feed_title}}</h1>
    <ul>
      % for post in posts:
        <li>
          <a class="subtitle is-underlined" href="{{post['link']}}">{{post['title']}}</a>
          </br>
          </br>
            <div class="columns">
              <div class="is-one-fourth"></div>
              <div class="is-one-fourth">
                <div class="content box">{{!post['description']}}</div>
              </div>
            </div>
        </li>
        </br>
        </br>
      % end
    </ul>
    </div>
    </section>
  </body>
</html>