require 'spec_helper'

describe "/clues/show.html.erb" do
  include CluesHelper
  before(:each) do
    assigns[:clue] = @clue = stub_model(Clue,
      :lat => 1.5,
      :long => 1.5,
      :caption => "value for caption",
      :team_id => 1,
      :photo => 
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1\.5/)
    response.should have_text(/1\.5/)
    response.should have_text(/value\ for\ caption/)
    response.should have_text(/1/)
    response.should have_text(//)
  end
end
