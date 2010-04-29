require 'spec_helper'

describe "/clues/index.html.erb" do
  include CluesHelper

  before(:each) do
    assigns[:clues] = [
      stub_model(Clue,
        :lat => 1.5,
        :long => 1.5,
        :caption => "value for caption",
        :team_id => 1,
        :photo => 
      ),
      stub_model(Clue,
        :lat => 1.5,
        :long => 1.5,
        :caption => "value for caption",
        :team_id => 1,
        :photo => 
      )
    ]
  end

  it "renders a list of clues" do
    render
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", 1.5.to_s, 2)
    response.should have_tag("tr>td", "value for caption".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", .to_s, 2)
  end
end
