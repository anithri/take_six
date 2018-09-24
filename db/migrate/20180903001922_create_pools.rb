class CreatePools < ActiveRecord::Migration[5.2]
  def change
    create_table :pools, id: :uuid do |t|
      t.references :game, foreign_key: true, type: :uuid
      t.string :board_space_id
      t.string :board_space_type
      t.jsonb :worker_data

      t.timestamps
    end

    add_index :pools, :board_space_type
  end
end
