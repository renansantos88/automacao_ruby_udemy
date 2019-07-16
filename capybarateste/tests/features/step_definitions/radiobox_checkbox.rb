Quando("eu marco um checkbox e radiobox") do
    visit('/buscaelementos/radioecheckbox')
    find('label[for="red"]').click

    find('label[for="white"]').click
    check('purple', allow_label_click: true)
    uncheck('purple', allow_label_click: true)
    choose('blue', allow_label_click: true)
    sleep(3)
  end
  