class Answer < ActiveRecord::Base
  attr_accessible :answer_text, :correct, :question_id, :user_id, :votes
  belongs_to :question
  belongs_to :user
end
