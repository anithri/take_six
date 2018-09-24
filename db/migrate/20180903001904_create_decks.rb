class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks, id: :uuid do |t|
      t.references :game, foreign_key: true, type: :uuid
      t.string :board_space_id
      t.string :board_space_type
      t.jsonb :card_data

      t.timestamps
    end

    add_index :decks, :board_space_type
  end
end
