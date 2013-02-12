class Student < ActiveRecord::Base
  attr_accessible :name, :classroom_id
  belongs_to :classroom
  validates_presence_of :name, :classroom
end
