class Nutritionist < ApplicationRecord
  has_many :users
  has_many :messages

  has_secure_password
end
