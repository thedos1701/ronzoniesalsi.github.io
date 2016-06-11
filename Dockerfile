FROM jekyll/jekyll:latest

RUN mkdir /var/build
COPY . /srv/jekyll
CMD jekyll build --source /srv/jekyll --destination /var/build
