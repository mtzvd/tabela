<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{feed_title}}</title>
  </head>
  <body>
   <section class="section">
    <div class="container is-max-desktop">
    <h1 class="title ">{{feed_title}}</h1>
    <ul>
      % for post in posts:
        <li>
          <div x-data='{ open: false }'>
            <div class="is-underlined is-clickable" @click="open = ! open" x-text="open ? '{{post['title'].rstrip().split(" ")[-1]}} &#x25b2;' : '{{post['title'].rstrip().split(" ")[-1]}} &#x25bc;'"></div>
            
            </br>
              <div class="columns" x-show="open" @click.outside="open = false">
                <div class="is-one-fourth"></div>
                <div class="is-one-fourth">
                  <div class="content box">{{!post['description']}}</div>
                </div>
              </div>
          </div>
        </li>
        </br>
        
      % end
    </ul>
    </div>
    </section>
    
    
  </body>
</html>