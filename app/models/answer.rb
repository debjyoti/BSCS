class Answer < ActiveRecord::Base
  attr_accessible :answer_text, :question_id, :user_id
  validates :answer_text, presence: true
  belongs_to :question
  belongs_to :user
  has_many :votes, as: :votable
end
