require 'spec_helper'

describe Clue do
  before(:each) do
    @valid_attributes = {
      :lat => 1.5,
      :long => 1.5,
      :caption => "value for caption",
      :team_id => 1,
      :photo => 
    }
  end

  it "should create a new instance given valid attributes" do
    Clue.create!(@valid_attributes)
  end
end
