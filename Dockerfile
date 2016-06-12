FROM jekyll/jekyll:latest
RUN mkdir /var/build && chmod 777 /var/build
COPY . /srv/jekyll
RUN jekyll build --source /srv/jekyll
RUN htmlproofer --allow-hash-href /srv/jekyll/_site/
CMD cp -Rv /srv/jekyll/_site/* /var/builder/
