require 'spec_helper'

describe Comment do
  it { should belong_to(:commentable) }
  it { should validate_presence_of(:text)}
  it { should have_many(:comments)}
  it { should validate_presence_of(:commentable)}
end
