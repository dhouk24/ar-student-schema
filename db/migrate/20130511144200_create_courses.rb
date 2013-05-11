class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :student_id
      t.integer :teacher_id
    end
  end
end
