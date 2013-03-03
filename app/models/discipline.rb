class Discipline < ActiveRecord::Base
  attr_accessible :name
  has_many :classroom_discipline
  validates_presence_of :name
end
