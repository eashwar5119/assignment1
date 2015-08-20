json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_visit, :customer, :reminder, :reason, :doctor_id, :pet_record_id
  json.url appointment_url(appointment, format: :json)
end
