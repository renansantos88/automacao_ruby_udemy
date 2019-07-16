Quando("acesso a url de botoes") do
    visit ('/buscaelementos/botoes')
end

Entao("verifico se encontrei os elementos") do
  #all todos os elementos que contenham all 
  page.all(:css,'.btn')
  # busca um elemento mapeado
  find('#teste')
  #busca pelo id
  find_by_id('teste')
  #busca por um botão
  find_button(class: 'btn waves-light')
  #busca o primeiro elemento que contenha o elemento mapeado
  first('.btn')
  #busca por um link
  find_link(href: 'https://www.udemy.com/automacao-de-testes-com-capybara-cucumber-e-ruby/')
end