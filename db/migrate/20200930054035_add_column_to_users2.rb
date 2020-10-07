class AddColumnToUsers2 < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :teacher_id, :string, default: nil
  end
end
