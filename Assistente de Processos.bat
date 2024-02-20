@ECHO off
:menu_principal
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Assistente de Processos
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Escolha uma Opcao:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: 0 - SAIR
ECHO :: 1 - DOWNLOADS
ECHO :: 2 - CONGIGURACOES
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::

set /p opcao=":: Digite o numero da opcao desejada: "

IF "%opcao%"=="0" (
    exit
) ELSE IF "%opcao%"=="1" (
    goto menu_downloads
) ELSE IF "%opcao%"=="2" (
    goto menu_configuracoes
) ELSE (
    ECHO Opcao invalida! Por favor, escolha uma opcao valida.
    pause
    goto menu_principal
)

:menu_downloads
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Voce esta no menu de Downloads
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Escolha uma Opcao:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: 0 - Voltar
ECHO :: 1 - Download Chrome
ECHO :: 2 - Download Node.js
ECHO :: 3 - Download Git
ECHO :: 4 - Download VSCode
ECHO :: 5 - Download Java 17
ECHO :: 6 - Download Android Studio
ECHO :: 7 - Download NetBeans
ECHO :: 8 - Download MongoDB Compass
ECHO :: 9 - Download MySQL
ECHO :: 10 - Download MySQL Workbench
ECHO :: 11 - Download Virtual Box
ECHO :: 12 - Download OutSystems
ECHO :: 13 - Download Ruby SASS
ECHO :: 14 - Download PostgreSQL
ECHO :: 15 - Download Docker Desktop
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
set /p opcao_menu_downloads=":: Digite o numero da opcao desejada: "

IF "%opcao_menu_downloads%"=="0" (
    goto menu_principal
) ELSE IF "%opcao_menu_downloads%"=="1" (
    goto menu_downloads_chrome
) ELSE IF "%opcao_menu_downloads%"=="2" (
    goto menu_downloads_node
) ELSE IF "%opcao_menu_downloads%"=="3" (
    goto menu_downloads_git
) ELSE IF "%opcao_menu_downloads%"=="4" (
    goto menu_downloads_vscode
) ELSE IF "%opcao_menu_downloads%"=="5" (
    goto menu_downloads_java
) ELSE IF "%opcao_menu_downloads%"=="6" (
    goto menu_downloads_androidstudio
) ELSE IF "%opcao_menu_downloads%"=="7" (
    goto menu_downloads_netbeans
) ELSE IF "%opcao_menu_downloads%"=="8" (
    goto menu_downloads_mongodbcompass
) ELSE IF "%opcao_menu_downloads%"=="9" (
    goto menu_downloads_mysql
) ELSE IF "%opcao_menu_downloads%"=="10" (
    goto menu_downloads_mysqlworkbench
) ELSE IF "%opcao_menu_downloads%"=="11" (
    goto menu_downloads_virtualbox
) ELSE IF "%opcao_menu_downloads%"=="12" (
    goto menu_downloads_outsystems
) ELSE IF "%opcao_menu_downloads%"=="13" (
    goto menu_downloads_rubysass
) ELSE IF "%opcao_menu_downloads%"=="14" (
    goto menu_downloads_postgresql
) ELSE IF "%opcao_menu_downloads%"=="15" (
    goto menu_downloads_docker
) ELSE (
    ECHO Opcao invalida! Por favor, escolha uma opcao valida.
    pause
    goto menu_downloads
)

:menu_downloads_vscode
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download VSCode:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: VSCode versao 1.84.2
echo ::
set /p baixar_vscode=":: Deseja baixar? (s/n) "

    set "vscodeDownloadPath=C:\Users\%username%\Downloads\VSCodeUserSetup-x64-1.84.2.exe"
    set "vscodeDownloadURL=https://az764295.vo.msecnd.net/stable/1a5daa3a0231a0fbba4f14db7ec463cf99d7768e/VSCodeUserSetup-x64-1.84.2.exe"

IF "%baixar_vscode%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %vscodeDownloadURL% %vscodeDownloadPath%

    start "" %vscodeDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_chrome
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download Chrome:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco local C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
set /p baixar_chrome=":: Deseja baixar? (s/n) "

    set "chromeDownloadPath=C:\Users\%username%\Downloads\GoogleChromeStandaloneEnterprise64.msi"
    set "chromeDownloadURL=https://dl.google.com/chrome/install/GoogleChromeStandaloneEnterprise64.msi"

IF "%baixar_chrome%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %chromeDownloadURL% %chromeDownloadPath%

    start "" %chromeDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_node
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download Node.js:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco local C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: Node versao 20.10.0 LTS
echo ::
set /p baixar_node=":: Deseja baixar? (s/n) "

    set "NodeDownloadPath=C:\Users\%username%\Downloads\node-v20.10.0-x64.msi"
    set "NodeDownloadURL=https://nodejs.org/dist/v20.10.0/node-v20.10.0-x64.msi"

IF "%baixar_node%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %NodeDownloadURL% %NodeDownloadPath%

    start "" %NodeDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_git
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download Git:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: Git versao 2.43.0-64
echo ::
set /p baixar_git=":: Deseja baixar? (s/n) "

    set "GitDownloadPath=C:\Users\%username%\Downloads\Git-2.43.0-64-bit.exe"
    set "GitDownloadURL=https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe"

IF "%baixar_git%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %GitDownloadURL% %GitDownloadPath%

    start "" %GitDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_java
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download Java:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: JDK versao 17.0.9
echo ::
set /p baixar_java=":: Deseja baixar? (s/n) "

    set "javaDownloadPath=C:\Users\%username%\Downloads\jdk-17.0.9_windows-x64_bin.exe"
    set "javaDownloadURL=https://download.oracle.com/java/17/archive/jdk-17.0.9_windows-x64_bin.exe"

IF "%baixar_java%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %javaDownloadURL% %javaDownloadPath%

    start "" %javaDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_androidstudio
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download Android Studio:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: Android Studio versao 2022.3.1.21
echo ::
set /p baixar_androidstudio=":: Deseja baixar? (s/n) "

    set "androidstudioDownloadPath=C:\Users\%username%\Downloads\android-studio-2022.3.1.21-windows.exe"
    set "androidstudioDownloadURL=https://r4---sn-uxaxh5g-8pme.gvt1.com/edgedl/android/studio/install/2022.3.1.21/android-studio-2022.3.1.21-windows.exe"

IF "%baixar_androidstudio%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %androidstudioDownloadURL% %androidstudioDownloadPath%

    start "" %androidstudioDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_netbeans
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download NetBeans:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: NetBeans versao 20
echo ::
set /p baixar_netbeans=":: Deseja baixar? (s/n) "

    set "netbeansDownloadPath=C:\Users\%username%\Downloads\Apache-NetBeans-20r1-bin-windows-x64.exe"
    set "netbeansDownloadURL=https://dlcdn.apache.org/netbeans/netbeans-installers/20/Apache-NetBeans-20r1-bin-windows-x64.exe"

IF "%baixar_netbeans%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %netbeansDownloadURL% %netbeansDownloadPath%

    start "" %netbeansDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_mongodbcompass
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download MongoDB Compass:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: MongoDB Compass versao 1.40.4
echo ::
set /p baixar_mongodbcompass=":: Deseja baixar? (s/n) "

    set "mongodbcompassDownloadPath=C:\Users\%username%\Downloads\mongodb-compass-1.40.4-win32-x64.exe"
    set "mongodbcompassDownloadURL=https://downloads.mongodb.com/compass/mongodb-compass-1.40.4-win32-x64.exe"

IF "%baixar_mongodbcompass%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %mongodbcompassDownloadURL% %mongodbcompassDownloadPath%

    start "" %mongodbcompassDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_mysql
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download MySQL:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: MySQL versao 8.0.35
echo ::
set /p baixar_mysql=":: Deseja baixar? (s/n) "

    set "mysqlDownloadPath=C:\Users\%username%\Downloads\mysql-installer-web-community-8.0.35.0.msi"
    set "mysqlDownloadURL=https://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-web-community-8.0.35.0.msi"

IF "%baixar_mysql%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %mysqlDownloadURL% %mysqlDownloadPath%

    start "" %mysqlDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_mysqlworkbench
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download MySQL Workbench:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: MySQL versao 8.0.34
echo ::
set /p baixar_mysqlworkbench=":: Deseja baixar? (s/n) "

    set "mysqlworkbenchDownloadPath=C:\Users\%username%\Downloads\mysql-workbench-community-8.0.34-winx64.msi"
    set "mysqlworkbenchDownloadURL=https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-8.0.34-winx64.msi"

IF "%baixar_mysqlworkbench%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %mysqlworkbenchDownloadURL% %mysqlworkbenchDownloadPath%

    start "" %mysqlworkbenchDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_virtualbox
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download VirtualBox:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: VirtualBox versao 7.0.12
echo ::
set /p baixar_virtualbox=":: Deseja baixar? (s/n) "

    set "virtualboxDownloadPath=C:\Users\%username%\Downloads\VirtualBox-7.0.12-159484-Win.exe"
    set "virtualboxDownloadURL=https://download.virtualbox.org/virtualbox/7.0.12/VirtualBox-7.0.12-159484-Win.exe"

IF "%baixar_virtualbox%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %virtualboxDownloadURL% %virtualboxDownloadPath%

    start "" %virtualboxDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_outsystems
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download OutSystems
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: OutSystems versao 11.54.38.63033
echo ::
set /p baixar_outsystems=":: Deseja baixar? (s/n) "

    set "outsystemsDownloadPath=C:\Users\%username%\Downloads\ServiceStudio-11.54.38.63033.exe"
    set "outsystemsDownloadURL=https://dxejw4oyledi.cloudfront.net/repository/servicestudio/11.54.38.63033/ServiceStudio-11.54.38.63033.exe"

IF "%baixar_outsystems%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %outsystemsDownloadURL% %outsystemsDownloadPath%

    start "" %outsystemsDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_rubysass
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download Ruby SASS
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: Ruby versao 3.2.3-1
echo ::
set /p baixar_rubysass=":: Deseja baixar? (s/n) "

    set "rubysassDownloadPath=C:\Users\%username%\Downloads\rubyinstaller-3.2.3-1-x64.exe"
    set "rubysassDownloadURL=https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.2.3-1/rubyinstaller-3.2.3-1-x64.exe"

IF "%baixar_rubysass%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %rubysassDownloadURL% %rubysassDownloadPath%

    start "" %rubysassDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_postgresql
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download PostgreSQL
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: PostgreSQL versao 16.2
echo ::
set /p baixar_postgresql=":: Deseja baixar? (s/n) "

    set "postgresqlDownloadPath=C:\Users\%username%\Downloads\postgresql-16.2-1-windows-x64.exe"
    set "postgresqlDownloadURL=https://get.enterprisedb.com/postgresql/postgresql-16.2-1-windows-x64.exe"

IF "%baixar_postgresql%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %postgresqlDownloadURL% %postgresqlDownloadPath%

    start "" %postgresqlDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_downloads_docker
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download Docker Desktop
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
echo :: Docker versao 4.27.2
echo ::
set /p baixar_docker=":: Deseja baixar? (s/n) "

    set "dockerDownloadPath=C:\Users\%username%\Downloads\Docker" "Desktop" "Installer.exe"
    set "dockerDownloadURL=https://desktop.docker.com/win/main/amd64/Docker" "Desktop" "Installer.exe"

IF "%baixar_docker%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %dockerDownloadURL% %dockerDownloadPath%

    start "" %dockerDownloadPath%

    pause
    goto menu_downloads
) ELSE (
    goto menu_downloads
)

:menu_configuracoes
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Voce esta no menu de Configuracoes e Scripts
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Escolha uma Opcao:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: 0 - Voltar
ECHO :: 1 - Atualizar o NPM
ECHO :: 2 - Liberar comandos especiais
ECHO :: 3 - Mostrar dependencias globais
ECHO :: 4 - Instalar principais dependencias node de forma global
ECHO :: 5 - Instalar principais extensoes VSCode
ECHO :: 6 - Script para setar variaveis de ambiente do Java e Android Studio
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
set /p opcao_menu_configuracoes=":: Digite o numero da opcao desejada: "

IF "%opcao_menu_configuracoes%"=="0" (
    goto menu_principal
) ELSE IF "%opcao_menu_configuracoes%"=="1" (
    goto menu_configuracoes_atualizarnpm
) ELSE IF "%opcao_menu_configuracoes%"=="2" (
    goto menu_configuracoes_comandosespeciais
) ELSE IF "%opcao_menu_configuracoes%"=="3" (
    goto menu_configuracoes_mostrardependenciasglobais
) ELSE IF "%opcao_menu_configuracoes%"=="4" (
    goto menu_configuracoes_instalardependenciasglobais
) ELSE IF "%opcao_menu_configuracoes%"=="5" (
    goto menu_configuracoes_instalarextensoesvscode
) ELSE IF "%opcao_menu_configuracoes%"=="6" (
    goto menu_configuracoes_variaveisdeambiente
) ELSE (
    ECHO Opcao invalida! Por favor, escolha uma opcao valida.
    pause
    goto menu_configuracoes
)

:menu_configuracoes_atualizarnpm
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Atualizar NPM:
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::
echo :: Sera atualizado o NPM para sua ultima versao
echo ::
set /p atualizar_npm=":: Deseja atualizar? (s/n) "

IF "%atualizar_npm%" == "s" (
    start /wait npm install -g npm@latest
    pause
    goto menu_configuracoes
) ELSE (
    goto menu_configuracoes
)

:menu_configuracoes_comandosespeciais
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Liberar comandos especiais:
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::
echo :: Sera liberado comandos especiais como ng, expo, sem a 
echo :: necessidade de utilizar npx antes deles
echo ::
set /p liberar_comandos=":: Deseja liberar? (s/n) "

IF "%liberar_comandos%" == "s" (
    start /wait powershell -Command "Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned"
    echo.
    echo Liberado!
    echo.
    pause
    goto menu_configuracoes
) ELSE (
    goto menu_configuracoes
)

:menu_configuracoes_mostrardependenciasglobais
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Mostrar dependencias globais:
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::
echo :: Sera mostrado as dependencias instaladas de forma global
echo ::
set /p mostrar_dependencias=":: Deseja mostrar? (s/n) "

IF "%mostrar_dependencias%" == "s" (
    start /wait npm list -g --depth=0
    pause
    goto menu_configuracoes
) ELSE (
    goto menu_configuracoes
)

:menu_configuracoes_instalardependenciasglobais
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Instalar principais dependencias e tecnologias Node de forma global:
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::
echo :: Sera instalado as seguintes dependencias:
echo ::
echo :: @angular/cli, @vue/cli, react-scripts@latest, create-react-app, expo-cli,
echo :: eas-cli, typescript, firebase-tools, react-native-cli, create-vite, netlify-cli, 
echo :: vercel, webpack, font-awesome, sass, less, tailwindcss, pug-cli, 
echo :: styled-components, firebase, react, uuid, jquery, @ionic/cli
echo ::
set /p instalardependenciasglobais=":: Deseja instalar? (s/n) "

IF "%instalardependenciasglobais%" == "s" (
    start /wait npm install -g @angular/cli @vue/cli react-scripts@latest create-react-app expo-cli eas-cli typescript firebase-tools react-native-cli create-vite netlify-cli vercel webpack font-awesome sass less tailwindcss pug-cli styled-components firebase react uuid jquery @ionic/cli
    pause
    goto menu_configuracoes
) ELSE (
    goto menu_configuracoes
)

:menu_configuracoes_instalarextensoesvscode
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Instalar principais extensoes VSCode:
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::
echo :: Sera instalado as seguintes extensoes:
echo ::
echo :: naumovs.color-highlight, ritwickdey.LiveServer, MS-CEINTL.vscode-language-pack-pt-BR
echo :: esbenp.prettier-vscode, PKief.material-icon-theme, formulahendry.auto-close-tag
echo :: formulahendry.auto-rename-tag, abusaidm.html-snippets, ecmel.vscode-html-css
echo :: xabikos.JavaScriptSnippets, swellaby.node-pack, NilsSoderman.batch-runner
echo :: dsznajder.es7-react-js-snippets, Vue.volar, Angular.ng-template
echo :: vscjava.vscode-java-pack, vscjava.vscode-maven, vscjava.vscode-java-debug
echo :: vscjava.vscode-java-test, vscjava.vscode-java-dependency, redhat.java
echo :: ms-dotnettools.vscode-dotnet-runtime, kreativ-software.csharpextensions
echo :: ms-dotnettools.csharp, ms-dotnettools.csdevkit
echo ::
set /p instalarextensoesvscode=":: Deseja instalar? (s/n) "

IF "%instalarextensoesvscode%" == "s" (
    call code --install-extension naumovs.color-highlight ^
&& call code --install-extension ritwickdey.LiveServer ^
&& call code --install-extension MS-CEINTL.vscode-language-pack-pt-BR ^
&& call code --install-extension esbenp.prettier-vscode ^
&& call code --install-extension PKief.material-icon-theme ^
&& call code --install-extension formulahendry.auto-close-tag ^
&& call code --install-extension formulahendry.auto-rename-tag ^
&& call code --install-extension abusaidm.html-snippets ^
&& call code --install-extension ecmel.vscode-html-css ^
&& call code --install-extension xabikos.JavaScriptSnippets ^
&& call code --install-extension swellaby.node-pack ^
&& call code --install-extension NilsSoderman.batch-runner ^
&& call code --install-extension dsznajder.es7-react-js-snippets ^
&& call code --install-extension Vue.volar ^
&& call code --install-extension Angular.ng-template ^
&& call code --install-extension vscjava.vscode-java-pack ^
&& call code --install-extension vscjava.vscode-maven ^
&& call code --install-extension vscjava.vscode-java-debug ^
&& call code --install-extension vscjava.vscode-java-test ^
&& call code --install-extension vscjava.vscode-java-dependency ^
&& call code --install-extension redhat.java ^
&& call code --install-extension ms-dotnettools.vscode-dotnet-runtime ^
&& call code --install-extension kreativ-software.csharpextensions ^
&& call code --install-extension ms-dotnettools.csharp ^
&& call code --install-extension ms-dotnettools.csdevkit ^
    pause
    goto menu_configuracoes
) ELSE (
    goto menu_configuracoes
)

:menu_configuracoes_variaveisdeambiente
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Setar variaveis de ambiente:
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::
echo :: Sera baixado um arquivo .reg no mesmo diretorio que este batch,
echo :: apenas execute e confirme
echo ::
echo :: Sera setada as variaveis:
echo ::
echo :: ANDROID_HOME, ANDROID_STUDIO_HOME, ANDROID_SDK_ROOT, JAVA_HOME
echo ::
set /p variaveisdeambiente=":: Deseja baixar? (s/n) "

IF "%variaveisdeambiente%" == "s" (
    echo Windows Registry Editor Version 5.00 >> editarvariaveis.reg
    echo [HKEY_CURRENT_USER\Environment] >> editarvariaveis.reg
    echo "ANDROID_HOME"="C:\\thiag\\%USERNAME%\\AppData\\Local\\Android\\Sdk" >> editarvariaveis.reg
    echo "ANDROID_STUDIO_HOME"="C:\\Program Files\\Android\\Android Studio" >> editarvariaveis.reg
    echo "ANDROID_SDK_ROOT"="C:\\thiag\\%USERNAME%\\AppData\\Local\\Android\\Sdk" >> editarvariaveis.reg
    echo "JAVA_HOME"="C:\\Program Files\\Java\\jdk-17" >> editarvariaveis.reg
    echo.
    echo Foi baixado!
    echo.
    pause
    goto menu_configuracoes
) ELSE (
    goto menu_configuracoes
)