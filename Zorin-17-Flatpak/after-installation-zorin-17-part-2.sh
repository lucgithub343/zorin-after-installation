#!/bin/bash


## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



echo -e "\n\n\n *************************************  INSTALANDO  SPRING TOOLS  SUITE  COM  LOMBOK **************************************************"

## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --config java

## Spring tool Suite
sudo dpkg -i spring-tool-suite-4.21.0.deb
sudo apt --fix-broken install -y

## Instalando Lombok no Spring Tools Suite
chmod +x lombok.jar
sudo java -jar lombok.jar

## Removendo o arquivo .eclipseproduct
## sudo rm /.eclipseproduct

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**************************************************INSTALANDO  VMWARE  PLAYER *********************************************************"

chmod +x VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle

## Dependencias do VMware
sudo apt update -y
sudo apt install build-essential -y
sudo apt install manpages-dev  -y

## Instalando VMware
sudo ./VMware-Workstation-Full-17.0.2-21581411.x86_64.bundle

## Alterando icone  do VMware
## sudo mkdir /opt/vmware-icon/
## sudo cp vmware.png /opt/vmware-icon/
## sudo sed -i 's\vmware-player\/opt/vmware-icon/vmware.png\g' /usr/share/applications/vmware-player.desktop

## Abrindo o VMware player via terminal
vmware

## Consertando o problema de 3d não suportado
if grep -qi 'mks.gl.allowBlacklistedDrivers = "TRUE"' ~/.vmware/preferences;
then
    echo "VMWare ja configurado"
else
    echo 'mks.gl.allowBlacklistedDrivers = "TRUE"' >> ~/.vmware/preferences
fi

echo -e "\n\n\n**************************************************************************************************************************************"




echo -e "\n\n\n********************************* INSTALANDO  DRIVER  DE  VIDEO **********************************************************************"


while true
do
    echo -e "\n\nDigite opção 1 ou 2"
    echo "1 - DESKTOP"
    echo "2 - NOTEBOOK  PESSOAL"
    echo "3 - OUTRA OPCAO"

    echo "Digite a opção: "
    read opcao

    sudo apt update -y
    sudo ubuntu-drivers devices
    sudo apt install -y ubuntu-advantage-tools

    if [ $opcao -eq 1 ];
    then
        echo -e "\n\n*************************************DESKTOP *****************************************************"

        sudo apt install -y nvidia-driver-390

        echo -e "\n\n**************************************************************************************************"
        break
    elif [ $opcao -eq 2 ];
    then
        echo -e "\n\n*********************************** NOTEBOOK LUCIANO *********************************************"

        sudo apt install -y nvidia-driver-525

        echo -e "\n\n**************************************************************************************************"
        break
    elif [ $opcao -eq 3 ];
    then
        echo -e "\n\n***************************************** OUTRA OPCAO *********************************************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK *****************************************************"

flatpak install flathub com.spotify.Client -y
flatpak install flathub com.google.AndroidStudio -y
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y
flatpak install flathub com.getpostman.Postman -y
flatpak install flathub org.gnome.Solanum -y
flatpak install flathub dev.aunetx.deezer -y


echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB ********************************************************"

## Tornando todos os arquivos .deb
## em arquivos executavies
chmod +x *.deb


## 4K Video Downloader
sudo dpkg -i 4kvideodownloader_4.21.7-1_amd64.deb
sudo apt --fix-broken install -y


## Atom
sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y
sudo sed -i 's\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F --in-process-gpu\g' /usr/share/applications/atom.desktop


## Balena Etcher
sudo dpkg -i balena-etcher_1.19.4_amd64.deb
sudo apt --fix-broken install -y


## Chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y


## Dbeaver
sudo dpkg -i dbeaver-le_23.2.0_amd64.deb
sudo apt --fix-broken install -y


## GitKraken
sudo dpkg -i gitkraken-amd64.deb
sudo apt --fix-broken install -y


## Insomnia
sudo dpkg -i Insomnia.Core-8.6.0.deb
sudo apt --fix-broken install -y


## Insync
sudo dpkg -i insync_3.8.6.50504-jammy_amd64.deb
sudo apt --fix-broken install -y


## Japersoft studio
sudo dpkg -i jaspersoft-sudio-6.20.0_linux_amd64.deb
sudo apt --fix-broken install -y


## Kdenlive
sudo dpkg -i kdenlive-22.12.1.deb
sudo apt --fix-broken install -y


## Mega
sudo dpkg -i megasync-xUbuntu_22.04_amd64.deb
sudo apt --fix-broken install -y


## Microsoft Edge
sudo dpkg -i microsoft-edge-stable_121.0.2277.98-1_amd64.deb
sudo apt --fix-broken install -y


## MySql Workbench
sudo dpkg -i mysql-workbench-community_8.0.34-1ubuntu22.04_amd64.deb
sudo apt --fix-broken install -y


## Only Office
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y
sudo sed -i '/Terminal=false/a StartupWMClass=DesktopEditors' /usr/share/applications/onlyoffice-desktopeditors.desktop


## Star UML
sudo dpkg -i StarUML_5.1.0_amd64.deb
sudo apt --fix-broken install -y


## Visual Studio Code
sudo dpkg -i code_1.86.0-1706698139_amd64.deb
sudo apt --fix-broken install -y


## Waterfox
sudo dpkg -i waterfox-G6.0.8.deb
sudo apt --fix-broken install -y


############################################################## INSTALANDO  APACHE  NETBEANS #########################################################

## Apache Netbeans
sudo dpkg -i apache-netbeans_20-1_all.deb
sudo apt --fix-broken install -y


## Baixando repositorio Classes do Git Hub
if [ -d ~/.netbeans/20/config/Templates/Classes/ ];
then
    echo "O diretorio  ~/.netbeans/20/config/Templates/Classes/  ja existe"
else

  ## Criando a pasta onde vao ficar os templates modificados
  mkdir -p ~/.netbeans/20/config/Templates/

  echo -e "\n\n\n\n Clonando repositorio Classes do Git Hub"
  git clone https://github.com/lucotavio/Classes.git
  cp -r Classes/ ~/.netbeans/20/config/Templates/
fi

########################################################## FIM DA  INSTALACAO  DO  APACHE  NETBEANS##################################################


echo "***********************************************************************************************************************************************"




## Atualizando a maneira de atualizar as keys dos repositorio sao salva
sudo cp /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d


## Deletando dependencias que nao estao sendo utilizadas
sudo apt autoremove -y


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --config java

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
