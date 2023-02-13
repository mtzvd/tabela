<!DOCTYPE html>
<html>
  <head>
    <title>{{feed_title}}</title>
  </head>
  <body>
    <h1>{{feed_title}}</h1>
    <ul>
      % for post in posts:
        <li>
          <a href="{{post['link']}}">{{post['title']}}</a>
        </li>
      % end
    </ul>
  </body>
</html>