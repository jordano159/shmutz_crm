class Kid < ApplicationRecord
    has_many :sign_ups
    has_many :campains, through: :sign_ups
    enum :status, [ :fresh, :call_back, :not_interested, :false_info ]
end
