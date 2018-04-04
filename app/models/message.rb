class Message < ApplicationRecord
  belongs_to :users
  belongs_to :nutritionists
end
