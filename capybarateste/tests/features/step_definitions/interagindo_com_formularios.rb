Quando("eu faco cadastro") do
  visit('/users/new')
  fill_in(id: 'user_name', with: 'Renan')
  find('#user_lastname').set('Pereira')
  find('#user_email').send_keys('renans.pereira88@gmail.com')
  fill_in(id: 'user_address', with: 'Rua Papa Joao Paulo I')
  find('#user_university').set('UNIARA')
  find('#user_profile').send_keys('Tester')
  fill_in(id: 'user_gender', with: 'Masculino')
  find('#user_age').set('30')
  find('input[value="Criar"]').click()
  #find('input[name="commit"]').click()
end

Entao("verifico se fui cadastrado") do
  texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'

end