require 'spec_helper'

describe "/plays/index.html.erb" do
  include PlaysHelper

  before(:each) do
    assigns[:plays] = [
      stub_model(Play,
        :scenario_id => 1,
        :lat => 1.5,
        :long => 1.5,
        :duration => 1,
        :winning_team_id => 1
      ),
      stub_model(Play,
        :scenario_id => 1,
        :lat => 1.5,
        :long => 1.5,
        :duration => 1,
        :winning_team_id => 1
      )
    ]
  end

  it "renders a list of plays" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
