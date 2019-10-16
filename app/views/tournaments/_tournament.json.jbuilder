json.extract! tournament, :id, :name, :started, :start_day, :end_date, :winning_team_id, :created_at, :updated_at
json.url tournament_url(tournament, format: :json)
