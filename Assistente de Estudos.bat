@ECHO off
:menu_principal
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Assistente de Estudos
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Escolha uma Opcao:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: 0 - SAIR
ECHO :: 1 - GIT
ECHO :: 2 - HTML
ECHO :: 3 - CSS
ECHO :: 4 - JS
ECHO :: 5 - SQL
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::

set /p opcao=":: Digite o numero da opcao desejada: "

IF "%opcao%"=="0" (
    exit
) ELSE IF "%opcao%"=="1" (
    goto menu_git
) ELSE IF "%opcao%"=="2" (
    goto menu_html
) ELSE IF "%opcao%"=="3" (
    goto menu_css
) ELSE IF "%opcao%"=="4" (
    goto menu_js
) ELSE IF "%opcao%"=="5" (
    goto menu_sql
) ELSE (
    ECHO Opcao invalida! Por favor, escolha uma opcao valida.
    pause
    goto menu_principal
)

:menu_git
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Voce esta no menu GIT
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Escolha uma Opcao:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: 0 - Voltar
ECHO :: 1 - Abrir site para baixar e instalar
ECHO :: 2 - Baixar e executar direto por aqui
ECHO :: 3 - Configuracao
ECHO :: 4 - Como fazer Commit com repositorio ja criado
ECHO :: 5 - Trabalhando com Branch
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
set /p opcao_git=":: Digite o numero da opcao desejada: "

IF "%opcao_git%"=="0" (
    goto menu_principal
) ELSE IF "%opcao_git%"=="2" (
    goto git_download
) ELSE IF "%opcao_git%"=="1" (
    start https://git-scm.com/downloads
    pause
    goto menu_git
) ELSE IF "%opcao_git%"=="3" (
    goto git_configuracao
) ELSE IF "%opcao_git%"=="4" (
    goto git_commit
) ELSE IF "%opcao_git%"=="5" (
    goto git_branch
) ELSE (
    ECHO Opcao invalida! Por favor, escolha uma opcao valida.
    pause
    goto menu_git
)

:git_download
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Download Git:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::
echo :: Se voce estiver em uma maquina com disco C o arquivo sera baixado
echo :: na pasta Downloads, logo apos baixar sera executado, apenas termine a instalacao
echo ::
set /p baixar_git=":: Deseja baixar? (s/n) "

IF "%baixar_git%" == "s" (
    set "DownloadPath=C:\Users\%username%\Downloads\git.exe"
    set "DownloadURL=https://github.com/git-for-windows/git/releases/download/v2.42.0.windows.2/Git-2.42.0.2-64-bit.exe"

    bitsadmin /transfer AcessoRemoto /priority normal %DownloadURL% %DownloadPath%

    pause
    goto menu_git
) ELSE (
    goto menu_git
)







:git_configuracao
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Configuracao Git:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO Apos baixar e instalar o Git execute os seguintes comandos
ECHO Lembre-se de utilizar o nome e e-mail do gitHub
ECHO.
ECHO git config --global user.name "Seu usuario"
ECHO git config --global user.email "exemplo@seuemail.com.br"
ECHO.
ECHO Pronto seu Git estara configurado
ECHO.
pause
goto menu_git

:git_commit
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Commit Git:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO Para fazer um commit de um repositorio ja criado
ECHO execute os seguintes passos a seguir:
ECHO.
ECHO Primeiramente va ate o repositorio no GitHub e copie o link .git
ECHO Ex.: https://github.com/usuario/nome_repositorio.git
ECHO.
ECHO Apos copiar execute em uma nova pasta o seguinte comando
ECHO git clone ^<link_copiado^>
ECHO.
ECHO Apos fazer suas alteracoes execute o comando para adicionar todas
ECHO as suas alteracoes na nuvem
ECHO git add .
ECHO.
ECHO Se voce fez o git add . porem precisa cancelar execute o seguinte comando
ECHO git reset
ECHO.
ECHO Apos o add execute
ECHO git status
ECHO.
ECHO Se nao apresentar nenhum erro pode prosseguir
ECHO.
ECHO Agora faca o commit com o seguinte comando
ECHO git commit -m "Sua mensagem"
ECHO.
ECHO Apos o commit envie para o respositorio na branch main, ou altere o nome da branch
ECHO git push -u origin main
ECHO.
ECHO Pronto voce fez o commit de forma simples
pause
goto menu_git

:git_branch
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Trabalhando com Branch:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO Para listar as Branchs execute o seguinte comando
echo git branch
echo.
echo Para trocar de Branch execute o seguinte comando
echo git checkout nome-branch
echo.
echo Para criar uma nova Branch execute o seguinte comando
echo git checkout -b minha-nova-branch
echo.
echo Para excluir uma branch execute o seguinte comando
echo git branch -d nome-da-branch
echo.
echo Para renomear a sua atual Branch execute o seguinte comando
echo git branch -m novo-nome-da-branch
echo.
echo Se voce estiver em uma branch e quiser renomear outra, voce deve passar primeiro o nome atual da branch que quer renomear
echo git branch -m nome-atual novo-nome
echo.
echo Para fazer um merge de Branch certifique-se de estar na Branch correta e execute
echo git checkout main
echo.
echo Estando na Branch main por exemplo e quer fazer um merge com a Branch feature execute
echo git merge feature
echo.
pause
goto menu_git



:menu_html
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Voce esta no menu HTML
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Escolha uma Opcao:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: 0 - Voltar
ECHO :: 1 - Tags
ECHO :: 2 - Templates
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
set /p opcao_html=":: Digite o numero da opcao desejada: "

IF "%opcao_html%"=="0" (
    goto menu_principal
) ELSE IF "%opcao_html%"=="1" (
    goto html_tags
) ELSE IF "%opcao_html%"=="2" (
    goto html_templates
) ELSE (
    ECHO Opcao invalida! Por favor, escolha uma opcao valida.
    pause
    goto menu_html
)

:html_tags
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: TAGS HTML:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: 0 - Voltar
ECHO :: 1 - Tags Estruturais
ECHO :: 2 - Tags Semanticas
ECHO :: 3 - Tags de Conteudo
ECHO :: 4 - Tags de Texto
ECHO :: 5 - Tags de Listas
ECHO :: 6 - Tags de Tabelas
ECHO :: 7 - Tags de Formularios
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
set /p opcao_tags=":: Digite o numero da opcao desejada: "

IF "%opcao_tags%"=="0" (
    goto menu_principal
) ELSE IF "%opcao_tags%"=="1" (
    goto tags_estruturais
) ELSE IF "%opcao_tags%"=="2" (
    goto tags_semanticas
) ELSE IF "%opcao_tags%"=="3" (
    goto tags_conteudo
) ELSE IF "%opcao_tags%"=="4" (
    goto tags_texto
) ELSE IF "%opcao_tags%"=="5" (
    goto tags_listas
) ELSE IF "%opcao_tags%"=="6" (
    goto tags_tabelas
) ELSE IF "%opcao_tags%"=="7" (
    goto tags_formulario
) ELSE (
    ECHO Opcao invalida! Por favor, escolha uma opcao valida.
    pause
    goto html_tags
)

:tags_estruturais
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: TAGS ESTRUTURAIS:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo ^<!DOCTYPE html^> - Essa e a tag que informa ao navegador qual o tipo de linguagem utilizada.
echo Em um HTML simples e preciso utilizar a linguagem ^<!DOCTYPE html^>, enquanto no HTML5 e necessario somente
echo ^!DOCTYPE html^, e o navegador ja vai entender
echo.
echo ^<html^>^</html^> - Todo o trabalho feito em HTML deve conter essa tag, ja que ela vai indicar
echo todo o caminho a ser trilhado, alem, e claro, de reconhecer cada tag que vai ser incluida. 
echo Se voce nao indicar essa tag no inicio e no final, qualquer tipo de atributo nao vai ser reconhecido
echo.
echo ^<head^>^</head^> - A Tag head e o cabecalho do seu codigo. Normalmente nao tem nenhum tipo de 
echo utilidade pratica na pagina, mas ajuda a delimitar o inicio do trabalho feito com HTML
echo.
echo ^<title^>^</title^> - Essa e a tag html mais importante, pois ela vai determinar o titulo da pagina. 
echo Essa e uma das tags que todos que trabalham com SEO devem estar sempre atentos;
echo.
echo ^<meta/^> - Ela permite a insercao de metadados no seu documento, e para isso e importante
echo utilizar charset="UTF-8", para que as informacoes inseridas estejam dentro do padrao latino americano. 
echo Em outras palavras, e o reconhecimento dos atributos que serao inseridos depois
echo.
echo ^<body^>^</body^> - Com tudo inserido, e hora de colocar a tag body, que e onde voce vai colocar
echo finalmente as informacoes referentes ao codigo a ser trabalhado, ou seja, esta tag representa o corpo do documento.
echo.
echo Exemplo de Estutura basica:
echo.
echo ^<!DOCTYPE html^>
echo    ^<html^>
echo       ^<head^>
echo           ^<title^>Titulo da pagina^</title^>
echo           ^<meta charset="utf-8"/^>
echo       ^</head^>
echo       ^<body^>
echo.
echo       ^</body^>
echo    ^</html^>
echo.
pause
goto html_tags

:tags_semanticas
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: TAGS SEMANTICAS:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo ^<article^>: Usada para representar um conteudo independente e autossuficiente.
echo Exemplo: 
echo        ^<article^>
echo            ^<h1^>Titulo do Artigo^</h1^>
echo            ^<p^>Este e um artigo interessante sobre um topico especifico.^</p^>
echo            ^<p^>Mais conteudo do artigo aqui...^</p^>
echo        ^</article^>
ECHO.
echo ^<aside^>: Utilizada para conteudo relacionado, mas nao essencial para o conteudo principal.
echo Exemplo: 
echo        ^<aside^>
echo            ^<h2^>Barra Lateral^</h2^>
ECHO            ^<p^>Informacoes relacionadas ou anuncios podem ser exibidos aqui.^</p^>
echo        ^</aside^>
ECHO.
echo ^<details^>: Cria um elemento de controle de detalhes que pode ser aberto ou fechado.
echo Exemplo: 
echo        ^<details^>
echo            ^<summary^>Mostrar mais^</summary^>
echo            ^<p^>Este e um conteudo adicional que pode ser expandido ou recolhido.^</p^>
echo        ^</details^>
ECHO.
echo ^<figure^>: Envolve qualquer conteudo referenciado no texto, como imagens, graficos, tabelas, etc.
echo Exemplo: 
echo        ^<figure^>
echo            ^<img src="imagem.jpg"^>
echo        ^</figure^>
ECHO.
echo ^<figcaption^>: Usada para adicionar uma legenda a um elemento ^<figure^>.
echo Exemplo: 
echo        ^<figure^>
echo            ^<img src="imagem.jpg"^>
echo            ^<figcaption^>Legenda da imagem^</figcaption^>
echo        ^</figure^>
ECHO.
echo ^<footer^>: Utilizada para representar informacoes de rodape.
echo Exemplo:
echo        ^<footer^>
echo            ^<p^>2023 Meu Site^</p^>
echo        ^</footer^>
ECHO.
echo ^<header^>: Usada para representar um cabecalho.
echo Exemplo: 
echo        ^<header^>
echo            ^<h1^>Meu Site^</h1^>
ECHO        ^</header^>
ECHO.
echo ^<main^>: Indica o conteudo principal de um documento HTML.
echo Exemplo: 
echo        ^<main^>
ECHO            ^<h1^>Pagina Principal^</h1^>
ECHO            ^<p^>Este e o conteudo principal da minha pagina.^</p^>
ECHO        ^</main^>
ECHO.
echo ^<mark^>: Usada para destacar parte do texto.
echo Exemplo: 
echo        ^<p^>Este e um ^<mark^>texto marcado^</mark^> em destaque.^</p^>
ECHO.
echo ^<nav^>: Utilizada para definir uma area de navegacao.
echo Exemplo:
echo        ^<nav^>
echo            ^<ul^>
echo                ^<li^>Pagina Inicial^</li^>
echo                ^<li^>Sobre Nos^</li^>
echo            ^</ul^>
echo        ^</nav^>
ECHO.
echo ^<section^>: Define uma secao de conteudo.
echo Exemplo:
echo        ^<section^>
ECHO            ^<h2^>Secao 1^</h2^>
ECHO            ^<p^>Este e o conteudo da secao 1.^</p^>
ECHO        ^</section^>
ECHO.
echo ^<summary^>: Usada em conjunto com a tag ^<details^> para fornecer um titulo ou resumo visivel.
echo Exemplo:
echo        ^<details^>
echo            ^<summary^>Mostrar mais^</summary^>
ECHO            ^<p^>Este e um conteudo adicional que pode ser expandido ou recolhido.^</p^>
echo        ^</details^>
ECHO.
echo ^<time^>: Utilizada para representar datas ou horarios.
echo Exemplo:
echo        ^<p^>A data de hoje e ^<time datetime="2023-10-04"^>04 de outubro de 2023^</time^>.^</p^>
ECHO.
pause
goto html_tags

:tags_conteudo
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: TAGS CONTEUDO:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo ^<img src="URL" alt="Descricao"^> - A tag img e usada para exibir imagens. O atributo src define o URL da imagem e alt fornece uma descricao alternativa.
echo Ex.:
ECHO    ^<img src="imagem.jpg" alt="Imagem de exemplo"^>
echo.
echo ^<audio src="URL" controls^> - A tag audio e usada para incorporar arquivos de audio em uma pagina. O atributo src define o URL do arquivo de audio e "controls" adiciona controles de reproducao.
echo Ex.:
echo    ^<audio src="audio.mp3" controls^>
echo.
echo ^<video src="URL" controls^> - A tag video e usada para incorporar arquivos de video em uma pagina. O atributo src define o URL do arquivo de video e "controls" adiciona controles de reproducao.
echo Ex.:
echo    ^<video src="video.mp4" controls^>
echo.
echo ^<iframe src="URL"^>^</iframe^> - A tag iframe e usada para incorporar paginas da web dentro de uma pagina. O atributo src define o URL da pagina incorporada.
echo Ex.:
echo    ^<iframe src="https://www.exemplo.com.br"^>^</iframe^>
echo.
echo ^<embed src="URL"^> - A tag embed e usada para incorporar conteudo multimidia, como audio ou video, diretamente na pagina.
echo Ex.:
echo    ^<embed src="multimidia.swf"^>
echo.
pause
goto html_tags

:html_templates
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: TEMPLATES HTML:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: 0 - Voltar
ECHO :: 1 - Pasta com Template basico com HTML, JS e CSS linkados.
ECHO :: 2 - Modal
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
set /p template_menu=":: Digite o numero da opcao desejada: "

IF "%template_menu%"=="0" (
    goto menu_html
) ELSE IF "%template_menu%"=="1" (
    goto template_padrao
) ELSE IF "%template_menu%"=="2" (
    goto template_modal
) ELSE (
    ECHO Opcao invalida! Por favor, escolha uma opcao valida.
    pause
    goto menu_html
)

:template_padrao
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: A pasta vem com um template HTML, CSS e JS linkados, apenas pegar e usar
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Conteudo da pasta:
echo ::
echo :: html_template
echo ::  js
echo ::    scripts.js
echo ::  css 
echo ::    styles.css
echo ::  index.html
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::
set /p baixar_pasta_html=":: Deseja baixar? (s/n) "

IF "%baixar_pasta_html%"=="s" (
    cls
mkdir html_template
cd html_template

mkdir js
cd js
echo // Seu codigo JavaScript aqui > scripts.js
cd ..

mkdir css
cd css
echo /* Seu codigo CSS aqui */ > styles.css
cd ..

(
  echo ^<!DOCTYPE html^>
  echo ^<html lang="pt-BR"^>
  echo   ^<head^>
  echo     ^<meta charset="UTF-8"^>
  echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
  echo     ^<title^>Seu Titulo^</title^>
  echo     ^<link rel="stylesheet" type="text/css" href="css/styles.css"^>
  echo   ^</head^>
  echo   ^<body^>
  echo     ^<script src="js/scripts.js"^>^</script^>
  echo   ^</body^>
  echo ^</html^>
) > index.html


    ECHO.
    ECHO A pasta foi baixada e esta em sua area de trabalho.
    ECHO.
    pause
    goto html_templates
) ELSE (
    pause
    goto html_templates
)