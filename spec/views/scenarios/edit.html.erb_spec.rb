require 'spec_helper'

describe "/scenarios/edit.html.erb" do
  include ScenariosHelper

  before(:each) do
    assigns[:scenario] = @scenario = stub_model(Scenario,
      :new_record? => false,
      :title => "value for title",
      :description => "value for description",
      :starting_lat => 1.5,
      :starting_long => 1.5,
      :duration => 1
    )
  end

  it "renders the edit scenario form" do
    render

    response.should have_tag("form[action=#{scenario_path(@scenario)}][method=post]") do
      with_tag('input#scenario_title[name=?]', "scenario[title]")
      with_tag('textarea#scenario_description[name=?]', "scenario[description]")
      with_tag('input#scenario_starting_lat[name=?]', "scenario[starting_lat]")
      with_tag('input#scenario_starting_long[name=?]', "scenario[starting_long]")
      with_tag('input#scenario_duration[name=?]', "scenario[duration]")
    end
  end
end
