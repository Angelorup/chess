class CreatePiece < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
        t.string :name
        t.boolean :white
        t.integer :x_coord
        t.integer :y_coord
        t.string :type
        t.boolean :captured, :default => false
        t.integer :move_count, :default => 0
        t.integer :check_count, :default => 0
    end
  end
end
