class Tournament < ApplicationRecord
  belongs_to :team, foreign_key: "winning_team_id", optional: true
  has_many :games
  has_many :schedules
end
