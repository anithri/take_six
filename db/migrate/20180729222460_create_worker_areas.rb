class CreateWorkerAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :worker_areas, id: :uuid do |t|
      t.integer :worker_ids, array: true, default: []

      t.timestamps
    end
  end
end
