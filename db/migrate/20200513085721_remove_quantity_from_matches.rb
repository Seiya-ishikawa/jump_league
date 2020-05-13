class RemoveQuantityFromMatches < ActiveRecord::Migration[5.2]
  def change
    remove_column :matches, :quantity, :integer
  end
end
