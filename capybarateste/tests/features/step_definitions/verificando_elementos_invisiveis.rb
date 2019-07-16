Entao("verifico se o texto desapareceu na tela com sucesso") do
     #@texto = find('#div1')
    #expect(@texto.text).to eql 'Você Clicou no Botão!'
    
    #diferentes modos de verificar a mensagem na tela
    page.assert_text(text, 'Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')

    find('#teste').click

    assert_no_text('Você Clicou no Botão!')
    has_no_text?('Você Clicou no Botão!')
  end