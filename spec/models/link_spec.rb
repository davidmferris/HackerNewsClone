require 'spec_helper'

describe Link do

  it { should have_many(:comments) }
  it { should have_many(:votes) }

  it { should validate_presence_of(:url)}

end
