Dado("que eu tenho um usuario") do
    cadastro.load   
    cadastro.preencher_nome
    cadastro.preencher_ultimo_nome
    cadastro.email.set 'renans.pereira88@gmail.com' 
    cadastro.preencher_outros_campos
  end
  
  Quando("eu realizo o Cadastro") do
   
    cadastro.clicar_botao_criar
  end
  
  Entao("eu confirmo que o cadastro foi realizado") do
    expect(cadastro.mensagem_usuario_criado.text).to eql 'Usuário Criado com sucesso'
  end
  