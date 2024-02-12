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
if [ -e ~/Templates/XML.xml ];
then
    echo "O arquivo  XML.xml  ja existe"
else
    touch ~/Templates/XML.xml
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
    git clone https://github.com/lucotavio/netbeans-plugins.git
    cp -r ~/Downloads/Softwares/netbeans-plugins/ ~/Installation/
fi



#Download Drivers JDBC
if [ -d ~/Installation/drivers-JDBC ];
then
    echo "O diretorio  ~/Installation/drivers-JDBC  ja existe"
else
    echo -e "\n\n\n\n Drivers JDBC"
    git clone https://github.com/lucotavio/drivers-jdbc.git
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
    git clone https://github.com/lucotavio/gnome-themes.git
    cp -r ~/Downloads/Softwares/gnome-themes/WhiteSur-dark-solid/ ~/.themes/
fi



## Download Deepin Icon
if [ -d ~/.icons/Deepin ];
then
    echo "O diretorio  ~/.icons/Deepin  ja existe"
else
    wget https://github.com/lucotavio/gnome-icons/releases/download/gnome-icons/Uos-fulldistro-icons.tar.xz
    cp Uos-fulldistro-icons.tar.xz ~/.icons/
    cd ~/.icons/
    tar -xvf Uos-fulldistro-icons.tar.xz
    mv Uos-fulldistro-icons/ Deepin/
    rm Uos-fulldistro-icons.tar.xz

    ## Entrando na para pasta de programas
    cd ~/Downloads/Softwares/
fi


## Download BigSur Icon
if [ -d ~/.icons/BigSur ];
then
    echo "O diretorio  ~/.icons/BigSur ja existe"
else
    wget https://github.com/lucotavio/gnome-icons/releases/download/gnome-icons/BigSur.tar.gz
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
    git clone https://github.com/lucotavio/gnome-cursors.git
    cp -r ~/Downloads/Softwares/gnome-cursors/McMojave-cursors/ ~/.icons/
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



## Download Android Studio
if [ -e android-studio-2022.3.1.deb ];
then
    echo "O arquivo  android-studio-2022.3.1.deb  ja existe"
else
    echo -e "\n\n\n\n Android Studio"
    wget https://github.com/lucgithub343/android-studio/releases/download/android-studio/android-studio-2022.3.1.deb
fi



## Download Apache Netbeans
if [ -e apache-netbeans_20-1_all.deb ];
then
    echo "O arquivo  apapache-netbeans_20-1_all.deb  ja existe"
else
    echo -e "\n\n\n\n Apache Netbeans"
    wget https://github.com/lucgithub343/apache-netbeans/releases/download/apache-netbeans/apache-netbeans_20-1_all.deb
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



## Download Insync
if [ -e insync_3.8.6.50504-jammy_amd64.deb ];
then
    echo "O arquivo  insync_3.8.6.50504-jammy_amd64.deb ja existe"
else
    echo -e "\n\n\n\n Insync"
    wget https://github.com/lucgithub343/insync/releases/download/insync/insync_3.8.6.50504-jammy_amd64.deb
fi



## Download Intellij Community
if [ -e intellij-Community-2023.3.2.deb ];
then
    echo "O arquivo  intellij-Community-2023.3.2.deb ja existe"
else
    echo -e "\n\n\n\n Intellij Community"
    wget https://github.com/lucgithub343/intellij/releases/download/intellij/intellij-Community-2023.3.2.deb
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
if [ -e spring-tool-suite-4.21.0.deb ];
then
    echo "O arquivo  spring-tool-suite-4.21.0.deb  ja existe"
else
    echo -e "\n\n\n\n Spring Tool Suite"
    wget https://github.com/lucgithub343/spring-tool-suite/releases/download/spring-tool-suite/spring-tool-suite-4.21.0.deb
fi



## Download StarUML
if [ -e StarUML_5.1.0_amd64.deb ];
then
    echo "O arquivo  StarUML_5.1.0_amd64.deb  ja existe"
else
    echo -e "\n\n\n\n StarUML"
    wget https://github.com/lucgithub343/starUML/releases/download/starUML/StarUML_5.1.0_amd64.deb
fi




## Download Visual Studio Code
if [ -e code_1.86.0-1706698139_amd64.deb ];
then
    echo "O arquivo  code_1.86.0-1706698139_amd64.deb   ja existe"
else
    echo -e "\n\n\n\n Visual Studio Code"
    wget https://github.com/lucgithub343/visual-studio-code/releases/download/visual-studio-code/code_1.86.0-1706698139_amd64.deb
fi



## Download VMware Workstation
if [ -e VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle ];
then
    echo "O arquivo  VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle  ja existe"
else
    echo -e "\n\n\n\n VMware Workstation"
    wget https://github.com/lucgithub343/vmware-workstation/releases/download/vmware-workstation/VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle
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

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALACAO DO JDK-21 **************************************************************"

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




echo -e "\n\n\n************************************************** INSTALACAO DO  KOTLIN *************************************************************"

## Entrando na para pasta de programas
cd ~/Downloads/Softwares/

## Download Kotlin
if [ -e kotlin-1.9.22.deb ];
then
    echo "O arquivo  kotlin-1.9.22.deb  ja existe"
else
    wget https://github.com/lucgithub343/kotlin/releases/download/kotlin/kotlin-1.9.22.deb
fi

sudo dpkg -i kotlin-1.9.22.deb


## Configurando variaveis de ambiente do Java
if grep -qi "export KOTLIN_HOME=/usr/local/bin/kotlin" ~/.bashrc;
then
    echo "Variaveis de ambiente Java ja configurados"
else
    echo "" >> ~/.bashrc
    echo "export KOTLIN_HOME=/usr/local/bin/kotlin" >> ~/.bashrc
    echo "export PATH=\$PATH:\$KOTLIN_HOME/bin" >> ~/.bashrc
fi

## Usando o comando source para executar o arquivo .bashrc
## source ~/.bashrc

echo -e "\n\n\n********************************************** INSTALANDO  O  MAVEN ******************************************************************"

sudo apt update -y
sudo apt install maven -y


## Configurando variaveis de ambiente do Maven
if grep -qi "export MAVEN_HOME=/usr/share/maven" ~/.bashrc;
then
    echo "Variaveis de Ambiente do Maven configurados"
else
    ## Espaco em branco
    echo "" >> ~/.bashrc
    echo "export MAVEN_HOME=/usr/share/maven" >> ~/.bashrc
    echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> ~/.bashrc
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

## Removendo o Firefox Flatpak
flatpak uninstall org.mozilla.firefox  -y

## Instalando Firefox .deb
sudo add-apt-repository ppa:mozillateam/ppa -y
sudo apt update -y
sudo apt install firefox -y

## Instalando ferramenta de Backup
sudo apt install luckybackup-data -y

## Instalando SDKMAN
curl -s https://get.sdkman.io | bash

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
