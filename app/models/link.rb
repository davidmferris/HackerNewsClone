class Link < ActiveRecord::Base
  attr_accessible :title, :url

  has_many :comments
  has_many :votes

  validates_presence_of :url


end
