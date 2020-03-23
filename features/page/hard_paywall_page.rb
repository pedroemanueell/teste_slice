class Hard_paywall_page < SitePrism::Page

    element :ico_login,     '.ico-profile'
    element :ipnut_email,   '#email_login'
    element :input_senha,   '#senha'
    element :button_entrar, '#btn-login'

    def acessando_conta 
        ico_login.click
        ipnut_email.set     'virtualsabino@estadao.com.br'
        input_senha.set     '3s7@DA0'
        button_entrar.click
        ico_login.click
    end
end