class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games, id: :uuid do |t|
      t.integer :phase, default: 0
      t.integer :turn, default: 0

      t.timestamps
    end
  end
end
