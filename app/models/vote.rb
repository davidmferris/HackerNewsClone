class Vote < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :link
  validates_presence_of :link

end
