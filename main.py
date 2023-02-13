from bottle import Bottle, template
import requests
from bs4 import BeautifulSoup

app = Bottle()

@app.route('/')
def index():
    response = requests.get('https://rss.nbp.pl/kursy/TabelaA.xml')
    soup = BeautifulSoup(response.content, 'xml')

    feed_title = soup.channel.title.text
    posts = []
    for item in soup.find_all("item"):
        post = {
            "title": item.title.text,
            "link": item.link.text,
            "description": item.description.text
        }
        posts.append(post)

    return template("index", feed_title=feed_title, posts=posts)



if __name__ == '__main__':
    app.run(host='localhost', port=8080)