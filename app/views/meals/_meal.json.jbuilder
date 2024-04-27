json.extract! meal, :id, :title, :cooking_time, :category, :difficulty_level, :created_at, :updated_at
json.url meal_url(meal, format: :json)
