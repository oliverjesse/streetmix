require 'spec_helper'

describe "/plays/show.html.erb" do
  include PlaysHelper
  before(:each) do
    assigns[:play] = @play = stub_model(Play,
      :scenario_id => 1,
      :lat => 1.5,
      :long => 1.5,
      :duration => 1,
      :winning_team_id => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end
