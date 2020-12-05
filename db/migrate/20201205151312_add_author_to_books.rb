class AddAuthorToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :auth
  end
end
