class Question < ActiveRecord::Base
  attr_accessible :title, :question_text, :user_id
  validates :title, :question_text, presence: true, uniqueness: true
  belongs_to :user
  has_many :answers, dependent: :destroy
  has_many :votes, as: :votable
end
