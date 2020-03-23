
Dado("que eu esteja na home do site") do
  @home = Home_page.new
  @home.load
  #binding.pry
  
end

Quando("eu selecionar uma materia") do
  @compras = Compras_page.new
  @compras.selecionando_materia
end

Quando("clicar no botão assine") do
  @compras.selecionando_assine
  @compras.mudar_aba
end

Quando("escolher uma opção de assinatura") do
  @compras.assine_agora
end

Então("eu tenho que ver a assinatura escolhida") do
    @compras = expect(find('div[class="title-section edit"]').text).to  have_content 'ASSINATURA ESCOLHIDA'
    puts @compras
end