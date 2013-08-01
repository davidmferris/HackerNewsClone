class Vote < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :votable, polymorphic: true
  validates_presence_of :votable

end
