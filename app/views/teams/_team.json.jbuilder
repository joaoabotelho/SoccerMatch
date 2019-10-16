json.extract! team, :id, :name, :current_points, :current_goals, :created_at, :updated_at
json.url team_url(team, format: :json)
