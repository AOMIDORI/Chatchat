require 'valid_email'

class Supplier < ApplicationRecord
  include ActiveModel::Validations

  validates :name, :username, :email, :address, :phone, presence: true
  validates :name, :username, :email, uniqueness: true
  validates :email, email: true
end
