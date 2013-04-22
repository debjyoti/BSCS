class Vote < ActiveRecord::Base
  attr_accessible :votable_id, :votable_type
  belongs_to :user
  belongs_to :votable, :polymorphic => true
end
