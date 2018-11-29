Dado("que acessei o site orange hrm") do
  visit 'https://automacao-trials646.orangehrmlive.com'
  @cadastro = Cadastro.new
end

Quando("estiver logado e clicar na opção pim") do
  @cadastro.login.set 'Admin'
  @cadastro.password.set 'D6@ywHu5NC'
  @cadastro.botao_login.click
 	@cadastro.pim.click
end

Entao("devo visualizar a lista de usuarios para cadastrar um novo usuario") do
  @cadastro.botao_add.click
  @cadastro.first_name.set Faker::Name.first_name
  sleep 1
  @cadastro.middle_name.set 'Kellar'
  sleep 1
  @cadastro.last_name.set Faker::Name.last_name
  sleep 1
  @cadastro.location.click
  sleep 2
  select_list.select_by(:value, 'string:1')
  @cadastro.check_box_login.click
  sleep 1
  @cadastro.user_name.set 'Kellar J'
  sleep 1
  @cadastro.user_password.set 'Info*6030'
  sleep 1
  @cadastro.re_password.set 'Info*6030'
  sleep 1
  @cadastro.botao_save.click
  @cadastro.license_number.set Faker::Number.number
  @cadastro.other_id.set Faker::Number.number
  @cadastro.genero.click
  @cadastro.nacionalidade.click
  page.execute_script "window.scrollBy(0,500)"
  @cadastro.botao_save.click
end
