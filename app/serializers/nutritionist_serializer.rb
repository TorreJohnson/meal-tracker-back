class NutritionistSerializer < ActiveModel::Serializer
  attributes :id, :name, :company_name, :office_address, :office_latitude, :office_longitude, :accepts_new_patients, :biography, :profile_photo
  has_many :messages
end
