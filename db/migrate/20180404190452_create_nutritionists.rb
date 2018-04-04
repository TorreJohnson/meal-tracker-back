class CreateNutritionists < ActiveRecord::Migration[5.1]
  def change
    create_table :nutritionists do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.string :office_address
      t.float :office_latitude
      t.float :office_longitude
      t.boolean :accepts_new_patients
      t.string :biography

      t.timestamps
    end
  end
end
