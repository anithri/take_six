class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats, id: :uuid do |t|
      t.references :game, foreign_key: true, type: :uuid
      t.references :player, foreign_key: true, type: :uuid

      t.string :chair_id
      t.string :goals, array: true, default: []

      t.integer :score, default: 0
      t.integer :placing, default: 0

      t.timestamps
    end
  end
end
