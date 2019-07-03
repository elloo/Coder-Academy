class Buyer < ApplicationRecord
  belongs_to :profile

  has_many :reviews
  has_many :trades
  has_many :sellers, through :trades
end
