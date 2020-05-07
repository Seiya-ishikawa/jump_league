class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.timestamps
      t.integer :quantity ,null:false
      t.references :comic, foreign_key: true
    end
  end
end
