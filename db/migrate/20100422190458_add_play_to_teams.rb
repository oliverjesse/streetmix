class AddPlayToTeams < ActiveRecord::Migration
  def self.up
    add_column :teams, :play_id, :integer
  end

  def self.down
    remove_column :teams, :play_id
  end
end
