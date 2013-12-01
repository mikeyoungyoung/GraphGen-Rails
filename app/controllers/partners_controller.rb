class PartnersController < ApplicationController
    #authorization
    http_basic_authenticate_with name: "mw2young", password: "Welcome1", except: [:index, :show]
    
    def index
        @partners = Partner.all
    end
    
    def new
        @partner = Partner.new
    end
    
    def create
        @partner = Partner.new(post_params)
        
        if @partner.save
            redirect_to @partner
        else
            render 'new'
        end
    end
    
    def show
        @partner = Partner.find(params[:id])
    end
    
    def edit
        @partner = Partner.find(params[:id])
    end
    
    def update
        @partner = Partner.find(params[:id])
        
        if @partner.update(params[:partner].permit(:name_first, :name_last, :email))
            redirect_to @partner
        else
            render 'edit'
        end
    end
    
    def destroy
        @partner = Partner.find(params[:id])
        @partner.destroy
        
        redirect_to partners_path
    end
    
    private
        def post_params
            params.require(:partner).permit(:name_first, :name_last, :email)
        end
end
