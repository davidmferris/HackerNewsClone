class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    if @user.save
      flash[:success] = "Success!"
      render :show

    else
      render :new
      flash[:notice] = "Unsuccessful attempt"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])

    render :show
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to users_path
  end

end
