class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :total_goals
      t.integer :current_goals
      t.boolean :captain

      t.timestamps
    end
  end
end
