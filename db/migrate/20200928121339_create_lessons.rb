class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :teacher_name
      t.datetime :start_time
      t.string :user_name
      t.string :course

      t.timestamps
    end
  end
end
