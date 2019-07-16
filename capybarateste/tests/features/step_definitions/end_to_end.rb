Quando("eu cadastro o usuario") do
    visit('/users/new')
    fill_in(name: 'user[name]', with: 'Renam')
    fill_in(name: 'user[lastname]', with: 'Pereira') 
    fill_in(name: 'user[email]', with: 'rs.pereira88@gmail.com') 
    find('input[value="Criar"]').click

  end
  
  Entao("verifico se o usuario foi cadastrado") do
    @texto = find('#notice')
    expect(@texto.text).to eql 'Usuário Criado com sucesso'
  end
  
  Quando("edito o usuario") do
    find('.btn.waves-light.blue').click
    fill_in(name: 'user[name]', with: 'Renan')
    fill_in(name: 'user[lastname]', with: 'Santos') 
    fill_in(name: 'user[email]', with: 'renans.pereira88@gmail.com') 
    find('input[value="Criar"]').click
  end
  
  Entao("verifico se o usuario foi editado") do
    #sleep(5)
  end