Dado("que acesse o site orange hrm") do
  visit 'http://opensource.demo.orangehrmlive.com/%20'
  @login = Login.new
  assert_text('LOGIN Panel')
end

Quando("inserir minhas credenciais") do
  @login.login.set 'Admin'
  @login.password.set 'admin'
  @login.botao_login.click
end

Entao("devo visualizar a pagina inicial do site orange com sucesso") do
  assert_text('Welcome Admin')
end
