class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games, id: :uuid do |t|
      t.integer :turn, default: 0, null: false
      t.integer :phase, default: 0, null: false

      t.jsonb :pools, default: {}, null: false
      t.jsonb :decks, default: {}, null: false

      t.timestamps
    end
  end
end
