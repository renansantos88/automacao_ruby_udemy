#language: pt

Funcionalidade: Trabalhar com contexto

Contexto: 
Dado que eu tenho 10 laranjas na bolsa


Cenario: Colocar uma quantidade de laranjas
Quando eu coloco 2 laranjas na bolsa
Entao eu verifico se o total de laranjas e 12

@inicio
Cenario: Retirar uma quantidade de laranjas
Quando eu retiro 2 laranjas da bolsa
Entao eu verifico quantas laranjas ficaram na bolsa