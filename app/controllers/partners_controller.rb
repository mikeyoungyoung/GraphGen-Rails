class PartnersController < ApplicationController
    def new
    end
    
    def create
        render text: params[:partner].inspect
    end
end
