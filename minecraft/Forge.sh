#!/bin/bash

echo "Bitte warte bis das script vollständig ausgeführt wurde...."
sleep 3

echo "installiere Java...."
sleep 1

wget -N https://rose.dsh-mirror.de/Modmanager/jdk-17.0.1_linux-x64_bin.tar.gz
tar -xf jdk-17.0.1_linux-x64_bin.tar.gz
rm -R /usr/lib/jvm
mkdir /usr/lib/jvm
mv "jdk-17.0.1" /usr/lib/jvm/
ln -s /usr/lib/jvm/jdk-17.0.1/ /usr/lib/jvm/java-16-oracle
update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-17.0.1/bin/java" 1

echo "mache ein Update der Ubuntu Respositories."
sleep 2
sudo apt update
sudo apt upgrade -y

echo "Downloade Forge Server Daten"
sleep 1
wget https://download1532.mediafire.com/dmm0ira2hyxgoyVNtG_j09QS2XmJL28OPFe9XQrIf7M0KQaXX52kxLbXdVM8MPeTdtx0USRSru72KdKdbdDmRckCrspYVcuxX7_N1yHKdCB7SzF-KibzVw-Z4EzB5TfMucLaMGSUVosPrLbSPdSpKLNaiOPjr7WacZ4pVBzofRHlmdY/ov9ezhq8pim8bik/ForgesServer.tar.gz

mkdir forgeserver
cd forgeserver

mv ForgesServer.tar.gz ./forgeserver/ForgesServer.tar.gz

echo "entpacke die Forge Server Daten"
sleep 1
tar -xf ForgesServer.tar.gz
