class Cadastro_page < SitePrism::Page

    element :icn_login,            '.ico-profile'
    element :ass_agora, :xpath,    '//*[@id="form-login"]/div[10]/div[2]/div/a'
    element :section_assine_agora, "section[id='itsw3xuHbOYk5Z8V']"
    element :cadastro, :xpath,     "/html/body/div[1]/div[1]/section[2]/div[2]/div/div[1]/div[2]"
    element :input_nome,           '#firstname'
    element :input_sobrenome,      '#lastname'
    element :input_email,          '#email'
    element :input_senha,          '#password'
    element :button_cadastrar,     '#go-entrega' 


    def selecionando_assine
        icn_login.click
        ass_agora.click
    end

    def assine_agora
        section_assine_agora.click
    end

    def cadastrando_usuario
        cadastro.click
        input_nome.set          "Pedro"
        input_sobrenome.set     "Lima"
        input_email.set         "teste.automacao.pedro@gmail.com"
        input_senha.set         "ABCdef123@#"
        button_cadastrar.click
    end

    def mudar_aba
        sleep 1.5
        page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
    end

end