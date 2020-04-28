class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :comic_id
      t.integer :recommend, null: false
      t.text :text
      t.timestamps
    end
  end
end
