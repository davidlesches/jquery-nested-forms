class User < ActiveRecord::Base

  has_secure_password
  has_many :portfolios

  attr_accessible :username, :email, :password, :password_confirmation

  validates_uniqueness_of :email, case_sensitive: false
  validates_presence_of :email
  validates :password, presence: { on: :create }

end
