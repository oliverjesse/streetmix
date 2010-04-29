require 'spec_helper'

describe "/clues/edit.html.erb" do
  include CluesHelper

  before(:each) do
    assigns[:clue] = @clue = stub_model(Clue,
      :new_record? => false,
      :lat => 1.5,
      :long => 1.5,
      :caption => "value for caption",
      :team_id => 1,
      :photo => 
    )
  end

  it "renders the edit clue form" do
    render

    response.should have_tag("form[action=#{clue_path(@clue)}][method=post]") do
      with_tag('input#clue_lat[name=?]', "clue[lat]")
      with_tag('input#clue_long[name=?]', "clue[long]")
      with_tag('input#clue_caption[name=?]', "clue[caption]")
      with_tag('input#clue_team_id[name=?]', "clue[team_id]")
      with_tag('input#clue_photo[name=?]', "clue[photo]")
    end
  end
end
