class ChangeColumnToUsers4 < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :repassword, :password_confirmation
    add_column :users, :password_digest, :string
  end
end
