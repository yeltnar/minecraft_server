tag="minecraft_server";

echo "using tag $tag";

docker build -t "$tag" .;
docker run -it -p 25565:25565 -v "$PWD/server_files":"/minecraft_server" "$tag";

docker rm $tag


