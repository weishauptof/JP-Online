class ChangeColumnFeedback < ActiveRecord::Migration[6.0]
  def change
    add_column :feedbacks, :a, :integer
    change_column :feedbacks, :answer, :integer
  end
end
