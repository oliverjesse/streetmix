class CreateClues < ActiveRecord::Migration
  def self.up
    create_table :clues do |t|
      t.float :lat
      t.float :long
      t.string :caption
      t.integer :team_id
      t.blob :photo

      t.timestamps
    end
  end

  def self.down
    drop_table :clues
  end
end
