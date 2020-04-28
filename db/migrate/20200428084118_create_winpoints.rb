class CreateWinpoints < ActiveRecord::Migration[5.2]
  def change
    create_table :winpoints do |t|
      t.integer :poin , null: false
      t.references :comic, foreign_key: true
      t.timestamps
    end
  end
end
