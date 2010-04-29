require 'spec_helper'

describe "/scenarios/index.html.erb" do
  include ScenariosHelper

  before(:each) do
    assigns[:scenarios] = [
      stub_model(Scenario,
        :title => "value for title",
        :description => "value for description",
        :starting_lat => 1.5,
        :starting_long => 1.5,
        :duration => 1
      ),
      stub_model(Scenario,
        :title => "value for title",
        :description => "value for description",
        :starting_lat => 1.5,
        :starting_long => 1.5,
        :duration => 1
      )
    ]
  end

  it "renders a list of scenarios" do
    render
    response.should have_tag("tr>td", "value for title".to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
