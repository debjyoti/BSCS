class Article < ActiveRecord::Base
  attr_accessible :content, :heading, :user_id
  validates :content, :heading, presence: true, uniqueness:true
  validates_presence_of :user_id
end
