class ChangeLessonColumn2 < ActiveRecord::Migration[6.0]
  def change
    change_column_default :lessons, :result, from: nil, to: "N"
  end
end
