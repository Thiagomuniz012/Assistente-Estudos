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
ECHO :: 6 - LINUX
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
) ELSE IF "%opcao%"=="6" (
    goto menu_linux
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
ECHO :: 1 - Abrir site do GIT
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
    start https://git-scm.com/
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

    set "GitDownloadPath=C:\Users\%username%\Downloads\git.exe"
    set "GitDownloadURL=https://github.com/git-for-windows/git/releases/download/v2.42.0.windows.2/Git-2.42.0.2-64-bit.exe"

IF "%baixar_git%" == "s" (

    bitsadmin /transfer AcessoRemoto /priority normal %GitDownloadURL% %GitDownloadPath%

    start "" %GitDownloadPath%

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
echo Ex.:
echo        ^<article^>
echo            ^<h1^>Titulo do Artigo^</h1^>
echo            ^<p^>Este e um artigo interessante sobre um topico especifico.^</p^>
echo            ^<p^>Mais conteudo do artigo aqui...^</p^>
echo        ^</article^>
ECHO.
echo ^<aside^>: Utilizada para conteudo relacionado, mas nao essencial para o conteudo principal.
echo Ex.:
echo        ^<aside^>
echo            ^<h2^>Barra Lateral^</h2^>
ECHO            ^<p^>Informacoes relacionadas ou anuncios podem ser exibidos aqui.^</p^>
echo        ^</aside^>
ECHO.
echo ^<details^>: Cria um elemento de controle de detalhes que pode ser aberto ou fechado.
echo Ex.:
echo        ^<details^>
echo            ^<summary^>Mostrar mais^</summary^>
echo            ^<p^>Este e um conteudo adicional que pode ser expandido ou recolhido.^</p^>
echo        ^</details^>
ECHO.
echo ^<figure^>: Envolve qualquer conteudo referenciado no texto, como imagens, graficos, tabelas, etc.
echo Ex.:
echo        ^<figure^>
echo            ^<img src="imagem.jpg"^>
echo        ^</figure^>
ECHO.
echo ^<figcaption^>: Usada para adicionar uma legenda a um elemento ^<figure^>.
echo Ex.:
echo        ^<figure^>
echo            ^<img src="imagem.jpg"^>
echo            ^<figcaption^>Legenda da imagem^</figcaption^>
echo        ^</figure^>
ECHO.
echo ^<footer^>: Utilizada para representar informacoes de rodape.
echo Ex.:
echo        ^<footer^>
echo            ^<p^>2023 Meu Site^</p^>
echo        ^</footer^>
ECHO.
echo ^<header^>: Usada para representar um cabecalho.
echo Ex.:
echo        ^<header^>
echo            ^<h1^>Meu Site^</h1^>
ECHO        ^</header^>
ECHO.
echo ^<main^>: Indica o conteudo principal de um documento HTML.
echo Ex.:
echo        ^<main^>
ECHO            ^<h1^>Pagina Principal^</h1^>
ECHO            ^<p^>Este e o conteudo principal da minha pagina.^</p^>
ECHO        ^</main^>
ECHO.
echo ^<mark^>: Usada para destacar parte do texto.
echo Ex.:
echo        ^<p^>Este e um ^<mark^>texto marcado^</mark^> em destaque.^</p^>
ECHO.
echo ^<nav^>: Utilizada para definir uma area de navegacao.
echo Ex.:
echo        ^<nav^>
echo            ^<ul^>
echo                ^<li^>Pagina Inicial^</li^>
echo                ^<li^>Sobre Nos^</li^>
echo            ^</ul^>
echo        ^</nav^>
ECHO.
echo ^<section^>: Define uma secao de conteudo.
echo Ex.:
echo        ^<section^>
ECHO            ^<h2^>Secao 1^</h2^>
ECHO            ^<p^>Este e o conteudo da secao 1.^</p^>
ECHO        ^</section^>
ECHO.
echo ^<summary^>: Usada em conjunto com a tag ^<details^> para fornecer um titulo ou resumo visivel.
echo Ex.:
echo        ^<details^>
echo            ^<summary^>Mostrar mais^</summary^>
ECHO            ^<p^>Este e um conteudo adicional que pode ser expandido ou recolhido.^</p^>
echo        ^</details^>
ECHO.
echo ^<time^>: Utilizada para representar datas ou horarios.
echo Ex.:
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

:tags_texto
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: TAGS DE TEXTO:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo ^<p^>: Usada para paragrafos de texto.
echo Ex.:
echo    ^<p^>Este de um paragrafo de texto.^</p^>
ECHO.
echo ^<h1^> a ^<h6^>: Define um cabecalho de nivel.
echo Ex.:
echo     ^<h1^>Titulo Principal^</h1^>
ECHO.
echo ^<strong^>: Usada para texto forte ou enfatizado.
echo Ex.:
echo    ^<p^>Este de um texto ^<strong^>importante^</strong^>.^</p^>
ECHO.
echo ^<em^>: Usada para texto enfatizado.
echo Ex.:
echo    ^<p^>Este de um texto ^<em^>enfatizado^</em^>.^</p^>
ECHO.
echo ^<u^>: Usada para sublinhar texto.
echo Ex.:
echo    ^<p^>Este de um texto ^<u^>sublinhado^</u^>.^</p^>
ECHO.
echo ^<s^>: Usada para texto tachado.
echo Ex.:
echo    ^<p^>Este de um texto ^<s^>tachado^</s^>.^</p^>
ECHO.
echo ^<blockquote^>: Usada para citacoes em bloco.
echo Ex.:
echo    ^<blockquote^>Isso de uma citacao em bloco.^</blockquote^>
ECHO.
echo ^<cite^>: Usada para citar o titulo de uma obra.
echo Ex.:
echo    ^<cite^>Nome do Livro^</cite^>
ECHO.
echo ^<sub^>: Usada para texto sobrescrito.
echo Ex.:
echo    ^<p^>H2O de a formula da agua (^<sub^>subscrito^</sub^>).^</p^>
ECHO.
echo ^<sup^>: Usada para texto sobrescrito.
echo Ex.:
echo    ^<p^>2^<sup^>3^</sup^> de igual a oito.^</p^>
ECHO.
echo ^<br^>: Insere uma quebra de linha.
echo Ex.: 
echo    Este E um texto com ^<br^> quebra de linha.^
ECHO.
echo ^<small^>: Define texto em tamanho pequeno.
echo Ex.: 
echo    ^<small^>Texto pequeno^</small^>
ECHO.
echo ^<del^>: Indica texto deletado.
echo Ex.: 
echo    ^<del^>Texto deletado^</del^>
ECHO.
echo ^<ins^>: Indica texto inserido.
echo Ex.: 
echo    ^<ins^>Texto inserido^</ins^>
ECHO.
echo ^<code^>: Usada para destacar cOdigo.
echo Ex.: 
echo    ^<code^>int main() {^</code^>
echo    ^<code^>    printf("OlA, Mundo!");^</code^>
echo    ^<code^>    return 0;^</code^>
ECHO.
echo ^<pre^>: Preserva formatacao de texto.
echo Ex.: 
echo    ^<pre^>Texto com formatacao preservada.^</pre^>
ECHO.
echo ^<kbd^>: Representa entrada do teo.
echo Ex.:
echo    ^<kbd^>Ctrl + C^</kbd^>
ECHO.
pause
goto html_tags

:tags_listas
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: TAGS DE LISTA:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo ^<ul^>: Usada para criar uma lista nao ordenada.
echo Ex.: 
echo        ^<ul^>
echo            ^<li^>Item 1^</li^>
echo            ^<li^>Item 2^</li^>
echo            ^<li^>Item 3^</li^>
echo        ^</ul^>
ECHO.
echo ^<ol^>: Usada para criar uma lista ordenada.
echo Ex.: 
echo        ^<ol^>
echo            ^<li^>Item 1^</li^>
echo            ^<li^>Item 2^</li^>
echo            ^<li^>Item 3^</li^>
echo        ^</ol^>
ECHO.
echo ^<li^>: Define um item de lista em ^<ul^> ou ^<ol^>.
echo Ex.: 
echo        ^<ul^>
echo            ^<li^>Item 1^</li^>
echo            ^<li^>Item 2^</li^>
echo            ^<li^>Item 3^</li^>
echo        ^</ul^>
ECHO.
echo ^<dl^>: Usada para criar uma lista de definicao.
echo Ex.: 
echo        ^<dl^>
echo            ^<dt^>Termo 1^</dt^>
echo            ^<dd^>Definicao 1^</dd^>
echo            ^<dt^>Termo 2^</dt^>
echo            ^<dd^>Definicao 2^</dd^>
echo        ^</dl^>
ECHO.
echo ^<dt^>: Define um termo em uma lista de definicao (^<dl^>).
echo Ex.: 
echo        ^<dl^>
echo            ^<dt^>Termo 1^</dt^>
echo            ^<dd^>Definicao 1^</dd^>
echo            ^<dt^>Termo 2^</dt^>
echo            ^<dd^>Definicao 2^</dd^>
echo        ^</dl^>
ECHO.
echo ^<dd^>: Define uma definicao em uma lista de definicao (^<dl^>).
echo Ex.: 
echo        ^<dl^>
echo            ^<dt^>Termo 1^</dt^>
echo            ^<dd^>Definicao 1^</dd^>
echo            ^<dt^>Termo 2^</dt^>
echo            ^<dd^>Definicao 2^</dd^>
echo        ^</dl^>
ECHO.
pause
goto html_tags

:tags_tabelas
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: TAGS DE TABELA:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo ^<table^>: Usada para criar uma tabela.
echo Ex.:
echo    ^<table^>
echo        ^<tr^>
echo            ^<th^>Cabecalho 1^</th^>
echo            ^<th^>Cabecalho 2^</th^>
echo        ^</tr^>
echo        ^<tr^>
echo            ^<td^>Dado 1,1^</td^>
echo            ^<td^>Dado 1,2^</td^>
echo        ^</tr^>
echo        ^<tr^>
echo            ^<td^>Dado 2,1^</td^>
echo            ^<td^>Dado 2,2^</td^>
echo        ^</tr^>
echo    ^</table^>
ECHO.
echo ^<tr^>: Define uma linha em uma tabela.
echo Ex.:
echo    ^<tr^>
echo        ^<td^>Dado 1,1^</td^>
echo        ^<td^>Dado 1,2^</td^>
echo    ^</tr^>
ECHO.
echo ^<th^>: Define um cabecalho de coluna em uma tabela.
echo Ex.:
echo    ^<tr^>
echo        ^<th^>Cabecalho 1^</th^>
echo        ^<th^>Cabecalho 2^</th^>
echo    ^</tr^>
ECHO.
echo ^<td^>: Define um dado de cdelula em uma tabela.
echo Ex.:
echo    ^<tr^>
echo        ^<td^>Dado 1,1^</td^>
echo        ^<td^>Dado 1,2^</td^>
echo    ^</tr^>
ECHO.
echo ^<caption^>: Usada para adicionar uma legenda a tabela.
echo Ex.:
echo    ^<table^>
echo        ^<caption^>Tabela de Exemplo^</caption^>
echo        ^<tr^>
echo            ^<th^>Cabecalho 1^</th^>
echo            ^<th^>Cabecalho 2^</th^>
echo        ^</tr^>
echo        ^<tr^>
echo            ^<td^>Dado 1,1^</td^>
echo            ^<td^>Dado 1,2^</td^>
echo        ^</tr^>
echo    ^</table^>
ECHO.
echo ^<colgroup^>: Define grupos de colunas em uma tabela.
echo Ex.:
echo    ^<table^>
echo        ^<colgroup^>
echo            ^<col span="2"^>^</col^>
echo            ^<col^>^</col^>
echo        ^</colgroup^>
echo        ^<tr^>
echo            ^<th^>Cabecalho 1^</th^>
echo            ^<th^>Cabecalho 2^</th^>
echo        ^</tr^>
echo        ^<tr^>
echo            ^<td^>Dado 1,1^</td^>
echo            ^<td^>Dado 1,2^</td^>
echo        ^</tr^>
echo    ^</table^>
ECHO.
pause
goto html_tags

:tags_formulario
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: TAGS DE FORMULARIOS:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo ^<form^>: Usada para criar um formulario.
echo Ex.:
echo    ^<form action="/processar_dados" method="post"^>
echo        \^<!-- Conteudo do formulario aqui --^>
echo    ^</form^>
ECHO.
echo ^<input^>: Usada para criar campos de entrada.
echo Ex.:
echo    ^<input type="text" name="nome" placeholder="Seu Nome"^>^</input^>
ECHO.
echo ^<textarea^>: Usada para criar uma area de texto.
echo Ex.:
echo    ^<textarea name="comentario" rows="4" cols="50"^>Digite seu comentario aqui^</textarea^>
ECHO.
echo ^<select^>: Usada para criar uma lista suspensa.
echo Ex.:
echo    ^<select name="cidade"^>
echo        ^<option value="ny"^>Nova York^</option^>
echo        ^<option value="la"^>Los Angeles^</option^>
echo        ^<option value="chicago"^>Chicago^</option^>
echo    ^</select^>
ECHO.
echo ^<label^>: Usada para criar rotulos para campos de entrada.
echo Ex.:
echo    ^<label for="nome"^>Nome:^</label^>
ECHO.
echo ^<button^>: Usada para criar botoes em um formulario.
echo Ex.:
echo    ^<button type="submit"^>Enviar^</button^>
ECHO.
echo ^<fieldset^>: Usada para agrupar elementos de formulario.
echo Ex.:
echo    ^<fieldset^>
echo        ^<legend^>Informacoes Pessoais^</legend^>
echo        ^<!-- Campos de formulario aqui --^>
echo    ^</fieldset^>
ECHO.
echo ^<legend^>: Usada para criar um titulo para um campo de formulario.
echo Ex.:
echo    ^<fieldset^>
echo        ^<legend^>Informacoes Pessoais^</legend^>
echo        ^<!-- Campos de formulario aqui --^>
echo    ^</fieldset^>
ECHO.
echo ^<input type="checkbox"^>: Usada para caixas de selecao.
echo Ex.:
echo    ^<input type="checkbox" name="interesses" value="esportes"^>Esportes^</input^>
ECHO.
echo ^<input type="radio"^>: Usada para botoes de radio.
echo Ex.:
echo    ^<input type="radio" name="sexo" value="masculino"^>Masculino^</input^>
echo    ^<input type="radio" name="sexo" value="feminino"^>Feminino^</input^>
ECHO.
pause
goto html_tags


:html_templates
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: TEMPLATES HTML:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: 0 - Voltar
ECHO :: 1 - Pasta com Template basico com HTML, JS e CSS linkados.
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
set /p template_menu=":: Digite o numero da opcao desejada: "

IF "%template_menu%"=="0" (
    goto menu_html
) ELSE IF "%template_menu%"=="1" (
    goto template_padrao
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

:menu_css
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Voce esta no menu CSS
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Escolha uma Opcao:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: 0 - Voltar
ECHO :: 1 - Reset e Normalizacao CSS
ECHO :: 2 - Layout em CSS
ECHO :: 3 - Displays CSS
ECHO :: 4 - Seletores CSS
ECHO :: 5 - Pseudo-classes CSS
ECHO :: 6 - Media Queries
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
set /p opcao_css=":: Digite o numero da opcao desejada: "

IF "%opcao_css%"=="0" (
    goto menu_principal
) ELSE IF "%opcao_css%"=="1" (
    goto css_reset
) ELSE IF "%opcao_css%"=="2" (
    goto css_layout
) ELSE IF "%opcao_css%"=="3" (
    goto css_displays
) ELSE IF "%opcao_css%"=="4" (
    goto css_seletores
) ELSE IF "%opcao_css%"=="5" (
    goto css_pseudo
) ELSE IF "%opcao_css%"=="6" (
    goto css_media_queries
) ELSE (
    ECHO Opcao invalida! Por favor, escolha uma opcao valida.
    pause
    goto menu_css
)


:css_reset
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: RESET E NORMALIZACAO CSS:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Reset CSS - O reset CSS e usado para remover estilos padrao dos navegadores, garantindo uma base consistente.
echo Ex.:
echo    * {
echo        margin: 0;
echo        padding: 0;
echo        box-sizing: border-box;
echo    }
echo.
echo Normalizacao CSS - A normalizacao CSS e usada para estilizar elementos HTML de forma consistente em diferentes navegadores.
echo Ex.:
echo    body {
echo        font-family: Arial, sans-serif;
echo    }
echo    a {
echo        text-decoration: none;
echo    }
echo.
pause
goto menu_css

:css_layout
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: LAYOUT EM CSS:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Layout em CSS - O layout em CSS e fundamental para controlar a disposicao de 
echo elementos na pagina, incluindo o posicionamento e o espacamento entre eles.
echo.
echo Exemplo de propriedade "display":
echo.
echo display: flex;
echo - A propriedade "display" com o valor "flex" cria um layout flexivel. 
echo Isso permite que os elementos se ajustem automaticamente ao tamanho da tela, 
echo ocupando espaco igualmente na horizontal ou vertical, dependendo da direcao do flex container.
echo.
echo Exemplo de propriedade "float":
echo.
echo float: left;
echo - A propriedade "float" com o valor "left" permite que o elemento flutue a esquerda
echo de seu conteiner. Isso e util para criar layouts de varias colunas, onde os elementos flutuam lado a lado.
echo.
echo Exemplo de propriedade "position":
echo.
echo position: relative;
echo - A propriedade "position" com o valor "relative" posiciona um elemento de forma relativa 
echo ao seu local original. Voce pode usar as propriedades "top", "right", "bottom" e "left" para ajustar a posicao.
echo.
echo Exemplo de propriedades "margin" e "padding":
echo.
echo margin: 10px;
echo - A propriedade "margin" define uma margem de 10 pixels em torno do elemento, criando espaco externo.
echo.
echo padding: 5px;
echo - A propriedade "padding" define um preenchimento de 5 pixels dentro do elemento, criando espaco interno.
echo.
echo Exemplo de propriedade "box-sizing":
echo.
echo box-sizing: border-box;
echo - A propriedade "box-sizing" com o valor "border-box" garante que as dimensoes do elemento 
echo incluam preenchimento e borda, tornando o tamanho total previsivel.
echo.
echo Um layout bem planejado em CSS e essencial para criar designs responsivos e atraentes. 
echo A escolha das propriedades e do modelo de layout depende dos requisitos do projeto e das preferencias de design.
echo.
pause
goto menu_css

:css_displays
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: DISPLAYS EM CSS:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo A propriedade "display" em CSS controla como um elemento HTML e exibido na pagina.
echo Ela pode receber varios valores, cada um afetando o comportamento do elemento de maneira diferente.
echo.
echo Valores comuns da propriedade "display" incluem:
echo.
echo 1. "block" - Torna o elemento um bloco retangular que ocupa toda a largura disponivel e inicia em uma nova linha.
echo Ex.:
echo   div {
echo       display: block;
echo   }
echo.
echo 2. "inline" - Torna o elemento em linha, permitindo que ele ocupe apenas o espaco necessario e nao inicie uma nova linha.
echo Ex.:
echo   span {
echo       display: inline;
echo   }
echo.
echo 3. "inline-block" - Semelhante ao "inline", mas permite definir largura e altura do elemento.
echo Ex.:
echo   button {
echo       display: inline-block;
echo       width: 100px;
echo       height: 40px;
echo   }
echo.
echo 4. "none" - Torna o elemento invisivel e nao ocupa espaco na pagina.
echo Ex.:
echo   .hidden {
echo       display: none;
echo   }
echo.
echo 5. "flex" - Define o elemento como um container flexivel, permitindo o alinhamento e o dimensionamento de itens internos.
echo Ex.:
echo   .flex-container {
echo       display: flex;
echo       justify-content: space-between;
echo   }
echo.
echo 6. "grid" - Define o elemento como um container de layout de grade, permitindo o posicionamento preciso de itens internos.
echo Ex.:
echo   .grid-container {
echo       display: grid;
echo       grid-template-columns: 1fr 1fr;
echo   }
echo.
echo 7. "table" - Transforma o elemento em uma tabela HTML, com elementos filhos como celulas da tabela.
echo Ex.:
echo   table {
echo       display: table;
echo   }
echo.
echo 8. "inline-table" - Semelhante ao "table", mas permite que o elemento seja exibido em linha.
echo Ex.:
echo   ul {
echo       display: inline-table;
echo   }
echo.
echo 9. "list-item" - Torna o elemento um item de lista, como uma marca de lista HTML (por exemplo, "li").
echo Ex.:
echo   li {
echo       display: list-item;
echo   }
echo.
echo Lembre-se de que o valor "display" escolhido afetara a aparencia e o comportamento do elemento na pagina. 
echo Escolha o valor que melhor se adequa as suas necessidades de layout.
echo.
pause
goto menu_css

:css_media_queries
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: MEDIA QUERIES:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Media Queries - Permitem estilos diferentes com base no tamanho da tela.
echo Ex.:
echo    @media screen and (max-width: 600px) {
echo        /* Estilos para telas pequenas */
echo    }
echo.
echo No exemplo, os estilos dentro da media query sao aplicados apenas quando a largura da tela for igual ou menor a 600 pixels. Isso e util para criar designs responsivos.
echo.
echo Voce tambem pode usar as propriedades 'min-width' e 'max-width' para definir intervalos especificos de largura de tela. Por Ex.:
echo.
echo @media screen and (min-width: 601px) and (max-width: 1024px) {
echo     /* Estilos para tablets em modo retrato e paisagem (largura entre 601px e 1024px) */
echo }
echo.
echo A consulta acima aplica estilos apenas quando a largura da tela estiver entre 601 e 1024 pixels.
echo.
echo Alem disso, aqui estao alguns tamanhos de midia padrao comuns:
echo.
echo 1. @media screen and (max-width: 600px): Estilos para dispositivos de largura igual ou menor a 600 pixels, geralmente smartphones em modo retrato.
echo.
echo 2. @media screen and (min-width: 601px) and (max-width: 1024px): Estilos para tablets em modo retrato e paisagem.
echo.
echo 3. @media screen and (min-width: 1025px) and (max-width: 1440px): Estilos para dispositivos de largura entre 1025 e 1440 pixels, como laptops e monitores de tamanho medio.
echo.
echo 4. @media screen and (min-width: 1441px): Estilos para dispositivos de largura igual ou superior a 1441 pixels, como monitores grandes.
echo.
pause
goto menu_css

:css_seletores
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: SELETORES CSS:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Seletores CSS - Os seletores sao usados para selecionar elementos HTML e aplicar estilos a eles.
echo Ex.:
echo    h1 { color: blue; }
echo    .classe { font-size: 16px; }
echo    #id { background-color: #FFA500; }
echo.
echo No exemplo, "h1" seleciona todos os elementos h1 e define a cor para azul.
echo ".classe" seleciona elementos com a classe "classe" e define o tamanho da fonte.
echo "#id" seleciona um elemento com o ID "id" e define a cor de fundo.
echo.
pause
goto menu_css


:css_pseudo
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: PSEUDO-CLASSES NO CSS:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo Pseudo-classes no CSS sao usadas para aplicar estilos a elementos HTML com base em seu estado ou interacao do usuario. 
echo Um exemplo comum e a pseudo-classe :hover.
echo.
echo :hover - Essa pseudo-classe e usada para definir estilos quando o cursor do mouse esta sobre um elemento.
echo Ex.:
echo    a:hover {
echo        /* Estilos quando o mouse passa sobre um link */
echo        color: red;
echo    }
echo.
echo Outras pseudo-classes uteis incluem:
echo.
echo :active - Estilos aplicados a um elemento quando ele esta ativo (por exemplo, quando um botao e pressionado).
echo Ex.:
echo    button:active {
echo        /* Estilos quando o botao esta pressionado */
echo        background-color: lightgray;
echo    }
echo.
echo :focus - Estilos aplicados a um elemento quando ele ganha foco (geralmente por meio de clique ou teclado).
echo Ex.:
echo    input:focus {
echo        /* Stilos quando o campo de entrada ganha foco */
echo        border: 2px solid blue;
echo    }
echo.
echo :nth-child - Permite selecionar elementos com base em sua posicao em relacao aos irmaos.
echo Ex.:
echo    ul li:nth-child(odd) {
echo        /* Estilos aplicados a elementos impares da lista nao ordenada */
echo        background-color: lightgray;
echo    }
echo.
echo :first-child - Estilos aplicados ao primeiro filho de um elemento pai.
echo Ex.:
echo    div p:first-child {
echo        /* Estilos aplicados ao primeiro paragrafo dentro de uma div */
echo        font-weight: bold;
echo    }
echo.
echo :last-child - Estilos aplicados ao ultimo filho de um elemento pai.
echo Ex.:
echo    ul li:last-child {
echo        /* Stilos aplicados ao ultimo item da lista nao ordenada */
echo        color: green;
echo    }
echo.
echo Algumas outras pseudo-classes comuns incluem:
echo.
echo :not() - Permite selecionar elementos que nao correspondem a um seletor especifico.
echo Ex.:
echo    p:not(.special) {
echo        /* Estilos aplicados a todos os paragrafos que nao tem a classe 'special' */
echo        text-decoration: underline;
echo    }
echo.
echo :nth-of-type() - Seleciona elementos com base em sua posicao em relacao aos irmaos do mesmo tipo.
echo Ex.:
echo    ul li:nth-of-type(3) {
echo        /* Estilos aplicados ao terceiro item de uma lista nao ordenada */
echo        color: red;
echo    }
echo.
echo :nth-last-child() - Seleciona elementos com base em sua posicao contando de tras para frente.
echo Ex.:
echo    ol li:nth-last-child(2) {
echo        /* Estilos aplicados ao segundo item de uma lista ordenada, contando de tras para frente */
echo        background-color: yellow;
echo    }
echo.
pause
goto menu_css


:menu_js
cls
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Voce esta no menu JS
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: Escolha uma Opcao:
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO :: 0 - Voltar
ECHO :: 1 - JS Nativo
ECHO :: 2 - React
ECHO :: 3 - Angular
ECHO :: 4 - Vue
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::
set /p opcao_js=":: Digite o numero da opcao desejada: "

IF "%opcao_js%"=="0" (
    goto menu_principal
) ELSE IF "%opcao_js%"=="2" (
    goto js_nativo
) ELSE IF "%opcao_js%"=="1" (
    goto js_react
) ELSE IF "%opcao_js%"=="3" (
    goto js_angular
) ELSE IF "%opcao_js%"=="4" (
    goto js_vue
) ELSE (
    ECHO Opcao invalida! Por favor, escolha uma opcao valida.
    pause
    goto menu_js
)