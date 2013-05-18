class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :image, :image_cache
  # attr_accessible :title, :body
  validates :name, presence: true
  has_many :questions
  has_many :answers
  has_many :votes
  has_many :comments

  mount_uploader :image, ImageUploader
end
