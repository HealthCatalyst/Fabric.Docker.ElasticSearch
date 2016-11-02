FROM elasticsearch:5


# stop the services
CMD [ "service elasticsearch stop" ]

# update config
ADD ./elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

### install plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install x-pack --batch

CMD ["elasticsearch"]
