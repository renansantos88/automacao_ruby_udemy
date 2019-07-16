Quando("faco um upload de arquivo") do

    visit('/outros/uploaddearquivos')

    #attach_file('upload', '/home/renan/cursos/automacao_ruby_udemy/capybarateste/tests/features/imagem.png', make_visible: true)
    @foto = File.join(Dir.pwd, '/features/imagem.png')

    attach_file('upload', @foto, make_visible: true)
end