class AddPiecesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :user_id, :integer
    add_foreign_key :pieces, :users
  end
end
