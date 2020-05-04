class RenamePoinColumnToWinpoints < ActiveRecord::Migration[5.2]
  def change
    def change
      rename_column :winpoints, :poin, :point
    end
  end
end
