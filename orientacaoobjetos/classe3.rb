=begin
    
rescue => exception
    
end
module ModuloNome
    # serve para agrupar classes, constantes e metodos
    # é parecido com classe, mas não pode ser instanciado e herdado

    def metodo_padrao
        puts 'eu sou um módulo'
    end
end



    class ClassName
        include ModuloNome
    end

    objeto = ClassName.new

    objeto.metodo_padrao
=end

class Cachorro
    
    def latir
        puts 'au au au'
    end

end

class CachorroGrande
    def latir
        puts 'AU AU'
    end

end

class Pessoa
    def agarrar_cachorro(cachorro)
        cachorro.latir
    end
end


c1 = Cachorro.new
c2 = CachorroGrande.new 

p = Pessoa.new
p.agarrar_cachorro(c1)
p.agarrar_cachorro(c2)