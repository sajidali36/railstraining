json.extract! doctor, :id, :name, :fname, :email, :phone, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
