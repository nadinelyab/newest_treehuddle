class RenameClassColumn < ActiveRecord::Migration
  def change
  	rename_column :huddles, :class, :subject
  end
end
