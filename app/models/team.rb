class Team < ActiveRecord::Base
  has_many :clues
  belongs_to :play
end
