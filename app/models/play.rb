class Play < ActiveRecord::Base
  belongs_to :scenario
  has_many :teams
  
  before_create [ :set_start_time, :set_duration ]
  after_create :create_teams
  
  def set_start_time
    self.start_time = Time.now
  end
  
  def set_duration
    self.duration = scenario.duration
  end
  
  def create_teams
    Team.create!({:play_id => self.id, :name => "Red Team"})
    Team.create!({:play_id => self.id, :name => "Blue Team"})
  end
  
  def end_time
    start_time + duration.minutes
  end

  def seconds_left
    end_time - Time.now
  end
  
  def to_xml
    super(:except => [:created_at, :updated_it, :lat, :long], :include => :teams)
  end
  
  def to_json
    super(:except => [:created_at, :updated_it, :lat, :long], :include => :teams)
  end

end
