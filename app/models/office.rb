class Office < ActiveRecord::Base
    belongs_to :partner
    #validations
    #validates :number, presence: true
    validates :city, presence: true
    #validates :street, presence: true
    #validates :postal_code, presence true
end
