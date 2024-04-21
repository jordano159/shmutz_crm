class Campain < ApplicationRecord
  belongs_to :ken
  has_many :calls
  has_many :kids, through: :calls
  accepts_nested_attributes_for :kids, reject_if: blank?, allow_destroy: false
  accepts_nested_attributes_for :calls, allow_destroy: true
end
