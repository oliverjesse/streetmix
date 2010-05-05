class AddOnPathToClues < ActiveRecord::Migration
  def self.up
    add_column :clues, :on_path, :boolean, :default => true, :null => false
  end

  def self.down
    remove_column :clues, :on_path
  end
end
