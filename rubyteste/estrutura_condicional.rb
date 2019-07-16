puts 'digite um número 1 ou 2'
v1 = gets.to_i
=begin
if v1 == 1
    puts 'Valor igual a um'
elsif v1 == 2   
    puts 'Valor igual a dois'
else
    puts 'Valor diferente de um e dois'
end


unless v1 == 2
    puts 'condição falsa'
else 
    puts 'condição verdadeira'
end

=end

case v1 
when 1 
    puts 'você digitou 1'
when 2
    puts 'você digitou 2'
else 
    puts 'opção inválida'
end