class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :date_of_visit
      t.string :customer
      t.string :reminder
      t.string :reason
      t.references :doctor, index: true
      t.references :pet_record, index: true

      t.timestamps
    end
  end
end
