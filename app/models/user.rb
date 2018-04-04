class User < ApplicationRecord
  belongs_to :nutritionist
  has_many :messages

  has_secure_password
end
