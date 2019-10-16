class Game < ApplicationRecord
  belongs_to :team, foreign_key: 'team1_id'
  belongs_to :team, foreign_key: 'team2_id'
  belongs_to :team, foreign_key: 'winner_id', optional: true
  belongs_to :tournament

  has_many :player_games
  has_many :players, through: :player_games
end
