require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password

  validates_presence_of :email, :name
  validates_uniqueness_of :email

  has_many :links
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
