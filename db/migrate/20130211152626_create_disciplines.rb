class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.text :name, :null => false, :limit => 60
      t.belongs_to :teacher
      t.timestamps
    end
    add_index :disciplines, :teacher_id
    add_foreign_key :disciplines, :teachers, :dependent => :nullify
  end
end