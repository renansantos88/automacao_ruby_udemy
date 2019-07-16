Quando("preencho o formulario") do
    home.load
    home.preencher

    ##não usando o page_helper
    #@mapeando = MapeandoElementoPage.new
    #@mapeando.load
    #assim
    #@mapeando.preencher
    #ou assim
    #@mapeando.nome.set 'Renan'
  end