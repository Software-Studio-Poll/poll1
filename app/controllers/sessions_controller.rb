class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to polls_path
    else
      # Create an error message.
      render 'new'
      flash.now[:danger] = 'Invalid email/password combination'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end