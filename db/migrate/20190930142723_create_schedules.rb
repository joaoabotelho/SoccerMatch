class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.time :start_t
      t.integer :day_week
      t.integer :tournament_id

      t.timestamps
    end
  end
end
