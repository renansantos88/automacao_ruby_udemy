Dado("que eu tenho umas laranjas") do |table|
    @laranja = table.rows_hash['laranja'].to_i
    # @pera = table.rows_hash['pera'].to_i ## caso tivesse outra linha
  end
  
  Quando("eu corto {int}") do |valor1|
    @cortar = valor1
    @total = @laranja - @cortar
  end
  
  Entao("eu verifico quantas laranjas sobraram inteiras") do
    expect(@total).to eql 8
  end
  
  Dado("que tenho umas laranjas") do |table|
    table.hashes.each do |valor|
        @laranjas = valor['laranjas'].to_i
    end 
    puts @laranjas
  end
  
  Quando("eu chupo {int}") do |valor2|
    @chupar = valor2
    @resultado = @laranjas - @chupar
  end
  
  Entao("eu verifico quantas laranjas sobraram") do
    expect(@resultado).to eql 8
  end