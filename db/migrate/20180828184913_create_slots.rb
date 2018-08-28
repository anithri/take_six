class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots, id: :uuid do |t|
      t.references :game, foreign_key: true, type: :uuid
      t.string :location_id, null: false
      t.string :card_id, null: false
      t.string :worker_ids, array: true, default: [], null: false

      t.timestamps
    end

    add_index :slots, [:game_id, :location_id, :card_id], unique: true
  end
end
