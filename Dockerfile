FROM daocloud.io/nevermore1981/moveshowbase:latest

EXPOSE 80 6067
RUN npm install -g jingo

WORKDIR /app/www

RUN git clone https://git.coding.net/nevermore1981/ms-wiki.git

ENV APP /app/www/ms-wiki
WORKDIR $APP

# add app files
#COPY . $APP/
#RUN git init && git remote add wiki https://git.coding.net/nevermore1981/ms-wiki.git
RUN npm install

#RUN node_modules/jingo/jingo -c /app/www/config.yaml&
CMD jingo -c /app/www/ms-wiki/config.yaml