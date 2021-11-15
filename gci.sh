
    #!/bin/bash


   ## Variáveis ##

        Lutris_PPA="ppa:lutris-team/lutris";

        Wine_Key_Url="https://dl.winehq.org/wine-builds/winehq.key";

        Url_PPA_Wine="'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'";

        Url_gc_Deb="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb";

        Url_4kvd_Deb="https://dl.4kdownload.com/app/4kvideodownloader_4.9.2-1_amd64.deb";
        
        Deb_file_gc="google-chrome-stable_current_amd64.deb";

        Deb_file_4kvd="4kvideodownloader_4.9.2-1_amd64.deb";

        Genymotion_bin="https://dl.genymotion.com/releases/genymotion-3.2.1/genymotion-3.2.1-linux_x64.bin";     


   ## Listando programas que serão instalados ##

        echo "programas que serão instalados:";

        echo "google chrome";

        echo "vlc";
    
        echo "synapse";

        echo "lutris";

        echo "gparted";

        echo "virtualBox";

        echo "parcellite";

        echo "telegram-deskstop";

        echo "wine";
    
        echo "flameshot";
    
        echo "steam-installer";
   
        echo "steam-devices";

        echo "steam:i386";

        echo "libvulkan1";

        echo "libvulkan1 : i386";
    
        echo "libgnutls30 : i386";
    
        echo "libldap-2.4-2 : i386";

        echo "libgpg-error0:i386";

        echo "libxml2 : i386";

        echo "libasound2-plugins : i386";

        echo "libsdl2-2.0.0 : i386";

        echo "libfreetype6 : i386";

        echo "libdbus-1-3:i386";

        echo "libsqlite3-0 :i386";

        echo "4kvideodownload";

        echo "genymotion";

        echo "obs: antes de começarmos, recomendo que use esse shell script em um terminal logado como root "

        sleep 20

    ## Dando comando para criar e entrar na pasta onde serão armazenados os arquivos de downloads, caso haja algum ##

        sudo mkdir /home/temp;

        cd /home/temp;

    ##  Removendo travas eventuais no apt ##

        sudo rm /var/lib/dpkg/lock-frontend;

        sudo rm /var/cache/apt/archives/lock;

    ## Adicionando/Confirmando arquitetura 32 bits ##
    
        sudo dpkg --add-architecture i386;

    ## Atualizando o repositório ##

        sudo apt update -y;

    ## Adicionando repositórios e removendo trava no snapd ##

       sudo apt-add-repository "$Lutris_PPA" -y;
       
       sudo add-apt-repository sudo add-apt-repository "$Url_PPA_Wine" -y;

       wget -nc "$Wine_Key_Url";
    
       sudo apt-key add winehq.key -y;

       sudo rm /etc/apt/preferences.d/nosnap.pref;

    ## Atualizando o repositório, depois da adição de novos repositórios ##

        sudo apt update -y;

    ## Baixando Arquivos .Deb ##

        wget -nc "$Url_gc_Deb";

        wget -nc "$Url_4kvd_Deb";

    ## Intalando Arquivos .Deb ##
    
        sudo dpkg -i "$Deb_file_gc";

        sudo dpkg -i "$Deb_file_4kvd";

    ## Instalando arquivos do repositório ##

        sudo apt install snapd -y; 

        sudo apt install lutris -y;  

        sudo apt install vlc -y;
        
        sudo apt install synapse -y;

        sudo apt install gparted -y;
        
        sudo apt install virtualbox -y;
        
        sudo apt install parcellite -y; 

        sudo apt install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y;

        sudo apt install flameshot -y;

        sudo apt install steam -y;

    ## Instalando genymotion ##

        wget -nc "$Genymotion_bin";

        sudo chmod +x genymotion-3.2.1-linux_x64.bin;

        ./genymotion-3.2.1-linux_x64.bin -y;

    ## Instalando programas em snap ##

        sudo snap intall telegram-desktop;

   ## Abrindo programas pela primeira vez, para aparecerem no menu ##

      telegram-desktop;

    ## removendo a pasta com arquivos temporários## 

      sudo rm -rf /home/temp;

      echo "bom pessoal meu primeiro shell script foi esse, ainda estou aprendendo a "dominar" o terminal caso queiram me dar dicas sobre o terminal podem me enviar um e-mail para azuleteam@gmail.com"

      echo "terminal será fechado em 10 segundos ..."

      sleep 10

      exit

