# classe inicia com letra maiuscula
# uma classe é composta por metodos, atributos e construtores

class ClassName

    #mesma coisa que o get e seter do java
    attr_accessor :nome
    #só permite ler
    #attr_reader :nomeone

    #só permite escrever
    #attr_writer :nomedois
    
    #def nome
    #    @nome
    #end

    #def nome=(nome)
    #    @nome = :nome
    #end
    def metodo
    # corpo do metodo
    puts 'corpo do metodo'
    end

    def metodo_composto
        # corpo do metodo composto
        puts 'corpo do metodo metodo_composto'
    end

end


class Heranca < ClassName

end

objeto = ClassName.new
objeto.nome = 'renan' 
puts objeto.nome
objeto.metodo
objeto.metodo_composto    

#rescue => exception
#


objeto_heranca = Heranca.new

objeto_heranca.metodo_composto
#end

