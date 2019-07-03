class Seller < ApplicationRecord
  belongs_to :profile

  has_many :listings
  has_many :reviews
  has_many :trades
  has_many :buyers, through :trades
end
