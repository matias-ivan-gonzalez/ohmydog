json.extract! perro, :id, :name, :breed, :owner, :age, :weight, :birth_date, :image, :created_at, :updated_at
json.url perro_url(perro, format: :json)
