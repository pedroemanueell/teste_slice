class Compras_page < SitePrism::Page
    
    element :img_materia,          "img[alt='Rob Carr/Getty Images']"
    element :icn_login,            '.ico-profile'
    element :ass_agora, :xpath,    '//*[@id="form-login"]/div[10]/div[2]/div/a'
    element :section_assine_agora, "section[id='itsw3xuHbOYk5Z8V']"
        
    def selecionando_materia
        img_materia.click 
    end

    def selecionando_assine
        icn_login.click
        ass_agora.click
    end

    def assine_agora
        section_assine_agora.click
    end

    def mudar_aba
        sleep 1.5
        page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
    end
end

#//*[@id="form-login"]/div[10]/div[2]/div/a