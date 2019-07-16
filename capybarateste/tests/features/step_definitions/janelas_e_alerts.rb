Quando("eu entro na janela e verifico  a mensagem") do
    visit('/mudancadefoco/janela')

    #janela recebe uma janela que foi aberto pelo link
    janela = window_opened_by do 
        click_link 'Clique aqui'
    end

    #muda de foco para a janela
    within_window janela do
        expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text')
        expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'

        janela.close
    end
###################################
    #segunda opção
    windows.last
    click_link 'Clique aqui'
    #mudando para a ultima aba
    switch_to_window windows.last
    expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text')
        expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'
        windows.last.close
  end
  
  Quando("eu entro no alert e verifico") do
    visit('/mudancadefoco/alert')
    find('button[onclick="jsAlert()"]').click
    page.accept_alert

    find('button[onclick="jsConfirm()"]').click
    #para cancelar
    page.dismiss_confirm

    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'Renan Santos')
    #para cancelar
    #page.dismiss_prompt
  end
  
