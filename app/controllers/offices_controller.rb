class OfficesController < ApplicationController
    #authentification
    http_basic_authenticate_with name: "mw2young", password: "Welcome1", only: :destroy
    
    def index
        #@partner = Partner.find(params[:id])
        @offices = Office.all
    end
    
    def create
        @partner = Partner.find(params[:partner_id])
        @office = @partner.offices.create(params[:office].permit(:street, :number, :city, :postal_code))
        redirect_to partner_path(@partner)
    end
    
    def show
        @partner = Partner.find(params[:id])
    end
    
    #remove the office
    def destroy
        @partner = Partner.find(params[:partner_id])
        @office = @partner.offices.find(params[:id])
        @office.destroy
        redirect_to partner_path(@partner)
    end
end
