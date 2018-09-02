class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games, id: :uuid do |t|
      t.string :name, null: false
      t.integer :turn, default: 0, null: false
      t.integer :phase, default: 0, null: false

      t.jsonb :pools_json, default: {}, null: false
      t.jsonb :decks_json, default: {}, null: false

      t.timestamps
    end

    add_index :games, :name, unique: true

  end
end
