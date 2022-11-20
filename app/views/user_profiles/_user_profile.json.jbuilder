json.extract! user_profile, :id, :user_id, :first_name, :last_name, :date_of_birth, :gender, :phone, :address, :city_id, :state_id, :country_id, :created_at, :updated_at
json.url user_profile_url(user_profile, format: :json)
