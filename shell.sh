docker exec -it "$(docker ps | awk '/minecraft_server/{print $1}')" ash
