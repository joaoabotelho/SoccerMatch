class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.date :day
      t.time :hour
      t.integer :team1_id
      t.integer :team2_id
      t.integer :team2_score
      t.integer :team1_score
      t.integer :winner_id
      t.integer :tournament_id

      t.timestamps
    end
  end
end
