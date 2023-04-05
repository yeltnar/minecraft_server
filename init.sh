if [ -z "$(cat /minecraft_server/eula.txt | grep 'eula=true' )" ];then
	echo "eula=true" >> /minecraft_server/eula.txt;
fi

java -Xmx1024M -Xms1024M -jar /opt/app/server.jar nogui
