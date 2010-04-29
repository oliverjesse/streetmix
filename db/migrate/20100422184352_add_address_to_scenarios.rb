class AddAddressToScenarios < ActiveRecord::Migration
  def self.up
    add_column :scenarios, :address, :string
  end

  def self.down
    remove_column :scenarios, :address
  end
end
