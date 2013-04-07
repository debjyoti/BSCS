class Question < ActiveRecord::Base
  attr_accessible :question_text, :user_id
end
