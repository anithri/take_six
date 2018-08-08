class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players, id: :uuid do |t|
      t.string :name, unique: true

      t.timestamps

    end
  end
end
