require 'spec_helper'

describe "/teams/index.html.erb" do
  include TeamsHelper

  before(:each) do
    assigns[:teams] = [
      stub_model(Team,
        :name => "value for name"
      ),
      stub_model(Team,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of teams" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end
