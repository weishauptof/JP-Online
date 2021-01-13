class AddColumnToLesson2 < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :score, :integer
  end
end
