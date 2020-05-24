class AddNullFalseToWin < ActiveRecord::Migration[5.2]
  def up
    change_column :winpoints, :win, :boolean, null: false, default: false
  end

  def down
    change_column :winpoints, :win, :boolean
  end
end
