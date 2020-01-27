class AddMovesToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :moves, :piece_id, :integer
    add_foreign_key :moves, :pieces
  end
end
