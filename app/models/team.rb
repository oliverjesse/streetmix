class Team < ActiveRecord::Base
  has_many :clues
  belongs_to :play
  
  def clue_points
    points = []
    clues.each do |clue|
      points << [clue.lat, clue.long, clue.photo.url(:medium)]
    end
    points
  end
end
