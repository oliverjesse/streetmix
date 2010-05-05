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
  
  # astonishingly, the following translation from java appears to work. no points for rubyishness.
  def perimeter
    hull = []
    angleToLastPoint = 0
    reference_point = last_point_on_hull = lowest_point_on_hull
    begin
      hull << last_point_on_hull
      lastAngle = Float::MAX
      lastPoint = nil
      clues.find(:all, :conditions => {:on_path => true}).each do |clue|
        next if ((clue.x == last_point_on_hull.x) && (clue.y == last_point_on_hull.y)) # should only compare x and y values
        angle = Math::atan2(-clue.y - -last_point_on_hull.y, clue.x - last_point_on_hull.x)
        #########
        if ((angle < 0.0) || (angle < angleToLastPoint))
          angle += 2.0 * Math::PI
        end
        
        if (angle < lastAngle)
            lastPoint = clue
            lastAngle = angle
        end
      end
      last_point_on_hull = lastPoint
      angleToLastPoint = lastAngle
    end while (last_point_on_hull != reference_point)

    return hull
  end
  
  def perimeter_as_arrays
    arr = []
    perimeter.each do |p|
      arr << [p.y, p.x]
    end
    return arr
  end
  
  def area
    total = 0
    ppoints = perimeter
    pprev = ppoints.last
    ppoints.each do |p|
      total += (pprev.x * -p.y) - (p.x * -pprev.y)
      pprev = p
    end
    return total
  end
  
  # Determine the lowest point on the hull.
  def lowest_point_on_hull
    lastPointOnHull = Clue.new(:long => 0, :lat => -Float::MAX )
    clues.find(:all, :conditions => {:on_path => true}).each do |clue|
      if (clue.on_path && (clue.y > lastPointOnHull.y))
        lastPointOnHull = clue
      end  
    end
    return lastPointOnHull
  end
  
end
