class DeleteTeacher < ActiveRecord::Migration[6.0]
  def change
    drop_table :Teachers
  end
end
