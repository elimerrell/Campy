class CreateCampgroundActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :campground_activities do |t|
      t.integer :campground_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
