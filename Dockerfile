FROM jekyll/jekyll:latest
RUN mkdir /var/build && chmod 777 /var/build
RUN mkdir /tmp/site && chmod 777 /tmp/site
COPY . /srv/jekyll
RUN jekyll build --source /srv/jekyll --destination /tmp/site
RUN htmlproofer --allow-hash-href /tmp/site/
CMD cp -Rv /tmp/site/* /var/build/
