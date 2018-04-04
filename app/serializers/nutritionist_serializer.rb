class NutritionistSerializer < ActiveModel::Serializer
  attributes :id, :name, :office_address, :office_latitude, :office_longitude, :accepting_new_patients, :biography
  has_many :messages
end
