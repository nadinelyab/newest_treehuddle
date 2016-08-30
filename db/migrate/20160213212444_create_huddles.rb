class CreateHuddles < ActiveRecord::Migration
  def change
    create_table :huddles do |t|
      t.string :class
      t.string :assignment
      t.string :creator
      t.string :email
      t.string :where
      t.time :time
      t.date :date
      t.string :message
      t.integer :part_max

      t.timestamps null: false
    end
  end
end
