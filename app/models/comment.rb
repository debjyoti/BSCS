class Comment < ActiveRecord::Base
  attr_accessible :article_id, :comment_text, :user_id

  belongs_to :article
  belongs_to :user

  validates :comment_text, presence: true, uniqueness: true
end
