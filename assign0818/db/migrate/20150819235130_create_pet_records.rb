class CreatePetRecords < ActiveRecord::Migration
  def change
    create_table :pet_records do |t|
      t.string :pet_type
      t.string :breed
      t.integer :age
      t.integer :weight
      t.string :date_last_visit

      t.timestamps
    end
  end
end
