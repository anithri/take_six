class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards, id: :uuid do |t|
      t.references :game, foreign_key: true, type: :uuid
      t.references :player, foreign_key: true, type: :uuid
      t.references :card_hand, foreign_key: true, type: :uuid
      t.references :worker_area, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
