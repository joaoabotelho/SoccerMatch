class Player < ApplicationRecord
  belongs_to :user
  belongs_to :team, optional: true

  has_many :player_games
  has_many :games, through: :player_games

  def self.set_player(user, captain)
    player = Player.find_by_user_id(user.id)
    unless player.present?
      player = Player.create(user: user, total_goals: 0, current_goals: 0, captain: captain)
    else
      player.update_attributes captain: captain
    end
    return player
  end
end
