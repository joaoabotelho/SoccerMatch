json.extract! game, :id, :day, :hour, :team1_id, :team2_id, :team2_score, :team1_score, :winner_id, :tournament_id, :created_at, :updated_at
json.url game_url(game, format: :json)
