class Link < ActiveRecord::Base
  attr_accessible :title, :url

  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates_presence_of :url


end
