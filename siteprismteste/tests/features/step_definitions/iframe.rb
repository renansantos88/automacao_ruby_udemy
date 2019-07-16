Quando("eu preencho os campos") do
    @pagina_iframe = PaginaPadrao.new
    @pagina_iframe.load

    @pagina_iframe.preencher_campo do |iframe|
        iframe.nome.set 'Renan'
        iframe.ultimo_nome.set 'Pereira'
    
    end

  end