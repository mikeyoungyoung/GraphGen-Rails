class Partner < ActiveRecord::Base
    validates :name_first, presence: true
    validates :name_last, presence: true
    validates :email, presence: true
end
