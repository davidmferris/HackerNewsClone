require 'spec_helper'

describe VotesController do

  describe '#create' do

    before :each do
      @vote_params = {

      }
    end
    it 'should create new vote' do



      expect{
        post :create, vote: @vote_params
      }.to change(Vote, :count).by(1)


    end


  end

end
