class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.text :name, :null => false, :limit => 60
      t.timestamps
    end
  end
end