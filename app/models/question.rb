class Question < ActiveRecord::Base
  attr_accessible :question_text, :user_id
  belongs_to :user
end
