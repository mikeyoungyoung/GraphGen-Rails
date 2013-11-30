class Partner < ActiveRecord::Base
    has_many :offices, dependent: :destroy
    #form validations
    validates :name_first, presence: true
    validates :name_last, presence: true
    validates :email, presence: true
end
