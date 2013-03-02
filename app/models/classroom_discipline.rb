class ClassroomDiscipline < ActiveRecord::Base
  attr_accessible :classroom_id, :discipline_id
  belongs_to :classroom
  belongs_to :discipline
  validates_presence_of :classroom, :discipline
end
