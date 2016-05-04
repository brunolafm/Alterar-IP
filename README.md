# Alterar-IP
Script .bat para alterar o IP do Windows, com definições de IP por local onde é necessário.

###Código

Para que o código funcione, é necessário alterar o nome do usuário citado nos comandos:

`"runas /savecred /user:"`

**Para PT-BR use:**

`runas /savecred /user:Administrador`

**Para EN-US use:**

`runas /savecred /user:Administrator`

###Path

É necessário adicionar a pasta em que o arquivo se encontra ao Path, pode ser adicionado pelo comando:

`SETX PATH "%PATH%;C:\PASTA-DO-ARQUIVO" -m`

###Usuário

É necessário estar com o usuário Administrador ativo e protegido por senha, pode ser feito pelo comando:

**Para PT-BR use:**

`net user Administrador /active:yes` - Ativa o Usuário

`net user Administrador *` - Define a senha

**Para EN-US use:**

`net user Administrator /active:yes` - Ativa o Usuário

`net user Administrator *` - Define a senha
