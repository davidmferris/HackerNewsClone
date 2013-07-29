class Comment < ActiveRecord::Base
  attr_accessible :text

  belongs_to :link

  validates_presence_of :text
  validates_presence_of :link
end
