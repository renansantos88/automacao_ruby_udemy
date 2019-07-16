Quando("seleciono o mouse hover") do
   visit('/iteracoes/mousehover')
   find('.activator').hover
   #para fazer o mesmo que o de cima, mas clicando
    #find('.activator').hover.click 
end