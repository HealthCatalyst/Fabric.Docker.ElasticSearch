$dockername = "fabric.docker.elasticsearch"

docker volume create --name esdata

docker stop $dockername
docker rm $dockername

docker run --rm -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" --name $dockername -t healthcatalyst/$dockername

# docker run --rm -p 9200:9200 -p 9300:9300 --security-opt seccomp=unconfined -e ES_JAVA_OPTS="-Xms2g -Xmx2g" -e http.compression=true -e network.host=_eth0_ -e network.publish_host=localhost -e node.name=es-master -e discovery.zen.ping.unicast.hosts=127.0.0.1 --name $dockername -t healthcatalyst/$dockername

