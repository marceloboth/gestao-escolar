class CreateClassroomDisciplines < ActiveRecord::Migration
  def change
    create_table :classroom_disciplines do |t|
      t.belongs_to :classroom
      t.belongs_to :discipline
      t.belongs_to :teacher
      t.timestamps
    end
    add_index :classroom_disciplines, :classroom_id
    add_index :classroom_disciplines, :discipline_id
    add_index :classroom_disciplines, :teacher_id

    add_foreign_key :classroom_disciplines, :classrooms, :dependent => :nullify
    add_foreign_key :classroom_disciplines, :disciplines, :dependent => :nullify
    add_foreign_key :classroom_disciplines, :teachers, :dependent => :nullify
  end
end
