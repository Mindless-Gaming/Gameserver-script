# Gameserver-script
Ein script, welches verschiedene Gameserver für dich installiert


Ich habe leider nur wenig Zeit, weshalb dieses Projekt noch ein bisschen dauern wird!
falls du dennoch das Script einmal probieren möchtest führe folgenden Befehl aus

Wichtig!!! Führe das Script in einem Seperaten Directory aus. Die Server daten werden dort gespeichert, wo du das script ausführst!!! Bedenke auch, dass manche scripts docker/docker-compose benötigen! falls nicht installiert, führt, das script eine Installation aus. Diese installation wird aber nur von Ubuntu/Debian based systemen unterstützt, da das script mit apt und dpkg arbeitet.
Wenn du ein anderes OS (z.B: Alpine) benutzt musst du docker/docker-compose manuell installieren!
Bei den Gameserver wird meist noch etwas anderes mit installiert, was der Server noch benötigt. Für diese Fälle werde ich noch ein seperates Script erstellen. Dies wird wahrscheinlich aber nicht bei allem Helfen.


Um zu starten führe diesen Befehl in deiner Bash-shell aus:
```
bash <(curl -s https://raw.githubusercontent.com/Mindless-Gaming/Gameserver-script/main/Gameserver-installer.sh)
```
