
echo "#######################-Code-Server-#########################"

echo "lade docker und docker-compose runter" 
apt install docker docker-compose -y

echo "lade die docker-compose runter"
wget https://raw.githubusercontent.com/Mindless-Gaming/Gameserver-script/main/code-server/docker-compose.yml

echo "starte den code-server"
docker-compose up -d

echo "Der Code-Server ist unter https://<ip-adresse>:8449