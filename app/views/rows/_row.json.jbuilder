json.extract! row, :id, :row_number, :seat_id, :created_at, :updated_at
json.url row_url(row, format: :json)
