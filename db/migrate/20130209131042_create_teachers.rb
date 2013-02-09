class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name, :null => false, :limit => 60
      t.timestamps
    end
  end
end
