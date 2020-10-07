class ChangeUserTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :admin
    add_column :users, :role, :string, default: "student"
  end
end
