Before do 
    puts 'estou sendo executado antes de cada cenario'
 @soma = 5 + 5

end


After do 
    puts 'estou sendo executado depois de cada cenario'
 @soma = 5 + 5

end

Before '@inicio' do 
    puts 'rodei apenas no começo'
end

After '@final' do 
    puts 'rodei apenas no final'
end
