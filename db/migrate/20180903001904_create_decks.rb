class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks, id: :uuid do |t|
      t.references :game, foreign_key: true, type: :uuid
      t.string :board_id
      t.jsonb :card_data, default: [], null: false

      t.timestamps
    end
  end
end
