require 'valid_email'

class User < ApplicationRecord
  include ActiveModel::Validations

  enum role: [:customer, :supplier]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :customer
  end


  #  has_many :posts, dependent: :destroy

	before_save { self.email = email.downcase }
	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true, length: { maximum: 255 },
                    	email: true,
                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: {minimum: 4}

  has_many :posts

  #return the hash digest of the given string
  def User.digest(string)
  	cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
  												  BCrypt::Engine.cost
  	BCrypt::password.create(string, cost: cost)
  end
end
