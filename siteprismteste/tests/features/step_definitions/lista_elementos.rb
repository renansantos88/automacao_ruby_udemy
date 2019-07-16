Quando("mapeio uma tabela") do
    lista = MapeandoListas.new
    lista.load

    puts lista.lista.size
    #puts @lista.lista[0].text
    expect(lista.lista.size).to eql 24
    lista.lista.each do |listas|
        puts listas.text
    

    # Sem o page_helper
    # @lista_de_elementos = MapeandoListas.new
    # @lista_de_elementos.load

    # puts @lista_de_elementos.lista.size
    # #puts @lista_de_elementos.lista[0].text
    # expect(@lista_de_elementos.lista.size).to eql 24
    # @lista_de_elementos.lista.each do |listas|
    #     puts listas.text
    end

  end