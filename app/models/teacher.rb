class Teacher < ActiveRecord::Base
  attr_accessible :name
  has_many :discipline
  validates_presence_of :name
end
