class Trail < ApplicationRecord
  belongs_to :trip


  def self.total_hiking_distance
    sum(:length)
  end

  def self.average_hiking_disatnce
    average(:length)
  end

  def self.max_trip
    maximum(:length)    
  end
end 
