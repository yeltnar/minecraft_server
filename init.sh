if [ -z "$(cat /minecraft_server/eula.txt | grep 'eula=true' )" ];then
	echo "eula=true" >> /minecraft_server/eula.txt;
fi

java -jar /opt/app/server.jar nogui
