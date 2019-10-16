class Player < ApplicationRecord
  belongs_to :user
  belongs_to :team, optional: true

  has_many :player_games
  has_many :games, through: :player_games
end
