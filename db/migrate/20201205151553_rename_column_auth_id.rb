class RenameColumnAuthId < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :auth_id, :author_id
  end
end
