*** Variables ***
${HEADERS}    Accept=application/json    Content-Type=application/json    charset=utf-8


*** Test Cases ***
Teste - headers
	${headers}=    Create Dictionary    Accept=application/json    Content-Type=application/json    charset=utf-8    