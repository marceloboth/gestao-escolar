class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :name, :null => false, :limit => 60
      t.belongs_to :classroom
      t.timestamps
    end
    add_index :students, :classroom_id
    add_foreign_key :students, :classrooms, :dependent => :nullify
  end
end