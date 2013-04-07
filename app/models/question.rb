class Question < ActiveRecord::Base
  attr_accessible :title, :question_text, :user_id
  belongs_to :user
  has_many :answers
end
