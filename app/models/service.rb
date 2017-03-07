class Service < ApplicationRecord
  belongs_to :supplier

  enum service_type: [ :cleaning, :repairing, :sitting, :moving ]

  validates :name, :price, presence: true
end
