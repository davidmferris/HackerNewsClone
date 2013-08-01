class Comment < ActiveRecord::Base
  attr_accessible :text

  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates_presence_of :text
  validates_presence_of :commentable
end
