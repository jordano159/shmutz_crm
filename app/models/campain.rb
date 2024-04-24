class Campain < ApplicationRecord
  belongs_to :ken
  has_many :sign_ups
  has_many :kids, through: :sign_ups
  accepts_nested_attributes_for :kids, reject_if: blank?, allow_destroy: false
  accepts_nested_attributes_for :sign_ups, allow_destroy: true
  validates :name, presence: true
end
