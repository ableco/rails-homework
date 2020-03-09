class CreateCoursesTopicsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :courses_topics do |t|
      t.integer :course_id, foreign_key: true
      t.integer :topic_id, foreign_key: true
    end
  end
end
