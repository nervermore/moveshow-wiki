FROM daocloud.io/nevermore1981/moveshowbase:latest

EXPOSE 80 6067
RUN npm install -g jingo

ENV APP /app/www
WORKDIR $APP

# add app files
COPY . $APP/
RUM git init && git remote add wiki https://git.coding.net/nevermore1981/ms-wiki.git
#RUN git clone https://git.coding.net/nevermore1981/ms-wiki.git
RUN npm install

#RUN node_modules/jingo/jingo -c /app/www/config.yaml&
CMD jingo -c /app/www/config.yaml