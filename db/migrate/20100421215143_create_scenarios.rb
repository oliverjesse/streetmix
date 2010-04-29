class CreateScenarios < ActiveRecord::Migration
  def self.up
    create_table :scenarios do |t|
      t.string :title
      t.text :description
      t.float :starting_lat
      t.float :starting_long
      t.integer :duration

      t.timestamps
    end
  end

  def self.down
    drop_table :scenarios
  end
end
