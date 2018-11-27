class Login < SitePrism::Page
	element :login, :id, 'txtUsername'
	element :password, :id, 'txtPassword'
	element :botao_login, :id, 'btnLogin'
end
