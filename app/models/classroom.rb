class Classroom < ActiveRecord::Base
  attr_accessible :name
  has_many :student
  has_many :classroom_discipline
  validates_presence_of :name

  def self.reports(filter_value)
    Student.joins('INNER JOIN classrooms c ON c.id = students.classroom_id')
           .joins('LEFT OUTER JOIN classroom_disciplines cs ON cs.classroom_id = c.id')
           .joins('LEFT OUTER JOIN disciplines d ON d.id = cs.discipline_id')
           .joins('LEFT OUTER JOIN teachers t ON t.id = cs.teacher_id')
           .select('students.name, c.name as classroom, d.name as discipline, t.name as teacher')
           .where(filter_value)
  end

end
