class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer_text
      t.boolean :correct
      t.integer :votes
      t.integer :question_id
      t.integer :user_id

      t.timestamps
    end
  end
end
