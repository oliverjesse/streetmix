require 'spec_helper'

describe "/clues/new.html.erb" do
  include CluesHelper

  before(:each) do
    assigns[:clue] = stub_model(Clue,
      :new_record? => true,
      :lat => 1.5,
      :long => 1.5,
      :caption => "value for caption",
      :team_id => 1,
      :photo => 
    )
  end

  it "renders new clue form" do
    render

    response.should have_tag("form[action=?][method=post]", clues_path) do
      with_tag("input#clue_lat[name=?]", "clue[lat]")
      with_tag("input#clue_long[name=?]", "clue[long]")
      with_tag("input#clue_caption[name=?]", "clue[caption]")
      with_tag("input#clue_team_id[name=?]", "clue[team_id]")
      with_tag("input#clue_photo[name=?]", "clue[photo]")
    end
  end
end
