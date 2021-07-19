class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate([params[:session][:password]])
      # Log user in and redirect to the user show page
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'    
    end
  end

  def def destroy
  end
end
