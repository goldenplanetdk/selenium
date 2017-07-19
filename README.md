selenium
========

docker stack deploy -c docker-compose.yml selenium

docker stack rm  selenium

docker service scale selenium_ff-node=2
