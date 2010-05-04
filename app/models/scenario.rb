class Scenario < ActiveRecord::Base
  acts_as_mappable :auto_geocode => {:field=>:address, :error_message=>'Could not geocode address'},
                   :lat_column_name => :starting_lat,
                   :lng_column_name => :starting_long
  has_many :clues
  # has_many :games
  
  class << self
    def addresses
      Scenario.all.map(&:address)
    end
    
    def coordinates
      ret = []
      Scenario.all.each do |s|
        unless s.address.blank?
          ret << [s.starting_lat,s.starting_long]
        end
      end
      ret
    end
    
    def titles
      Scenario.all.map(&:title)
    end
  end
end
