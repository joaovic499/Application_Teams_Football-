class WelcomeController < ApplicationController  
  def index
    @meu_nome = params[:nome]
    @linguagem = "Ruby On Rails"
    end
end
