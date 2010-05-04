module ScenariosHelper

  def list_links
    linklist = []
    @scenarios.each do |scenario|
      linklist << link_to(scenario.title, scenario)
    end
    return linklist
  end
end
