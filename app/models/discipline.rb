class Discipline < ActiveRecord::Base
  attr_accessible :name, :teacher_id
  belongs_to :teacher
  validates_presence_of :name, :teacher
end
