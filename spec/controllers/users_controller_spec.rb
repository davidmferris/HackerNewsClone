require 'spec_helper'

describe UsersController do

  let(:user) { FactoryGirl.create(:user) }

  describe '#index' do

    before :each do
      get :index
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

  describe '#create' do

    before :each do
      @user_params = {
        name: 'new text',
        email: 'email',
        password: 'password'
      }
    end

    it 'should create a new user' do
      expect{
        post :create, user: @user_params
      }.to change(User, :count).by(1)

    end
  end

  describe '#show' do
    before :each do
      get :show, id: user.id
    end
    it 'should find by user id' do
      expect(assigns[:user]).to eq(user)
    end

    it 'should render show.html' do
      expect(response).to render_template :show
    end
  end

  describe '#edit' do
    it 'should render edit.html' do
      get :edit, id: user.id
      expect(response).to render_template :edit
    end
  end

  describe '#update' do
    before :each do
      @updated_user = {
        name: "test name",
        email: "test email",
        password: "test password"
      }
    end

    it 'should update user info' do
      put :update, id: user.id, user: @updated_user
      user.reload
      expect(user.name).to eq(@updated_user[:name])
    end

    it 'should render show.html' do
      put :update, id: user.id, user: @updated_user
      expect(response).to render_template :show
    end
  end

  describe '#destroy' do
    it 'should delete user' do
      user
      expect{
        delete :destroy, id: user.id
      }.to change(User, :count).by(-1)
    end
  end

end
