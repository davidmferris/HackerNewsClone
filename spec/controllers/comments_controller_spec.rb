require 'spec_helper'

describe CommentsController do

  # let(:comment) { FactoryGirl.create(:comment) }
  let(:link) {FactoryGirl.create(:link)}

  describe '#index' do
    before :each do
      get :index
    end

    it 'should assign @comments' do
      comments = Comment.all
      expect(assigns(:comments)).to eq(comments)
    end

    it 'should render index.html' do
      expect(response).to render_template :index
    end

  end

  describe '#new' do
    before :each do
      get :new
    end

    it 'should render new.html' do
      expect(response).to render_template :new
    end

  end

  describe '#show' do
    it 'should find by id' do
      get :show, id: comment.id
      expect(assigns[:comment]).to eq(comment)
    end

    it 'should render show.html' do
      get :show, id: comment.id
      expect(response).to render_template :show
    end

  end

  describe '#create' do

    before :each do
      @comment_params = {
        text: 'new text',
        link_id: link.id
      }
    end

    it 'should create a new comment' do
      expect{
        post :create, comment: @comment_params
      }.to change(Comment, :count).by(1)

    end
  end

  describe '#edit' do
    it 'should find by id' do
      get :edit, id: comment.id
      expect(assigns[:comment]).to eq(comment)
    end
  end

  describe '#update' do

    before :each do
      @updated_comment = {
        text: 'updated text'
      }
    end

    it 'should update comment' do

      put :update, id: comment.id, comment: @updated_comment
      comment[:text].should eq(@updated_comment[:text])
    end

  end

  describe '#destroy' do
    it 'should delete comment' do
      comment
      expect{
        delete :destroy, id: comment.id
      }.to change(Link, :count).by(-1)
    end
  end



end
