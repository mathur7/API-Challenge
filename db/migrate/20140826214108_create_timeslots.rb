class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.datetime :start_time
      t.integer :availability
      t.integer :duration
      t.integer :customer_count

      t.timestamps
    end
  end
end
