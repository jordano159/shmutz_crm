class Kid < ApplicationRecord
    has_many :sign_ups
    has_many :campains, through: :sign_ups
end
