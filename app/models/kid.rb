class Kid < ApplicationRecord
    has_many :calls
    has_many :campains, through: :calls
end
