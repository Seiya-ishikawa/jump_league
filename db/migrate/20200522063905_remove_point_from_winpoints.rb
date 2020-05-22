class RemovePointFromWinpoints < ActiveRecord::Migration[5.2]
  def change
    remove_column :winpoints, :point, :boolean
  end
end
