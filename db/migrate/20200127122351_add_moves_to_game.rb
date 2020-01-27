class AddMovesToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :moves, :game_id, :integer
    add_foreign_key :moves, :games
  end
end
