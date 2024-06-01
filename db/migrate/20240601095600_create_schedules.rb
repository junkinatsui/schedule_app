class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.time :start_day
      t.time :end_day
      t.time :all_day
      t.string :memo

      t.timestamps
    end
  end
end
