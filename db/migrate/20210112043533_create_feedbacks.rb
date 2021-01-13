class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.datetime :time
      t.string :teacher
      t.string :question
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :answer
      t.integer :score

      t.timestamps
    end
  end
end
