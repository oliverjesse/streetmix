require 'spec_helper'

describe Play do
  before(:each) do
    @valid_attributes = {
      :scenario_id => 1,
      :lat => 1.5,
      :long => 1.5,
      :duration => 1,
      :winning_team_id => 1,
      :start_time => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Play.create!(@valid_attributes)
  end
end
