#language: pt

Funcionalidade: Realizar o login no site como ex-assinate
    Eu como usuario
    Quero realizar o login no site como ex-assinante
    Para que eu possa ver as novas opções de assinatura

    @hard
    Cenario: Realizar o login no site como ex-assinate
    Dado que eu esteja na home do site
    Quando eu selecionar uma materia
    E realizar o login
    Então eu tenho que ver que minha assinatura não é valida