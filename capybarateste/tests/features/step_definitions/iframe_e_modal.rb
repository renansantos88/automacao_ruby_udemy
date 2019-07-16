Quando("entro no iframe e preencho os campos") do
    visit ('/mudancadefoco/iframe')
    #mudando o foco para o iframe
    within_frame('id_do_iframe')do
    #açoes dentro do iframe
    fill_in(id: 'first_name', with: 'Renan')
    fill_in(id: 'last_name', with: 'Pereira')
    
end

  end
  
  Quando("entro no modal e verifico os campos") do
    visit ('/mudancadefoco/modal')
    find('a[class="waves-light btn modal-trigger"]').click
    #mudando o foco para a modal
    within('#modal1')do
        texto = find('h4')
        expect(texto.text).to eql 'Modal Teste'
    end
  end
  
  Quando("fecho a modal") do
    find('.modal-close').click
  end