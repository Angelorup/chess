class AddPiecesToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :game_id, :integer
    add_foreign_key :pieces, :games
  end
end
