class Kid < ApplicationRecord
    has_many :sign_ups
    has_many :campains, through: :sign_ups
    enum :status, [ :fresh, :call_back, :not_interested, :false_info ]
    validates :name, presence: true
    validates :phone, presence: true, length: { minimum: 9 }, numericality: true
end
