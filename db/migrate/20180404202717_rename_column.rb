class RenameColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :password_hash, :password_digest
    rename_column :nutritionists, :password_hash, :password_digest
  end
end
