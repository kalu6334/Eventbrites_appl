json.extract! evenement, :id, :start_date, :duration, :title, :description, :price, :location, :created_at, :updated_at
json.url evenement_url(evenement, format: :json)
