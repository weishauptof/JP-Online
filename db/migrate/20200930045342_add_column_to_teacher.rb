class AddColumnToTeacher < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :role, :string, default: "teacher"
  end
end
