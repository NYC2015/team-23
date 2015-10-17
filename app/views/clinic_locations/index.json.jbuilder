json.array!(@clinic_locations) do |clinic_location|
  json.extract! clinic_location, :id, :title, :address, :phone_number, :long, :lat
  json.url clinic_location_url(clinic_location, format: :json)
end
