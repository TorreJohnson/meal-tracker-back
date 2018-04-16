class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :age, :weight, :bmi, :address, :latitude, :longitude, :goal, :nutritionist_id, :profile_photo, :height, :birthday, :rec_beta_carotene, :rec_caffeine, :rec_calcium, :rec_carbohydrate, :rec_cholesterol, :rec_calories, :rec_fat, :rec_fiber, :rec_folic_acid, :rec_iron, :rec_niacin, :rec_potassium, :rec_protein, :rec_riboflavin, :rec_sodium, :rec_sugars, :rec_thiamin, :rec_vitamin_a, :rec_vitamin_b12, :rec_vitamin_c, :rec_vitamin_d, :rec_vitamin_e, :rec_vitamin_k, :rec_zinc
  has_many :messages
  has_many :food_items
end
