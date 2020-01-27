class CreateGames < ActiveRecord::Migration[5.2]
  def change
    change_table :games do |t|

      t.timestamps
    end
  end
end
