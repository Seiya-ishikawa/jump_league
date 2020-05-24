class AddColumnToWinpoints < ActiveRecord::Migration[5.2]
  def change
    add_column :winpoints, :win, :boolean
  end
end
