class SessionsController < ApplicationController

  include SessionsHelper
  #handles session creation
  def new
  end

  def create
  # find that user
  user = User.find_by_email(params[:session][:email].downcase)
  # verify password match
    if user && user.authenticate(params[:session][:password])
      sign_in user
      # go to user profile if sign in successful
      redirect_to user
    else
      #-> flash error, render 'new'
      flash.now[:error]='Invalid email/password combination'
      render 'new'
    end
  end


  def destroy
    sign_out
    redirect_to new_session_path
  end

end