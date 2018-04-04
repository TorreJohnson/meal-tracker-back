class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_hash
      t.integer :age
      t.integer :weight
      t.float :bmi
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :goal
      t.integer :nutritionist_id

      t.timestamps
    end
  end
end
