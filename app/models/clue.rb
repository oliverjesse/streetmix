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
      
      
  def y
    lat
  end
  
  def x
    long
  end
  
  def to_json(options = {})
    super(:except => [:created_at, :updated_at, :scenario_id, :photo_file_size, :photo_file_name, :photo_content_type ])    
  end
end
