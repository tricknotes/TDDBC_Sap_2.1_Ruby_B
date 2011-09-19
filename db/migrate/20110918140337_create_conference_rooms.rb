class CreateConferenceRooms < ActiveRecord::Migration
  def change
    create_table :conference_rooms do |t|
      t.string :name
      t.integer :capacity
      t.string :location

      t.timestamps
    end
  end
end
