class Team < ApplicationRecord
  has_many :players
  has_many :games, class_name: 'Game', foreign_key: "team1_id"
  has_many :games, class_name: 'Game', foreign_key: "team2_id"
  has_many :winning_games, class_name: 'Game', foreign_key: "winner_id"

  def join_team(user, captain)
    player = Player.set_player(user, captain)
    self.players << player
  end
end
