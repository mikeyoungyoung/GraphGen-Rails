class PartnersController < ApplicationController
    def index
        @partners = Partner.all
    end
    
    def new
    end
    
    def create
        @partner = Partner.new(post_params)
        
        @partner.save
        redirect_to @partner
    end
    
    def show
        @partner = Partner.find(params[:id])
    end
    
    private
        def post_params
            params.require(:partner).permit(:name_first, :name_last, :email)
        end
end
