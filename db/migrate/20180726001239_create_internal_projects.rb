class CreateInternalProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :internal_projects do |t|
      t.string :name, null: false
      t.integer :project_num, null: false
      t.integer :category_id, default: 100, index: true, null: false
      t.integer :status_id, default: 100, index: true, null: false

      t.boolean :itar_flag, default: true

      t.timestamps
    end

    add_index :internal_projects, :name, unique: true
    add_index :internal_projects,
              [:project_num, :category_id],
              unique: true,
              order:  {
                project_num: :desc,
                category_id: :asc
              }
  end
end
