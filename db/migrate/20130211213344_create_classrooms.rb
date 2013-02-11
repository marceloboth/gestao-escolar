class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name, :null => false, :limit => 60
      t.timestamps
    end
  end
end
