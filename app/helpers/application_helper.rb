module ApplicationHelper
    def date_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def locale
        I18n.locale == :en ? "Inglês Americano" : "Portugues Brasil"
    end

    def ambiente_rails
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Produção"
        else
            "Teste"
        end
    end
end
