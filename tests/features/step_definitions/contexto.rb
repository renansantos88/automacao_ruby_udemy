Dado("que eu tenho {int} laranjas na bolsa") do |valor|
    @laranjas = valor
  end
  
  Quando("eu coloco {int} laranjas na bolsa") do |valor2|
    @colocar = valor2
    @resultado  = @laranjas + @colocar 
  end
  
  Entao("eu verifico se o total de laranjas e {int}") do |total|
    expect(@resultado).to eql total
  end
  
  Quando("eu retiro {int} laranjas da bolsa") do |valor3|
    @retirar = valor3
    @resultado  = @laranjas - @retirar 
  end
  
  Entao("eu verifico quantas laranjas ficaram na bolsa") do
    expect(@resultado).to eql 8
  end