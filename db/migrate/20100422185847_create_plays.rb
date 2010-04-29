class CreatePlays < ActiveRecord::Migration
  def self.up
    create_table :plays do |t|
      t.integer :scenario_id
      t.float :lat
      t.float :long
      t.integer :duration
      t.integer :winning_team_id
      t.datetime :start_time

      t.timestamps
    end
  end

  def self.down
    drop_table :plays
  end
end
