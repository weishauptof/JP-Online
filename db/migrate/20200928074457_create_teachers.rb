class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :teacher_id
      t.string :password

      t.timestamps
    end
  end
end
