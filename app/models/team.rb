class Team < ActiveRecord::Base
  has_many :clues
  belongs_to :play
  
  def clue_points
    points = []
    clues.each do |clue|
      points << [clue.lat, clue.long]
    end
    points
  end
end
