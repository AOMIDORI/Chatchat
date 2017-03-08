class Service < ApplicationRecord
  belongs_to :supplier
  has_many :reviews

  enum service_type: [ :cleaning, :repairing, :sitting, :moving ]

  validates :name, :price, presence: true
end
