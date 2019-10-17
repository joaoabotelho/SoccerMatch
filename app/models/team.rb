class Team < ApplicationRecord
  has_many :players

  def join_team(user, captain)
    player = Player.set_player(user, captain)
    self.players << player
  end
end
