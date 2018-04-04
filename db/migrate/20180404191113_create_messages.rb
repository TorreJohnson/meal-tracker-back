class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :nutritionist_id
      t.integer :parent_message
      t.string :subject
      t.string :body
      t.string :sender_type
      t.integer :sender_id

      t.timestamps
    end
  end
end
