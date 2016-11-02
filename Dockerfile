FROM elasticsearch:latest

# stop the services
CMD [ "service elasticsearch stop" ]

# update config
ADD ./elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

### install plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install x-pack --batch

CMD ["elasticsearch"]
