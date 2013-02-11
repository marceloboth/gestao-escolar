class Classroom < ActiveRecord::Base
  attr_accessible :name
  #has_many :student
  validates_presence_of :name
end
