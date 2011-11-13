class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, :null => false
      t.string :code
      t.text :description
      t.string :link
      t.date :start_date, :null => false
      t.date :end_date, :null => false
      t.timestamps
    end
    
    add_index :courses, :name
    add_index :courses, :code
    add_index :courses, :link
  end
end
