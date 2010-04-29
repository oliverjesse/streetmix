require 'spec_helper'

describe Scenario do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :description => "value for description",
      :starting_lat => 1.5,
      :starting_long => 1.5,
      :duration => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Scenario.create!(@valid_attributes)
  end
end
