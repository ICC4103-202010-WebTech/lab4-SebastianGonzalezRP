class Customer < ApplicationRecord
  has_many :orders
  has_many :tickets, through: :orders
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :name , presence: true
  validates :lastname, presence:true
end
