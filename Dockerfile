FROM jekyll/jekyll:latest
EXPOSE 4000
RUN mkdir /var/build && chmod 777 /var/build
COPY . /srv/jekyll
RUN jekyll build --source /srv/jekyll --destination /var/build
WORKDIR /var/build
CMD htmlproofer --allow-hash-href /var/build
