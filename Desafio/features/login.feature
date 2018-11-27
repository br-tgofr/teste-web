#language: pt
#utf-8

Funcionalidade: Login
	Eu como usuario
	Quero tentar logar com minhas credenciais
	Para conseguir acessar meu cadastro

Cenário: Efetuar login com sucesso
	Dado que acesse o site orange hrm
	Quando inserir minhas credenciais
	Entao devo visualizar a pagina inicial do site orange com sucesso
