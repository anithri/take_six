class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players, id: :uuid do |t|
      t.references :game, foreign_key: true, type: :uuid
      t.references :user, foreign_key: true, type: :uuid

      t.string :location_id
      t.string :goals, array: true, default: []

      t.integer :score, default: 0
      t.integer :placing, default: 0

      t.timestamps
    end
  end
end
