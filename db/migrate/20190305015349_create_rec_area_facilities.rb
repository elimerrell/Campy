class CreateRecAreaFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :rec_area_facilities do |t|
      t.integer :facility_id
      t.integer :rec_area_id
      t.timestamps
    end
  end
end
