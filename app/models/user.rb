class User < ApplicationRecord
    validates :name, presence: true
    validates :graduation_year, presence: true
    validates :company_name, presence: true
end
