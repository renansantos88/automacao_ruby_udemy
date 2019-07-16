class AjaxPage < SitePrism::Page
    set_url '/buscaelementos/botoes'

    element :botao, '#teste'
    element :mensagem, '#div1' 

    def clicar_botao
        #wait_for_botao não funcionou 
        wait_until_botao_visible
        #has_botao não funcionou
        botao.click
    end
   
end