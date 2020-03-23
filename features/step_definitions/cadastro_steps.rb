Quando("clicar no botão assinar") do
    @cadastro = Cadastro_page.new
    @cadastro.selecionando_assine
    @cadastro.mudar_aba
    
  end
Quando("realizar um novo cadastro") do 
    @cadastro.assine_agora
    @cadastro.cadastrando_usuario
  end
Então("eu tenho que ver o cadastro finalizado") do
    @compras = expect(find('div[class="title-section edit"]').text).to  have_content 'IDENTIFICAÇÃO'
    puts @compras
  end