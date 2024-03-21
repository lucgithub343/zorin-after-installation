#!/bin/bash



## Criando diretorio Programas onde vao
## ficar os programaas que precisao de
## dwonloads para serem istalados
mkdir -p ~/Downloads/Softwares/

## Criando diretorio .icons
mkdir -p ~/.icons/

## Criando diretorio .themes
mkdir -p ~/.themes/

## Criando diretorio Temp
mkdir -p ~/Temp/

## Criando diretorio do OBS Studio
mkdir -p ~/Videos/OBS-Studio/

## Criando diretorio ISO dentro da pasta Instalacao
mkdir -p ~/Installation/ISO/

## Criando diretorio Script dentro da pasta Installation
mkdir -p ~/Installation/Script/


## Criando diretorio de projetos do Java
mkdir -p ~/Projects/Java


## Criando diretorio de projetos do Angular
mkdir -p ~/Projects/Angular


## Criando diretorio Script de Projetos do React
mkdir -p ~/Projects/React


## Criando diretorio dos Servers
mkdir -p ~/Servers


## Criando diretorio Courses
mkdir -p ~/Courses

## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



## Criando modelo de arquivo shell script
if [ -e ~/Templates/shell-script.sh ];
then
    echo "O arquivo  shell-script.sh  ja existe"
else
    touch ~/Templates/shell-script.sh
    echo "#!/bin/bash" > ~/Templates/shell-script.sh
fi


## Criando modelo de arquivo de script de banco de dados
if [ -e ~/Templates/SQL.sql ];
then
    echo "O arquivo  SQL.sql  ja existe"
else
    touch ~/Templates/SQL.sql
fi


## Criando modelo de arquivo xml
if [ -e ~/Templates/HTML.html ];
then
    echo "O arquivo  HTML.html  ja existe"
else
    touch ~/Templates/HTML.html

    echo '<!DOCTYPE html>' | tee -a ~/Templates/HTML.html
    echo '<html lang="en">' | tee -a ~/Templates/HTML.html
    echo '' | tee -a ~/Templates/HTML.html
    echo '<head>' | tee -a ~/Templates/HTML.html
    echo '    <meta charset="UTF-8">' | tee -a ~/Templates/HTML.html
    echo '    <meta name="viewport" content="width=device-width, initial-scale=1.0">' | tee -a ~/Templates/HTML.html
    echo '    <title>Document</title>' | tee -a ~/Templates/HTML.html
    echo '</head>' | tee -a ~/Templates/HTML.html
    echo '' | tee -a ~/Templates/HTML.html
    echo '<body>' | tee -a ~/Templates/HTML.html
    echo '</body>' | tee -a ~/Templates/HTML.html
    echo '' | tee -a ~/Templates/HTML.html
    echo '</html>' | tee -a ~/Templates/HTML.html
fi


## Criando modelo de arquivo java
if [ -e ~/Templates/JAVA.java ];
then
    echo "O arquivo  JAVA.java  ja existe"
else
    touch ~/Templates/JAVA.java
fi


## Criando modelo de arquivo yml
if [ -e ~/Templates/YML.yml ];
then
    echo "O arquivo  YML.yml  ja existe"
else
    touch ~/Templates/YML.yml
fi




echo -e "\n\n\n********************************************** INSTALANDO  RESTRICTED  EXTRAS*********************************************************"

sudo apt install ubuntu-restricted-extras -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************* INSTALANDO  COMPACTADORES  E  DESCOMPACTADORES  ************************************************"

## E nescessario instalar os compactadores
## e descompactadores aqui, porque
## logo em seguida alguns
## arquivos vao ser descompactados
sudo apt update -y
sudo apt install sharutils -y
sudo apt install p7zip-full p7zip-rar lzma lzma-dev rar unrar-free p7zip ark ncompress -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  GIT *******************************************************************"

## Instalando o Git
sudo apt update -y
sudo apt install git -y
## git config --global credential.helper store

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************************************* MISCELANIA *******************************************************************"

## Download Compactador
if [ -e compactar-tar-gz ];
then
    echo "O arquivo  compactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp compactar-tar-gz /usr/local/bin/
else
    echo -e "\n\n\n Compactador-tar-gz"
    wget https://github.com/lucgithub343/compactador-descompactador/releases/download/compactador-descompactador/compactar-tar-gz

    chmod +x compactar-tar-gz
    sudo cp compactar-tar-gz /usr/local/bin/
fi



## Download Descompactar
if [ -e descompactar-tar-gz ];
then
    echo "O arquivo  descompactar-tar-gz  ja existe e vai ser copiado para pasta  /usr/local/bin/"
    sudo cp descompactar-tar-gz /usr/local/bin/
else
    echo -e "\n\n\n Descompactar-tar-gz"
    wget https://github.com/lucgithub343/compactador-descompactador/releases/download/compactador-descompactador/descompactar-tar-gz

    chmod +x descompactar-tar-gz
    sudo cp descompactar-tar-gz /usr/local/bin/
fi



## Download Netbeans plugins
if [ -d ~/Installation/netbeans-plugins ];
then
    echo "O diretorio  ~/Installation/netbeans-plugins  ja existe"
else
    echo -e "\n\n\n\n Netbeans Plugins"
    git clone https://github.com/lucgithub343/netbeans-plugins.git
    cp -r ~/Downloads/Softwares/netbeans-plugins/ ~/Installation/
fi



#Download Drivers JDBC
if [ -d ~/Installation/drivers-JDBC ];
then
    echo "O diretorio  ~/Installation/drivers-JDBC  ja existe"
else
    echo -e "\n\n\n\n Drivers JDBC"
    git clone https://github.com/lucgithub343/drivers-jdbc.git
    cp -r ~/Downloads/Softwares/drivers-jdbc/ ~/Installation/
fi



## Download Wallpapers
if [ -d ~/Wallpaper/ ];
then
    echo "O diretorio  ~/Wallpaper/  ja existe"
else
    echo -e "\n\n\n\n Wallpapers"
    git clone https://github.com/lucgithub343/Wallpapers.git
    cp -r Wallpapers/ ~/
fi



## Download dos scripts de instalacao do Zorin
if [ -d ~/Installation/Script/zorin-after-installation/ ];
then
    echo "O diretorio  ~/Installation/Script/zorin-after-installation/  ja existe"
else
    echo -e "\n\n\n\n Scripts de instalacao do Zorin 17"
    git clone https://github.com/lucgithub343/zorin-after-installation.git
    cp -r ~/Downloads/Softwares/zorin-after-installation/ ~/Installation/Script/
fi



## Download tema WhiteSur Dark solid
if [ -d ~/.themes/WhiteSur-dark-solid ];
then
    echo "O diretorio  ~/.themes/WhiteSur-dark-solid  ja existe"
else
    echo -e "\n\n\n\n WhiteSur Dark solid"
    wget https://github.com/lucgithub343/gnome-themes/releases/download/gnome-themes/WhiteSur-dark-solid.tar.gz
    cp WhiteSur-dark-solid.tar.gz ~/.themes/
    cd ~/.themes/
    tar -xvzf WhiteSur-dark-solid.tar.gz
    rm WhiteSur-dark-solid.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Deepin Icon
if [ -d ~/.icons/Deepin ];
then
    echo "O diretorio  ~/.icons/Deepin  ja existe"
else
    wget https://github.com/lucgithub343/gnome-icons/releases/download/gnome-icons/Deepin.tar.gz
    cp Deepin.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf Deepin.tar.gz
    rm Deepin.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi
OUTRA OPCAO

## Download BigSur Icon
if [ -d ~/.icons/BigSur ];
then
    echo "O diretorio  ~/.icons/BigSur ja existe"
else
    wget https://github.com/lucgithub343/gnome-icons/releases/download/gnome-icons/BigSur.tar.gz
    cp BigSur.tar.gz ~/.icons/
    cd ~/.icons/
    tar -xvzf BigSur.tar.gz
    rm BigSur.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download MacMojave cursores
if [ -d ~/.icons/McMojave-cursors ];
then
    echo "O diretorio  ~/.icons/McMojave-cursors  ja existe"
else
    echo -e "\n\n\n\n MacMojave cursores"
    wget https://github.com/lucgithub343/gnome-cursors/releases/download/gnome-cursosrs/McMojave-cursors.tar.gz
    cp McMojave-cursors.tar.gz ~/.icons/
    tar -xvzf McMojave-cursors.tar.gz
    rm McMojave-cursors.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Docker Compose dos bancos de dados
if [ -d ~/Installation/database-docker-compose/ ];
then
    echo "O diretorio  database-docker-compose  ja existe"
else
    echo -e "\n\n\n\n Docker Compose dos bancos de dados"
    git clone https://github.com/lucgithub343/database-docker-compose.git

    cp -r ~/Downloads/Softwares/database-docker-compose/ ~/Installation/
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** DOWNLOAD   DE  PROGRAMAS **********************************************************"

## Download 4K Video Downloader
if [ -e 4kvideodownloader_4.21.7-1_amd64.deb ];
then
    echo "O arquivo  4kvideodownloader_4.21.7-1_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n 4K Video Downloader"
    wget https://github.com/lucgithub343/4k-video-downloader/releases/download/4k-video-downloader/4kvideodownloader_4.21.7-1_amd64.deb
fi



## Download Adventure Quest Worlds
if [ -e adventure-quest-worlds.deb ];
then
    echo "O arquivo  adventure-quest-worlds.deb  ja existe"
else
    echo -e "\n\n\n\n Adventure Quest Worlds"
    wget https://github.com/lucgithub343/adventure-quest-worlds/releases/download/adventure-quest-worlds/adventure-quest-worlds.deb
fi



## Download Android Studio
if [ -e android-studio-2022.3.1.deb ];
then
    echo "O arquivo  android-studio-2022.3.1.deb  ja existe"
else
    echo -e "\n\n\n\n Android Studio"
    wget https://github.com/lucgithub343/android-studio/releases/download/android-studio/android-studio-2022.3.1.deb
fi



## Download Apache Netbeans
if [ -e apache-netbeans_21-1_all.deb ];
then
    echo "O arquivo  apache-netbeans_21-1_all.deb  ja existe"
else
    echo -e "\n\n\n\n Apache Netbeans"
    wget https://github.com/lucgithub343/apache-netbeans/releases/download/apache-netbeans/apache-netbeans_21-1_all.deb
fi



## Download Atom
if [ -e atom-amd64.deb ];
then
    echo "O arquivo  atom-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Atom"
    wget https://github.com/lucgithub343/atom/releases/download/atom/atom-amd64.deb
fi



## Download Balena Etcher
if [ -e balena-etcher_1.19.4_amd64.deb ];
then
    echo "O arquivo  balena-etcher_1.19.4_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher"
    wget https://github.com/lucgithub343/balena-etcher/releases/download/balena-etcher/balena-etcher_1.19.4_amd64.deb
fi


## Download Balena Etcher Icon
if [ -e Etcher-icon.png];
then
    echo "O arquivo  Etcher-icon.png  ja existe"
else
    echo -e "\n\n\n\n Balena Etcher Icon"
    wget https://github.com/lucgithub343/balena-etcher/releases/download/balena-etcher/Etcher-icon.png

    sudo mkdir -p /opt/balena-etcher-icon/
    sudo cp Etcher-icon.png /opt/balena-etcher-icon/

fi



## Download Chrome
if [ -e google-chrome-stable_current_amd64.deb ];
then
    echo "O arquivo  google-chrome-stable_current_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Chrome"
    wget https://github.com/lucgithub343/chrome/releases/download/chrome/google-chrome-stable_current_amd64.deb
fi



## Download DBeaver
if [ -e dbeaver-le_23.2.0_amd64.deb ];
then
    echo "O arquivo  dbeaver-le_23.2.0_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n DBeaver"
    wget https://github.com/lucgithub343/dbeaver/releases/download/dbeaver/dbeaver-le_23.2.0_amd64.deb
fi



## Download Discord
if [ -e discord-0.0.46.deb ];
then
    echo "O arquivo  discord-0.0.46.deb  ja existe"
else
    echo -e "\n\n\n\n Discord"
    wget https://github.com/lucgithub343/discord/releases/download/discord/discord-0.0.46.deb
fi



## Download Eclipse C C++
if [ -e eclipse-cpp-2023-12.deb ];
then
    echo "O arquivo  eclipse-cpp-2023-12.deb  ja existe"
else
    echo -e "\n\n\n\n Eclipse C C++"
    wget https://github.com/lucgithub343/eclipse/releases/download/eclipse/eclipse-cpp-2023-12.deb
fi



## Download GitKraken
if [ -e gitkraken-amd64.deb ];
then
    echo "O arquivo  gitkraken-amd64.deb  ja existe"
else
    echo -e "\n\n\n\n GitKraken"
    wget https://github.com/lucgithub343/git-kraken/releases/download/git-kraken/gitkraken-amd64.deb
fi



## Download Insomnia
if [ -e Insomnia.Core-8.6.0.deb ];
then
    echo "O arquivo  Insomnia.Core-8.6.0.deb  ja existe"
else
    echo -e "\n\n\n\n Insomnia"
    wget https://github.com/lucgithub343/insomnia/releases/download/insomnia/Insomnia.Core-8.6.0.deb
fi



## Ver se o processar é do modelo do notebook pessoal
ideapad_processador="`grep -cm 1  "142" /proc/cpuinfo`"

## Se o Modelo for do Ideapad notebok
## faz download da Iriun Webcam
if [ $ideapad_processador == 1 ];
then

    ## Download Iriun Webcam
    if [ -e iriunwebcam-2.8.2.deb ];
    then
        echo "O arquivo  iriunwebcam-2.8.2.deb  ja existe"
    else
        echo -e "\n\n\n\n Iriun Webcam"
        wget https://github.com/lucgithub343/iriun-webcam/releases/download/iriun-webcam/iriunwebcam-2.8.2.deb
    fi
fi



## Download Insync
if [ -e insync_3.8.6.50504-jammy_amd64.deb ];
then
    echo "O arquivo  insync_3.8.6.50504-jammy_amd64.deb ja existe"
else
    echo -e "\n\n\n\n Insync"
    wget https://github.com/lucgithub343/insync/releases/download/insync/insync_3.8.6.50504-jammy_amd64.deb
fi



## Download Intellij Ultimate
if [ -e intellij-ultimate-2023-3-4.deb ];
then
    echo "O arquivo  intellij-ultimate-2023-3-4.deb ja existe"
else
    echo -e "\n\n\n\n Intellij Ultimate"
    wget https://github.com/lucgithub343/intellij/releases/download/intellij/intellij-ultimate-2023-3-4.deb
fi



## Download Jasper Studio
if [ -e jaspersoft-sudio-6.20.0_linux_amd64.deb ];
then
    echo "O arquivo  jaspersoft-sudio-6.20.0_linux_amd64.deb ja existe"
else
    echo -e "\n\n\n\n Jasper Studio"
    wget https://github.com/lucgithub343/jaspersoft-studio/releases/download/jaspersoft-studio/jaspersoft-sudio-6.20.0_linux_amd64.deb
fi



## Download Lombok
if [ -e lombok-1-18-30.jar ];
then
    echo "O arquivo lombok-1-18-30.jar ja existe"
else
    echo -e "\n\n\n\n Lombok"
    wget https://github.com/lucgithub343/lombok/releases/download/lombok/lombok-1-18-30.jar
fi



## Download Microsoft Edge
if [ -e microsoft-edge-stable_121.0.2277.98-1_amd64.deb ];
then
    echo "O arquivo  microsoft-edge-stable_121.0.2277.98-1_amd64.deb ja  existe"
else
    echo -e "\n\n\n\n Microsoft Edge"
    wget https://github.com/lucgithub343/microsoft-edge/releases/download/microsoft-edge/microsoft-edge-stable_121.0.2277.98-1_amd64.deb
fi



## Download Microsoft Teams
if [ -e teams-for-linux_1.4.12_amd64.deb ];
then
    echo "O arquivo  teams-for-linux_1.4.12_amd64.deb ja  existe"
else
    echo -e "\n\n\n\n Microsoft Teams"
    wget https://github.com/lucgithub343/microsoft-teams/releases/download/Microsoft-Teams/teams-for-linux_1.4.12_amd64.deb
fi



## Download MySql Workbench
if [ -e mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb ];
then
    echo "O arquivo   mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n MySql Workbench"
    wget https://github.com/lucgithub343/mysql-workbench/releases/download/mysql-workbench/mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb
fi



## Download Only Office
if [ -e onlyoffice-desktopeditors_amd64.deb ];
then
    echo "O arquivo  onlyoffice-desktopeditors_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Only Office"
    wget https://github.com/lucgithub343/onlyoffice/releases/download/onlyoffice/onlyoffice-desktopeditors_amd64.deb
fi



## Download Opera
if [ -e opera-stable_106.0.4998.70_amd64.deb ];
then
    echo "O arquivo  opera-stable_106.0.4998.70_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n Opera"
    wget https://github.com/lucgithub343/opera/releases/download/Opera/opera-stable_106.0.4998.70_amd64.deb
fi



## Download Postman
if [ -e postman-10.22.10.deb ];
then
    echo "O arquivo  postman-10.22.10.deb  ja existe"
else
    echo -e "\n\n\n\n Postman"
    wget https://github.com/lucgithub343/postman/releases/download/postman/postman-10.22.10.deb
fi



## Download Scene Builder
if [ -e SceneBuilder-21.0.0.deb ];
then
    echo "O arquivo  SceneBuilder-21.0.0.deb  ja existe"
else
    echo -e "\n\n\n\n Scene Builder"
    wget https://github.com/lucgithub343/scene-builder/releases/download/Scene-Builder/SceneBuilder-21.0.0.deb
fi



## Download Spring Tool Suite
if [ -e spring-tool-suite-4.22.0.RELEASE.deb];
then
    echo "O arquivo  spring-tool-suite-4.22.0.RELEASE.deb  ja existe"
else
    echo -e "\n\n\n\n Spring Tool Suite"
    wget https://github.com/lucgithub343/spring-tool-suite/releases/download/spring-tool-suite/spring-tool-suite-4.22.0.RELEASE.deb
fi



## Download StarUML
if [ -e StarUML_5.1.0_amd64.deb ];
then
    echo "O arquivo  StarUML_5.1.0_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n StarUML"
    wget https://github.com/lucgithub343/starUML/releases/download/starUML/StarUML_5.1.0_amd64.deb
fi



## Download Tomcat
if [ -d ~/Servers/tomcat-10.1.18 ];
then
    echo "O diretorio  ~/Servers/tomcat-10.1.18 ja existe"
else
    wget https://github.com/lucgithub343/tomcat/releases/download/Tomcat/tomcat-10.1.18.tar.gz
    cp tomcat-10.1.18.tar.gz ~/Servers/
    cd ~/Servers/
    tar -xvzf tomcat-10.1.18.tar.gz
    rm tomcat-10.1.18.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi



## Download Visual Studio Code
if [ -e code_1.86.0-1706698139_amd64.deb ];
then
    echo "O arquivo  code_1.86.0-1706698139_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Visual Studio Code"
    wget https://github.com/lucgithub343/visual-studio-code/releases/download/visual-studio-code/code_1.86.0-1706698139_amd64.deb
fi



## Download Vivaldi
if [ -e vivaldi-stable_6.5.3206.63-1_amd64.deb ];
then
    echo "O arquivo  vivaldi-stable_6.5.3206.63-1_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Vivaldi"
    wget https://github.com/lucgithub343/vivaldi/releases/download/Vivaldi/vivaldi-stable_6.5.3206.63-1_amd64.deb
fi




## Download VMware Workstation
if [ -e VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle ];
then
    echo "O arquivo  VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle  ja existe"
else
    echo -e "\n\n\n\n VMware Workstation"
    wget https://github.com/lucgithub343/vmware-workstation/releases/download/vmware-workstation/VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle
fi



## Download Serial VMware Workstation
if [ -e serial-vmware-workstation.txt ];
then
    echo "O arquivo  serial-vmware-workstation.txt  ja existe"
else
    echo -e "\n\n\n\n Serial VMware Workstation"
    wget https://github.com/lucgithub343/vmware-workstation/releases/download/vmware-workstation/serial-vmware-workstation.txt
fi



## Download Waterfox
if [ -e waterfox-G6.0.8.deb ];
then
    echo "O arquivo  waterfox-G6.0.8.deb   ja existe"
else
    echo -e "\n\n\n\n Waterfox"
    wget https://github.com/lucgithub343/waterfox/releases/download/waterfox/waterfox-G6.0.8.deb
fi



## Download Wildfly
if [ -d ~/Servers/wildfly-31.0.0.Final ];
then
    echo "O diretorio  ~/Servers/wildfly-31.0.0.Final ja existe"
else
    wget https://github.com/lucgithub343/wildfly/releases/download/Wildfly/wildfly-31.0.0.Final.tar.gz
    cp wildfly-31.0.0.Final.tar.gz ~/Servers/
    cd ~/Servers/
    tar -xvzf wildfly-31.0.0.Final.tar.gz
    rm wildfly-31.0.0.Final.tar.gz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi


## Download Zoom
if [ -e zoom_amd64.deb ];
then
    echo "O arquivo  zoom_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Zoom"
    wget https://github.com/lucgithub343/zoom/releases/download/Zoom/zoom_amd64.deb
fi


echo -e "\n\n\n**************************************************** INSTALANDO  O  DOCKER  **********************************************************"

## Download JDK
if [ -e jdk-21_linux-x64_bin.deb ];
then
    echo "O arquivo  jdk-21_linux-x64_bin.deb  ja existe"
else
    wget https://github.com/lucgithub343/jdk/releases/download/jdk/jdk-21_linux-x64_bin.deb
fi


## Inalando JDK
chmod +x jdk-21_linux-x64_bin.deb
sudo dpkg -i jdk-21_linux-x64_bin.deb


## Instalando JRE
sudo apt update -y
sudo apt-get install openjdk-21-jre -y


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-21-oracle-x64/bin/java 4
sudo update-alternatives --config java


## Configurando variaveis de ambiente do Java
if grep -qi "export JAVA_HOME=/usr/lib/jvm/jdk-21-oracle-x64" ~/.bashrc;
then
    echo "Variaveis de ambiente Java ja configurados"
else
    echo "" >> ~/.bashrc
    echo "export JAVA_HOME=/usr/lib/jvm/jdk-21-oracle-x64" >> ~/.bashrc
    echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc
fi

## Usando o comando source para executar o arquivo .bashrc
## source ~/.bashrc

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**************************************************** INSTALANDO  O  DOCKER  **********************************************************"

## Atualizando os repositorios
sudo apt update -y

## Instalando o Docker
sudo apt install docker.io -y

## Adicionando o usuario logado ao grupo docker
sudo usermod -aG docker $USER

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n******************************************** INSTALANDO  O  DOCKER-COMPOSE ***********************************************************"

if [ -e docker-compose ];
then
    echo "O arquivo  docker-compose  ja existe copiando ele para pasta   /usr/local/bin/"
    sudo cp docker-compose /usr/local/bin/
else
    echo -e "\n\n\n\n Docker Compose"
    wget https://github.com/lucotavio/docker-compose-program/releases/download/docker-compose/docker-compose

    chmod +x docker-compose
    sudo cp docker-compose /usr/local/bin/
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************* CONFIGURAR  CELULAR  PARA  DESENVOLVIMENTO  ANDROID ********************************************"

sudo usermod -aG plugdev $LOGNAME
sudo apt install android-sdk-platform-tools-common -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ADB *******************************************************************"

## Instalando ADB
sudo apt update -y
sudo apt install adb -y
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y
sudo apt install qemu-kvm -y
sudo adduser $USER kvm

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  NODE.JS ***************************************************************"

## Instalando o Node.js
sudo apt update -y
sudo apt install ca-certificates -y
sudo apt install gnupg -y
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg, arch=amd64] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt update -y
sudo apt install nodejs -y

## Como ver versao do Node.js
node -v

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ANGULAR ***************************************************************"

sudo npm install -g  @angular/cli@16.2.0

#### Como ver versao do Angular
## ng v

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  TYPESCRIPT ************************************************************"

sudo npm install -g typescript

## Como ver versao do Typescript
tsc -v

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  APLICATIVOS  APT ******************************************************"

## Atualizando PPA
sudo apt update -y

## Instalando fonte Notepadqq
sudo apt install notepadqq -y

## Instalando terminal terminator
sudo apt install terminator -y

## Instalando fonte firecode
sudo apt install fonts-firacode -y

## Instalando Hardinfo
sudo apt install hardinfo -y

## Instalando gcc g++
sudo apt install gcc g++ make -y

## Instalando o Transmission
sudo apt install transmission -y

## Intalando Gnome tweaks tools
sudo apt install gnome-tweaks -y

## Instalando net-tools
sudo apt install net-tools -y

## Instalando libglib2.0-dev
sudo apt install libglib2.0-dev -y

## Instalando libgconf-2-4
sudo apt install libgconf-2-4 -y

## Instalando cmake
sudo apt install cmake -y

## Instalando libfuse2
## Programas do tipo AppImage
## precisao deste pacote
sudo apt install libfuse2 -y

## Instalando VLC
sudo apt install vlc -y

## Instalando Browser Epiphany
sudo apt install epiphany-browser -y

## Instalando Gnome extensions
sudo apt install gnome-shell-extensions -y
sudo apt install chrome-gnome-shell -y

## Instalando o gerenciador de extensões
sudo apt install gnome-shell-extension-manager -y

## Instalando Kolourpaint
sudo apt install kolourpaint -y

## Instalando Gparted
sudo apt install gparted -y

## Instalando VirtualBox
sudo apt install virtualbox -y

## Instalando Gerenciador de pacote Synaptic
sudo apt install synaptic -y

## Instalando Umbrelo
sudo apt install umbrello -y

## Instalando o modulo "libcanberra-gtk-module" para que nao ocorra o erro: “failed to load module canberra-gtk-module”
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module -y

## Instalando Chromium
sudo add-apt-repository ppa:savoury1/chromium -y
sudo apt update -y
sudo apt install chromium-browser -y

## Instalando Navegador Brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:stevenpusser.list
curl -fsSL https://download.opensuse.org/repositories/home:stevenpusser/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_stevenpusser.gpg > /dev/null
sudo apt update -y
sudo apt install brave-browser -y

## Instalando navegador Pale Moon
sudo apt install wget apt-transport-https gnupg2 -y
echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:stevenpusser.list
curl -fsSL https://download.opensuse.org/repositories/home:stevenpusser/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_stevenpusser.gpg > /dev/null
sudo apt update -y
sudo apt install palemoon -y

## Instalando ferramenta de Backup
sudo apt install luckybackup-data -y

## Instalando SDKMAN
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

## Instalando Groovy
sdk install groovy

## Ver versão do groovy
groovy -version

## Instalando Kotlin ultima versao
sdk install kotlin

## Ver versão do Kotlin instalado
kotlinc -version

## Instalando o Maven
sdk install maven 3.9.6

## Ver versão do Maven
mvn -v

## https://www.baeldung.com/java-sdkman-HISTCONTROL



############################################################ INSTALANDO  FIREFOX  NATIVO ############################################################

## Removendo o Firefox Flatpak
flatpak uninstall org.mozilla.firefox  -y

## Instalando Firefox .deb
sudo add-apt-repository ppa:mozillateam/ppa -y
sudo apt update -y
sudo apt install --target-release 'o=LP-PPA-mozillateam' firefox -y


echo "Package: firefox*" | sudo tee -a /etc/apt/preferences.d/mozillateamppa
echo "Pin: release o=LP-PPA-mozillateam" | sudo tee -a /etc/apt/preferences.d/mozillateamppa
echo "Pin-Priority: 501" | sudo tee -a /etc/apt/preferences.d/mozillateamppa

#####################################################################################################################################################



########################################################## INSTALANDO  OBS  STUDIO  NATIVO ##########################################################

flatpak uninstall com.obsproject.Studio  -y

sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update -y
sudo apt install obs-studio -y


#####################################################################################################################################################



########################################################### INSTALANDO  HANDBRAKE  NATIVO ###########################################################

flatpak uninstall fr.handbrake.ghb -y

sudo apt install handbrake -y

#####################################################################################################################################################



########################################################### INSTALANDO  KDENLIVE  NATIVO ###########################################################

flatpak uninstall org.kde.kdenlive -y

sudo apt install kdenlive -y


echo  "**********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  KVM ******************************************************************"

sudo apt update -y

value=$(egrep -c '(vmx|svm)' /proc/cpuinfo)

if [ $value -ne 0 ];
then
    echo "Instalando  KVM"
    sudo apt install cpu-checker -y
    kvm-ok
    sudo apt install qemu-kvm virt-manager libvirt-daemon-system virtinst libvirt-clients bridge-utils -y
    sudo systemctl enable --now libvirtd
    sudo systemctl start libvirtd
    ## sudo systemctl status libvirtd
    sudo usermod -aG kvm $USER
    sudo usermod -aG libvirt $USER
    sudo virt-manager
else
    echo "Não pode instalar kvm"

fi

echo "************************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MELD ******************************************************************"

## Instalando e configurando Meld
sudo apt install meld -y
git config --global diff.tool meld
git config --global difftool.meld.path "/usr/bin/meld"
git config --global difftool.prompt false
git config --global merge.tool meld
git config --global mergetool.meld.path "/usr/bin/meld"
git config --global mergetool.prompt false

echo "************************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MYSQL  ****************************************************************"

cd ~/Installation/database-docker-compose/mysql/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  MARIADB  **************************************************************"

cd ~/Installation/database-docker-compose/MariaDB/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  POSTGRESQL  ***********************************************************"

cd ~/Installation/database-docker-compose/postgres/
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n***************************************************** INSTALANDO  MONGO  *************************************************************"

cd ~/Installation/database-docker-compose/Mongo
sudo docker-compose up -d

echo "***********************************************************************************************************************************************"



echo -e "\n\n\n*************************************** REMOVENDO ARQUIVOS DA PASTA TEMPLATES  *******************************************************"

rm ~/Templates/LibreOffice\ Calc.ods
rm ~/Templates/LibreOffice\ Draw.odg
rm ~/Templates/LibreOffice\ Impress.odp
rm ~/Templates/LibreOffice\ Writer.odt

echo "***********************************************************************************************************************************************"

sudo apt autoremove -y

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
