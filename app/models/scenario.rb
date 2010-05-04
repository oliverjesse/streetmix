class Scenario < ActiveRecord::Base
  has_many :clues
  # has_many :games
  
  class << self
    def addresses
      Scenario.all.map(&:address)
    end
    
    def titles
      Scenario.all.map(&:title)
    end
  end
end
