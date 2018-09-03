class CreatePools < ActiveRecord::Migration[5.2]
  def change
    create_table :pools, id: :uuid do |t|
      t.references :game, foreign_key: true, type: :uuid
      t.string :board_id
      t.jsonb :worker_data

      t.timestamps
    end
  end
end
