class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players, id: :uuid do |t|
      t.string :name, null: false
      t.references :game, foreign_key: true, type: :uuid
      t.references :user, foreign_key: true, type: :uuid

      t.string :board_space_id
      t.string :board_space_type
      t.string :goals, array: true, default: []

      t.integer :score, default: 0
      t.integer :placing, default: 0

      t.timestamps
    end

    add_index :players, [:game_id, :name], unique: true
    add_index :players, :board_space_type

  end
end
