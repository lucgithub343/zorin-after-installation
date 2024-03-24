#!/bin/bash


## Entrando na para pasta de programas
cd ~/Downloads/Softwares/



echo -e "\n\n\n *************************************  INSTALANDO  SPRING TOOLS  SUITE  COM  LOMBOK **************************************************"

## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --config java

## Spring tool Suite
sudo dpkg -i spring-tool-suite-4.22.0.RELEASE.deb
sudo apt --fix-broken install -y
sudo rm /.eclipseproduct

## Instalando Lombok no Spring Tools Suite
chmod +x lombok-1.18.32.jar
sudo ~/.sdkman/candidates/java/21.0.2-oracle/bin/java -jar lombok-1.18.32.jar

## Removendo o arquivo .eclipseproduct
## sudo rm /.eclipseproduct

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n**************************************************INSTALANDO  VMWARE  PLAYER *********************************************************"

chmod +x VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle

## Dependencias do VMware
sudo apt update -y
sudo apt install build-essential -y
sudo apt install manpages-dev  -y

## Instalando VMware
sudo ./VMware-Workstation-Full-17.5.1-23298084.x86_64.bundle

## Alterando icone  do VMwareskypeforlinux-64.deb
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
    echo "3 - NOTEBOOK  EMPRESA"

    echo "Digite a opção: "
    read opcao

    sudo apt update -y
    sudo ubuntu-drivers devices
    sudo apt install ubuntu-advantage-tools -y

    if [ $opcao -eq 1 ];
    then
        echo -e "\n\n*************************************DESKTOP *****************************************************"

          sudo apt install -y nvidia-driver-390
          sudo ua attach C1NN7PA4J2HtxnsvSiTUPEs5bUU7Y

        echo -e "\n\n**************************************************************************************************"
        break
    elif [ $opcao -eq 2 ];
    then
        echo -e "\n\n*********************************** NOTEBOOK LUCIANO *********************************************"

          sudo apt install -y nvidia-driver-525
          sudo ua attach C1x3zxz1GFawrD8EY4oT7RsxsEfH1

        echo -e "\n\n**************************************************************************************************"
        break
    elif [ $opcao -eq 3 ];
    then
        echo -e "\n\n********************************* NOTEBOOK EMPRESA ***********************************************"

          sudo ua attach C12Jp442FKeioyspXdSyrbG9aHn9hw

        echo -e "\n\n**************************************************************************************************"
        break
    else
        echo -e "\n\nOpcao invalida"
    fi
done

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  PACOTES  FLATPACK *****************************************************"

flatpak install flathub dev.aunetx.deezer -y
flatpak install flathub org.gnome.Solanum -y
flatpak install flathub com.bitwarden.desktop -y

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n************************************************** INSTALANDO  ARQUIVOS  .DEB ********************************************************"

## Tornando todos os arquivos .deb
## em arquivos executavies
chmod +x *.deb


## 4K Video Downloader
sudo dpkg -i 4kvideodownloader_4.21.7-1_amd64.deb
sudo apt --fix-broken install -y


## Android Studio
sudo dpkg -i adventure-quest-worlds.deb
sudo apt --fix-broken install -y


## Android Studio
sudo dpkg -i android-studio-2022.3.1.deb
sudo apt --fix-broken install -y


## Atom
sudo dpkg -i atom-amd64.deb
sudo apt --fix-broken install -y
sudo sed -i 's\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F\env ATOM_DISABLE_SHELLING_OUT_FOR_ENVIRONMENT=false /usr/bin/atom %F --in-process-gpu\g' /usr/share/applications/atom.desktop


## Balena Etcher
sudo dpkg -i balena-etcher_1.19.4_amd64.deb
sudo apt --fix-broken install -y
sudo sed -i 's\Icon=balena-etcher\Icon=/opt/balena-etcher-icon/Etcher-icon.png\g' /usr/share/applications/balena-etcher.desktop


## Chrome
sudo dpkg -i chrome-stable_current_amd64.deb
sudo apt --fix-broken install -y


## Dbeaver
sudo dpkg -i dbeaver-le_23.2.0_amd64.deb
sudo apt --fix-broken install -y

## Discord
sudo dpkg -i discord-0.0.46.deb
sudo apt --fix-broken install -y


## Eclipse C and C++
sudo dpkg -i --force-overwrite eclipse-cpp-2023-12.deb
sudo rm /.eclipseproduct
sudo apt --fix-broken install -y


## GitKraken
sudo dpkg -i gitkraken-amd64.deb
sudo apt --fix-broken install -y


## Insomnia
sudo dpkg -i Insomnia.Core-8.6.0.deb
sudo apt --fix-broken install -y


## Insync
sudo dpkg -i insync_3.8.7.50516-jammy_amd64.deb
sudo apt --fix-broken install -y



## Ver se o processar é do modelo do notebook pessoal
ideapad_processador="`grep -cm 1  "142" /proc/cpuinfo`"

## Se o Modelo for do Ideapad notebok
## insta-la o Iriun Webcam
if [ $ideapad_processador == 1 ];
then
    ## Iriun Webcam
    sudo dpkg -i iriunwebcam-2.8.2.deb
    sudo apt --fix-broken install -y
fi



## Intellij Ultimate
sudo dpkg -i intellij-ultimate-2023-3-6.deb
sudo apt --fix-broken install -y


## Japersoft studio
sudo dpkg -i jaspersoft-sudio-6.20.0_linux_amd64.deb
sudo apt --fix-broken install -y


## Microsoft Edge
sudo dpkg -i microsoft-edge-stable_121.0.2277.98-1_amd64.deb
sudo apt --fix-broken install -y


## Microsoft Teams
sudo dpkg -i teams-for-linux_1.4.12_amd64.deb
sudo apt --fix-broken install -y


## MySql Workbench
sudo dpkg -i mysql-workbench-community_8.0.36-1ubuntu22.04_amd64.deb
sudo apt --fix-broken install -y


## Only Office
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt --fix-broken install -y
sudo sed -i '/Terminal=false/a StartupWMClass=DesktopEditors' /usr/share/applications/onlyoffice-desktopeditors.desktop


## Opera
sudo dpkg -i opera-stable_106.0.4998.70_amd64.deb
sudo apt --fix-broken install -y


## Postman
sudo dpkg -i postman-10.22.10.deb
sudo apt --fix-broken install -y


## Scene Builder
sudo dpkg -i SceneBuilder-21.0.0.deb
sudo apt --fix-broken install -y


## Star UML
sudo dpkg -i StarUML_6.1.0_amd64.deb
sudo apt --fix-broken install -y


## Vivaldi
sudo dpkg -i vivaldi-stable_6.5.3206.63-1_amd64.deb
sudo apt --fix-broken install -y


## Waterfox
sudo dpkg -i waterfox-G6.0.8.deb
sudo apt --fix-broken install -y


## Zoom
sudo dpkg -i zoom_amd64.deb
sudo apt --fix-broken install -y



echo -e "\n\n\n ***************************************************  INSTALANDO  APACHE  NETBEANS ***************************************************"

## Apache Netbeans
sudo dpkg -i apache-netbeans_21-1_all.deb
sudo apt --fix-broken install -y


## Baixando repositorio Classes do Git Hub
if [ -d ~/.netbeans/21/config/Templates/Classes/ ];
then
    echo "O diretorio  ~/.netbeans/21/config/Templates/Classes/  ja existe"
else

  ## Criando a pasta onde vao ficar os templates modificados
  mkdir -p ~/.netbeans/21/config/Templates/

  echo -e "\n\n\n\n Clonando repositorio Classes do Git Hub"
  git clone https://github.com/lucgithub343/Classes.git
  cp -r Classes/ ~/.netbeans/21/config/Templates/
fi

echo "***********************************************************************************************************************************************"




echo -e "\n\n\n ****************************************************  INSTALANDO  VISUAL  STUDIO  CODE  E  EXTENCOES  ****************************************************"

sudo dpkg -i visual-studio-code_1.87.2-1709912201_amd64.deb
sudo apt --fix-broken install -y


## INSTALANDO  EXTENÇÕES  DO  VISUAL  STUDIO  CODE

## Instalando Material Icon themes
code --install-extension PKief.material-icon-theme

## Instalando Mithril Emmet
code --install-extension PFallenMax.mithril-emmet

## Instalando ESlint
code --install-extension dbaeumer.vscode-eslint

## Instlando Better Comments
code --install-extension aaron-bond.better-comments

## Instlando GitLens
code --install-extension eamodio.gitlens

## Instlando Tabnine
code --install-extension TabNine.tabnine-vscodes

## Suporte a arquivos yml
code --install-extension redhat.vscode-yaml

## Suporte ao Vim
code --install-extension vscodevim.vim

## Melhor sintaxe para shell script
code --install-extension jeff-hykin.better-shellscript-syntax

## Auto complete de sintaxe para Shelll Script
code --install-extension tetradresearch.vscode-h2o

## Mostra Reultados quando vc muda o codigo no TypeScript e no JavaScript
code --install-extension jeff-hykin.better-shellscript-syntax




## INSTALANDO  PARENTESES  AUTOMATICOS  NOS  METODOS  JAVASCRIPT  E  TYPESCRIPT


## parenteses atumomaticos nos metodos do TypeScript
echo '"typescript.suggest.completeFunctionCalls": true,' | tee -a ~/.config/Code/User/settings.json

## parenteses atumomaticos nas funcoes do JavaScript
echo '"javascript.suggest.completeFunctionCalls": true,' | tee -a ~/.config/Code/User/settings.json

################################################### FIM  DA  INSTALACAO  DO  VISUAL  STUDIO  CODE ###################################################


echo "***********************************************************************************************************************************************"



echo -e "\n\n\n************************************************* IMPEDIR  AJUSTE  AUTOMATICO  DO SOM ************************************************"


sudo sed -i 's\volume = merge\volume = 100\g' /usr/share/pulseaudio/alsa-mixer/paths/analog-input-internal-mic.conf


echo "***********************************************************************************************************************************************"

## Atualizando a maneira de atualizar as keys dos repositorio sao salva
sudo cp /etc/apt/trusted.gpg /etc/apt/trusted.gpg.d


## Deletando dependencias que nao estao sendo utilizadas
sudo apt autoremove -y


## Selecionando qual versão do java vai ser a padrao
sudo update-alternatives --config java

echo -e "\n\n\n******************************************REINICIAR  O  COMPUTADOR********************************************************************"
