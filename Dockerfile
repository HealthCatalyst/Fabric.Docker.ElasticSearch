FROM elasticsearch:latest

# ENV ES_HEAP_SIZE=6g

# stop the services
# CMD [ "service elasticsearch stop" ]

# update config
ADD ./elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

### install plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install x-pack --batch

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://github.com/NLPchina/elasticsearch-sql/releases/download/5.1.1.0/elasticsearch-sql-5.1.1.0.zip