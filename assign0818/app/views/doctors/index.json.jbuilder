json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :adress, :city, :state, :zip, :school, :experience
  json.url doctor_url(doctor, format: :json)
end
