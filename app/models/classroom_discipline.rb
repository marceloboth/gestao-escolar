class ClassroomDiscipline < ActiveRecord::Base
  attr_accessible :classroom_id, :discipline_id, :teacher_id
  belongs_to :classroom
  belongs_to :discipline
  belongs_to :teacher
  validates_presence_of :classroom, :discipline, :teacher

  def self.where_classroom_id(classroom_id)
    where("classroom_id = ?", classroom_id)
  end

end
