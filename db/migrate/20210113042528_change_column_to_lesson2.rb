class ChangeColumnToLesson2 < ActiveRecord::Migration[6.0]
  def change
    remove_column :lessons, :score
    add_column :lessons, :result, :string
  end
end
