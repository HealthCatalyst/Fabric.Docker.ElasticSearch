$dockername = "fabric.elasticsearch"

docker stop $dockername
docker rm $dockername

docker pull docker.elastic.co/elasticsearch/elasticsearch:6.4.2

docker build -t healthcatalyst/$dockername .
