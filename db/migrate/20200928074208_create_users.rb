class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :instagram
      t.string :country
      t.integer :time
      t.string :password
      t.string :repassword

      t.timestamps
    end
  end
end
