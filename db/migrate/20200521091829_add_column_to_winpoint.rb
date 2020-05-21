class AddColumnToWinpoint < ActiveRecord::Migration[5.2]
  def change
    add_column :winpoints, :point, :boolean,default: false,null: false
  end
end
