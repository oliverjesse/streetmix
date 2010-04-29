require 'spec_helper'

describe "/scenarios/show.html.erb" do
  include ScenariosHelper
  before(:each) do
    assigns[:scenario] = @scenario = stub_model(Scenario,
      :title => "value for title",
      :description => "value for description",
      :starting_lat => 1.5,
      :starting_long => 1.5,
      :duration => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ description/)
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
    response.should have_text(/1/)
  end
end
