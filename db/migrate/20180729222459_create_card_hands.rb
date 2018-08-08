class CreateCardHands < ActiveRecord::Migration[5.2]
  def change
    create_table :card_hands, id: :uuid do |t|
      t.integer :cards_ids, array: true, default: []
      t.timestamps
    end
  end
end
