class ChangeTimeForHuddles < ActiveRecord::Migration
  def change
  	rename_column :huddles, :time, :start_time
  	add_column :huddles, :end_time, :time
  end
end
