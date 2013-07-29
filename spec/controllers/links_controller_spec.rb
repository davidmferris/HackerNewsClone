require 'spec_helper'

describe LinksController do

  let(:link) { FactoryGirl.create(:link) }


  describe '#index' do

      it 'should assign @links' do
        links = Link.all
        get :index
        expect(assigns(:links)).to eq(links)
      end

      it 'should render index.html' do
        get :index
        expect(response).to render_template :index
      end

  end


  describe '#create' do
    before :each do
      @link_params = {
        title: 'title',
        url: 'www.url.com'
      }
    end

    it 'should create a new link' do
      expect{
        post :create, link: @link_params #FactoryGirl.build(:link).attributes
        }.to change(Link, :count).by(1)

    end
  end

end