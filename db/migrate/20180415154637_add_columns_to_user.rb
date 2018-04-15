class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :profile_photo, :string
    add_column :users, :height, :integer
    add_column :users, :birthday, :date
  end
end
