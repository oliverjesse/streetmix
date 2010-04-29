class AddScenarioIdToClues < ActiveRecord::Migration
  def self.up
    add_column :clues, :scenario_id, :integer
    add_column :clues, :team_id, :integer
  end

  def self.down
    remove_column :clues, :scenario_id
  end
end
