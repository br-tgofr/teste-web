#language: pt
#utf-8

Funcionalidade: Login
	Eu como usuario
	Quero tentar logar com minhas credenciais
	Para conseguir cadastrar um usuario com sucesso


Cenário: Cadastrar um usuario
	Dado que acessei o site orange hrm
	Quando estiver logado e clicar na opção pim
	Entao devo visualizar a lista de usuarios para cadastrar um novo usuario
