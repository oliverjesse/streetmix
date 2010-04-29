require 'spec_helper'

describe "/teams/show.html.erb" do
  include TeamsHelper
  before(:each) do
    assigns[:team] = @team = stub_model(Team,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end
