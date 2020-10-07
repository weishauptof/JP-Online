class AddColumnToLesson < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :user_email, :string
  end
end
