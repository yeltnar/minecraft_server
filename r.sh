tag="minecraft_server";

echo "using tag $tag";

docker build --no-cache -t "$tag" .;
docker run -it -p 25565:25565 "$tag";

