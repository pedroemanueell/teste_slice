Quando("eu selecionar um escritor") do
  @hard = Hard_paywall_page.new
  @hard.selecinando_escritor
end

Quando("escolher o plano") do
  @hard.mudar_aba
  @hard.esolhendo_plano
end

Quando("realizar o login") do
  @hard.mudar_aba
  @hard.acessando_conta
end

Então("eu tenho que ver que minha assinatura não é valida") do
  expect(page).to have_content('virtualsabino@estadao.com.br')
  puts @validacao
  
end