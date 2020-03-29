class Hard_paywall_page < SitePrism::Page

    element :selector_iframe, :xpath, '//*[@id="paywall-iframe-estadao"]'
    element :sou_assinante,           '.icon-arrow-left-round'
    element :div_container,           '.container'
    element :div_ofertas,             '.lista-ofertas'
    element :section_item,            '.item', match: :first
    element :btn_assine,              '.btn-assine a'
    element :div_container_checkout,  '.container', match: :first
    element :div_inner_checkout,      '.inner-checkout'
    element :div_login,               '.login'
    element :ipnut_email,             '#email_login'
    element :input_senha,             '#password_login'
    element :button_entrar,           '#make_login'


    def mudar_aba
        sleep 1.5
        page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
    end

    def selecinando_escritor
        page.execute_script "window.scrollBy(0,3000)"
            click_link('Luis Fernando Verissimo')
    end
    
    def esolhendo_plano
        within_frame(selector_iframe)do
            within(div_container)do
                within(div_ofertas)do
                    within(section_item)do
                        btn_assine.click
                    end
                end           
            end    
        end
    end

    def acessando_conta 
        within(div_container_checkout)do
            within(div_inner_checkout)do
                within(div_login)do   
                    ipnut_email.set "virtualsabino@estadao.com.br"
                    input_senha.set "3s7@DA0"
                    button_entrar.click
                end
            end
        end
    end
end
