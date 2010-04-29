require 'spec_helper'

describe "/plays/edit.html.erb" do
  include PlaysHelper

  before(:each) do
    assigns[:play] = @play = stub_model(Play,
      :new_record? => false,
      :scenario_id => 1,
      :lat => 1.5,
      :long => 1.5,
      :duration => 1,
      :winning_team_id => 1
    )
  end

  it "renders the edit play form" do
    render

    response.should have_tag("form[action=#{play_path(@play)}][method=post]") do
      with_tag('input#play_scenario_id[name=?]', "play[scenario_id]")
      with_tag('input#play_lat[name=?]', "play[lat]")
      with_tag('input#play_long[name=?]', "play[long]")
      with_tag('input#play_duration[name=?]', "play[duration]")
      with_tag('input#play_winning_team_id[name=?]', "play[winning_team_id]")
    end
  end
end
