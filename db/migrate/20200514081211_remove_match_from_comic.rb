class RemoveMatchFromComic < ActiveRecord::Migration[5.2]
  def change
    remove_column :comics, :match, :integer
  end
end
