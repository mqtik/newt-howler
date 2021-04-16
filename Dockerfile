FROM node

MAINTAINER Geoff Cox redgeoff@gmail.com

WORKDIR /usr/src/app

# --unsafe is required for leveldown to install properly
RUN npm install -g couchdb-howler --unsafe

EXPOSE 3000

COPY docker-entrypoint.sh .

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["/usr/local/bin/couchdb-howler --couchdb_url='https://newton:24230112@api.newt.to' --port --port 3000"]