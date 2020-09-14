
# QA Engineer Challenge!
<h1 align="center"> Desafio QA </h1>

# O que é o Desafio :

O teste será dividido em 2 partes:

Casos de teste + Reporte de Bugs e Melhorias + Automação de uma Feature Web
Casos de teste + Reporte de Bugs e Melhorias + Automação de uma API
Caso de Teste: Utilize o formato/ferramenta que desejar para criar os casos de teste. Mas coloque em um arquivo no repositório do projeto no github. Dependendo do framework de automação que irá usar, pode ser usando o mesmo arquivo por exemplo.

Reporte de Bugs e Melhorias:

Quaisquer bugs e/ou melhorias que você encontrar você deve criar tickets, criando um arquivo explicando o bug dentro do projeto lá no git com o nome de bugs.txt por exemplo. Você pode colocar possíveis anexos junto em qualquer formato que possam adicionar a seu report. Deixe os bugs e seus anexos dentro de uma pasta chamada bugs. Não se esquecendo que um ticket normalmente tem mais do que um campo de descrição, imagine que um desenvolvedor e/ou P.O. de sua equipe irá ler e entender o que está lá sem maiores explicações.

Automações: Você estará livre para usar qualquer ferramenta/framework que quiser para automatizar seus testes de API e WEB. Desde que seja possível executar os testes com apenas com as instruções que você deixará no README.MD do projeto.

O Projeto deve ter uma documentação readme.md explicando tudo que será necessário fazer para instalar as dependencias do projeto e como rodá-lo, preferencialmente em inglês (apenas o readme.md), mas se quiser escrever em português, fique à vontade. Não se esqueça de seprar os bugs/melhorias e seus anexos na pasta bugs .

# 1. Indenfificação dos bugs/melhorias :

Informo que no Diretório /Identifycriticalflows/ contém o arquivo :
Informando os fluxos criticos e um bug encontrado em meus testes.

# Densenvolvimento do Teste : 

Foi efetuado com Robot Framework, Por que : 

O Teste foi efetuado utilizando o Robot Framework para o UI Web e a API, que é uma estrutura de automação de código aberto genérica para desenvolvimento orientado a testes de aceitação (ATDD).

Em Seus recursos de teste é tem uma grande vantagem é a possibilidade de criar novas bibliotecas em python, que é uma linguagem muito prática e poderosa, os usuários podem criar novas palavras-chave de nível mais alto a partir de palavras-chave existentes usando a mesma sintaxe usada para criar casos de teste.

Ele é open source, então se você criar uma biblioteca que acredita que poderá ajudar outras pessoas, pode publicá-la e ajudar a comunidade do RF crescer ainda mais. 

O projeto do Robot Framework está hospedado no GitHub, onde você pode encontrar mais documentação, código-fonte e rastreador de problemas. Downloads são hospedados no PypI.

O Robot Framework propõe automação genérica de testes, ou seja, você pode automatizar sites, webapps, APIs, desktop, mobile, etc, tudo em um único framework. Ele não exige conhecimento específico em linguagem de programação, pois o objetivo dele é tornar os testes mais reaproveitáveis e fáceis com a abordagem keyword-driven, onde qualquer tester/QA pode ser automatizado mesmo sem técnicas complexas.

# Requesitos : 

Visual Studio Code - VSCode

Python 3.x

Robot Framework 
    - Selenium Library

Google Chrome 

ChromeDriver 85.0.4183 - Driver para o navegador ChromeDriver, está versão pode variar de acordo com a versão do Chrome utilizado.
    - Também pode ser utilizado o Firefox e o FirefoxDriver, mas neste projeto foi utilizado somente o Chrome.

# Como instalar : 

> Instalar o Visual Studio
```
https://code.visualstudio.com/
```

> Para Instalar o driver do Chrome ou Firefox
ChromeDriver https://chromedriver.chromium.org/
GeckoDriver https://github.com/mozilla/geckodriver

No SO, Windows tem que fazer o download do arquivo e extrair na pasta C:/windows 
No SO, Mac e ou Linux tem que fazer o download do arquivo e dentro da pasta USR/LOCAL/BIN

> Instalando o Python e pip [Pré-Requisitos]

- Baixe o Python 3.x (última versão que estiver disponível hoje, no meu caso, quando fiz esse post era 3.7.4) 
```
[https://www.python.org/downloads/]
```

- Para conferir se deu certo, no prompt de comando (cmd) execute:
```
python --version
pip --version
```
> Para Instalar o Robot Framework

- No prompt de comando (cmd) execute:
```
pip install -U robotframework
```

E pronto!! Para saber se deu tudo certo no prompt de comando (cmd) execute:
```
robot --version
```
> Por ultimo instalar o Selenium Library para o Robot Framework 
https://github.com/robotframework/SeleniumLibrary/

Execute : 
```
pip install --upgrade robotframework-seleniumlibrary
```

# 2. Teste Web Instruções de execução

Use os comandos listados abaixo no CMD diretamente na pasta do projeto. <br />
Pelo VSCode localize a pasta do projeto, acesse o terminal e execute os comandos listados abaixo. 

Scripts de Teste Web estão na pasta WebUIautomationtest/tests/

![QA - Estrategia Educacional - Log Web Teste Cmder](https://github.com/wagnerfcruz/QAChallengeEstrategia/blob/master/WebUIautomationtest/logs/buscagif.gif)


![QA - Estrategia Educacional - Demostração teste Web](https://github.com/wagnerfcruz/QAChallengeEstrategia/master/WebUIautomationtest/logs/cmder_gif.gif)



Para gravar o outpot em uma pasta diferente da raiz é necessário utilizar : 
```
robot -d ./logs buscacurso.robot
robot -d ./logs cadastro.robot
robot -d ./logs login.robot
```
Cadastro e login são complementares.

 # 3.  Teste de API Instruções

Diretório : QAChallengeEstrategia/APIautomationtest/

Os casos de teste de API todos serão feitos propriamente para serem automatizados, cobrindo o máximo de cenários que conseguir na automação.

A API tem dois tipos de rotas:

Auth: Criação de usuário e autenticação
Projects: CRUD de projetos com tarefas
O usuário que cria a projeto é vinculado ao projeto criado. Todo projeto pode ser criado com um objeto de uma ou mais tarefas (tasks), que são diretamente vinculados ao projeto.

Para adicionar e deletar os objetos "tasks" pode ser feito pelo PUT /projects/:projectID Todos os endpoints precisam de um Bearer Token que são gerados pelo Login e Register para que seja autorizado o acesso a api.

Endereço da API: http://54.207.100.192/


![QA - Estrategia Educacional - Log API Teste Cmder](https://github.com/wagnerfcruz/QAChallengeEstrategia/blob/master/APIautomationtest/cmder_api.gif)

![QA - Log - API Teste Cmder](https://github.com/wagnerfcruz/QAChallengeEstrategiablob/blob/master/APIautomationtest/log_api.gif)

![QA - Report - API Teste Cmder](https://github.com/wagnerfcruz/QAChallengeEstrategia/blob/master/APIautomationtest/report_api.gif)


> A library Requests
Para automatizar os  testes de API, será necessário instalar e instanciar a library Requests:

```
pip install -U robotframework-requests
```

#  Instruções de execução do Teste de API

```
robot  auth.robot
robot  project.robot

Foi criado já diversas validações dentro do mesmo script

Foram feito testes basico e validações basica.

```

Para copiar o projeto : 
```
git clone https:https://github.com/wagnerfcruz/QAChallengeEstrategia

```
# Obervações Gerais

Eu uso no meu dia a dia o Framework codeceptJS (JavaScrit) para automatizar o Mobile " Android e iOS " e gostaria de poder ter efetuado testes mobile também na POC aqui apresentada, porém não tive tempo devido as demandas do meu trabalho e até pelo tempo que tive disponivel optei pelo Robot para entregar testes básicos mas atendendo as validações solicitadas. 
Também utilizo BDD (Gherkin) no dia a dia que pelo tempo não consegui implementar no projeto, segui com os testes básicos e funcional. 

# Autor : 
Wagner Cruz 
