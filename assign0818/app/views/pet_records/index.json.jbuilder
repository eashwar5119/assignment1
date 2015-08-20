json.array!(@pet_records) do |pet_record|
  json.extract! pet_record, :id, :pet_type, :breed, :age, :weight, :date_last_visit
  json.url pet_record_url(pet_record, format: :json)
end
