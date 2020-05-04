class RenamePointColumnToWinpoints < ActiveRecord::Migration[5.2]
  def change
    rename_column :winpoints, :poin, :point
  end
end
