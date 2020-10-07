class ChangeUserLessonColumn < ActiveRecord::Migration[6.0]
  def change
    change_column_default :lessons, :teacher_name, from: nil, to: "coco"
    add_column :users, :time_zone, :string
    remove_column :users, :time
    remove_column :users, :role
  end
end
