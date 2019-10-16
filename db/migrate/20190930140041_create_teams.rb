class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :current_points
      t.integer :current_goals

      t.timestamps
    end
  end
end
