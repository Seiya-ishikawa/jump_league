class RemovePointFromWinpoint < ActiveRecord::Migration[5.2]
  def change
    remove_column :winpoints, :point, :integer
  end
end
