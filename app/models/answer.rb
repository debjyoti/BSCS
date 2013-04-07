class Answer < ActiveRecord::Base
  attr_accessible :answer_text, :correct, :question_id, :user_id, :votes
  validates :answer_text, presence: true
  belongs_to :question
  belongs_to :user
end
