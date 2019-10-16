class CreateTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.boolean :started
      t.date :start_day
      t.date :end_date
      t.integer :winning_team_id

      t.timestamps
    end
  end
end
