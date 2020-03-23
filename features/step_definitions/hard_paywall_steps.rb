Quando("realizar o login") do
    @hard = Hard_paywall_page.new
    @hard.acessando_conta
  end
  
Então("eu tenho que ver que minha assinatura não é valida") do
    @hard = expect(page).to have_content 'Você ainda não é assinante.'
    puts @hard
  end