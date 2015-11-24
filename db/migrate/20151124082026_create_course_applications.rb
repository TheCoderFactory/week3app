class CreateCourseApplications < ActiveRecord::Migration
  def change
    create_table :course_applications do |t|
      t.references :course, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :reason_for_applying
      t.text :prior_study

      t.timestamps null: false
    end
  end
end
