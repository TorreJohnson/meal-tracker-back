class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :age, :weight, :bmi, :address, :latitude, :longitude, :goal, :nutritionist_id
  has_many :messages
  has_many :food_items
end
