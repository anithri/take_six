class CreateInternalProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :internal_projects do |t|
      t.string :name
      t.integer :project_id
      t.integer :category_id, default: 100
      t.integer :status_id, default: 100

      t.integer :created_by_id
      t.integer :requested_by_id

      t.boolean :itar_flag, default: true

      t.timestamps
    end
  end
end
