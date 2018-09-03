class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games, id: :uuid do |t|
      t.string :name, null: false
      t.integer :turn, default: 0, null: false
      t.integer :phase, default: 0, null: false

      t.datetime :finished_at, null: true, index: true
      t.timestamps
    end

    add_index :games, :name, unique: true

  end
end
