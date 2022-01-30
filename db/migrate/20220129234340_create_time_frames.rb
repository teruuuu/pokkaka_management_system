class CreateTimeFrames < ActiveRecord::Migration[6.1]
  def change
    create_table :time_frames do |t|
      t.time :start_time, null: false
      t.time :end_time, null: false

      t.timestamps
    end
    add_index :time_frames, [:start_time, :end_time], unique: true
  end
end
