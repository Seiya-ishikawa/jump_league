class AddReferencesToMatches < ActiveRecord::Migration[5.2]
  def change
    add_reference :matches, :winpoint, null: false, foreign_key: true
  end
end
