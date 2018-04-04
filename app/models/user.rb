class User < ApplicationRecord
  belongs_to :nutritionist
  has_many :messages
end
