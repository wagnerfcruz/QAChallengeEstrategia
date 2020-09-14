*** Settings ***
Library     RequestsLibrary
Library     Collections

*** Variables ***
${HOST}				http://54.207.100.192
${name}				Wagner F Cruz
${assignedTo}		5f5fd2048168f64241fce3e4
${title}			QA Project API Wagner
${description}		Teste de API do Wagner



*** Test Cases ***
Criação de novo projeto
	Create Session		new_project		${HOST}
	${headers}=		Create Dictionary		Content-Type=application/json		charset=utf-8
	${body}=		Create Dictionary		name=${name}		assignedTo=${assignedTo}		title=${title}		description=${description}

	${response}=		Post Request		new_project		/projects	data=${body}	headers=${headers}

	Status Should Be					200			${response}
	Request Should Be Successful					${response}

Validação de novo projeto
	Create Session		new_project		${HOST}

	${RESPOSTA}=		get request  new_project		/projects        
    Log		Resposta: ${RESPOSTA.text}
    Set Test Variable		${RESPOSTA}

    Should Be Equal As Strings   ${RESPOSTA.status_code}  ${STATUS_ESPERADO}
    Log             Status Code Retornado: ${RESPOSTA.status_code} -- Status Code Esperado: ${STATUS_ESPERADO}