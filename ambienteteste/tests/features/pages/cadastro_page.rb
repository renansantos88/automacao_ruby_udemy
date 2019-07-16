class CadastroPage < SitePrism::Page
    set_url '/users/new'
    
    element :nome, 'input[name="user[name]"]'
    element :ultimo_nome, '#user_lastname'
    element :email, 'input[name="user[email]"]'
    element :endereco, 'input[name="user[address]"]'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'
    element :btn_criar, 'input[value="Criar"]'
    element :mensagem_usuario_criado, 'p[class="light-green accent-2"]'

    def preencher_nome 
        nome.set 'Renan'
    end

    def preencher_ultimo_nome 
        ultimo_nome.set 'Pereira'
    end

    def preencher_outros_campos
        endereco.set 'Rua Papa Joao Paulo I'
        universidade.set 'Faculdades Logatti'
        profissao.set 'Analista de Testes'
        genero.set 'Masculino'
        idade.set '30'

    end

    def clicar_botao_criar
        wait_until_btn_criar_visible
        btn_criar.click
    end
        
end