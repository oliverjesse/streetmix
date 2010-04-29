require "paperclip"

class Clue < ActiveRecord::Base
  belongs_to :scenario
  belongs_to :team

  has_attached_file :photo,
    :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>",
      :medium => "300x300>",
      :large =>   "400x400>" }
end
