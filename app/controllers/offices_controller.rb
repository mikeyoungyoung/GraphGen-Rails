class OfficesController < ApplicationController
    def create
        @partner = Partner.find(params[:partner_id])
        @office = @partner.offices.create(params[:office].permit(:street, :number, :city, :postal_code))
        redirect_to partner_path(@partner)
    end
end
