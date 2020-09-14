*** Settings ***
Library     RequestsLibrary
Library     Collections

*** Variables ***
${HOST}         http://54.207.100.192
${name}			Wagner F Cruz
${email}		wagner.ferreira@live.com
${pass}			wag123456

*** Test Cases ***
Criação do usuário de usuário novo
	Create Session		new_user		${HOST}
	${headers}=		Create Dictionary		Content-Type=application/json		charset=utf-8
	${body}=		Create Dictionary		name=${name}		email=${email}		password=${pass}

	${response}=		Post Request		new_user		/auth/register		data=${body}	headers=${headers}

	Status Should Be					200			${response}
	Request Should Be Successfuls					${response}

Login do usuário de usuário novo

	Create Session		login_user		${HOST}
	${headers}=		Create Dictionary		Content-Type=application/json		charset=utf-8
	${body}=		Create Dictionary		email=${email}		password=${pass}

	${resp_login}=		Post Request		login_user		/auth/authenticate		data=${body}	headers=${headers}

	Status Should Be					200			${resp_login}
	Request Should Be Successful					${resp_login}