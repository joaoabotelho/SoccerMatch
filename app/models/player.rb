class Player < ApplicationRecord
  belongs_to :user
  belongs_to :team, optional: true

  has_many :player_games
  has_many :games, through: :player_games

  enum status: {holder: 0, replacement: 1, backup: 2}
  enum position: { EX: 0, CA: 1, SA: 2, MO: 3,
                   ASA: 4, McL: 5, MeC: 6,
                   ALA: 7, VOL: 8, LT: 9, ZG: 10,
                   LB: 11, GL: 12 }

  def self.set_player(user, captain)
    player = user.player
    unless player.present?
      player = Player.create(user: user, total_goals: 2, current_goals: 0, status: 'holder', position: 'EX', captain: captain)
    else
      player.update_attributes captain: captain
    end
    return player
  end
end
