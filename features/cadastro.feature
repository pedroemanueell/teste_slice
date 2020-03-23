#language: pt

Funcionalidade: Realizar o cadastro de um novo usuario no site 
    Eu como usuario
    Quero realizar um novo cadastro no site
    Para que eu possa ler as noticias

    @cadastro
    Cenario: Realizar o cadastro de um novo usuario no site
    Dado que eu esteja na home do site
    Quando eu selecionar uma materia
    E clicar no botão assinar
    E realizar um novo cadastro
    Então eu tenho que ver o cadastro finalizado