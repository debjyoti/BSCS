class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question_text
      t.integer :user_id

      t.timestamps
    end
  end
end
