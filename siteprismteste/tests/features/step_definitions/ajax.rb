Quando("clico no botao") do
    @btnajax = AjaxPage.new
    @btnajax.load

    @btnajax.clicar_botao
  end
  
  Entao("verifico se apareceu") do
    @btnajax.wait_until_mensagem_visible
    expect(@btnajax.mensagem.text).to eql 'Você Clicou no Botão!'
  end
  