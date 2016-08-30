class AddHuddleToParticipant < ActiveRecord::Migration
  def change
  	add_column :participants, :huddle_id, :integer
  end
end
