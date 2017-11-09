class CreatePeopleCourses < ActiveRecord::Migration
  def change
    create_table :people_courses, id: false do |t|
      t.integer :person_id, index: true
      t.integer :course_id, index: true

    end
  end
end
