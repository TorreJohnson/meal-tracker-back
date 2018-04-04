class User < ApplicationRecord
  belongs_to :nutritionist, required: false
  has_many :messages
  has_many :food_items

  has_secure_password
end
