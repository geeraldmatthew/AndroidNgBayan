json.extract! phone, :id, :name, :brand, :year_released, :camera, :mpixels, :internal_storage, :sim, :screen_size, :operating_system, :stock, :created_at, :updated_at
json.url phone_url(phone, format: :json)
