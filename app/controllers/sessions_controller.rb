class SessionsController < ApplicationController
skip_before_filter :set_current_user, :authorize 
  def new
  end


  def find
  
     user = User.find_by(email: params[:session][:email].downcase)
     if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      session[:provider] = nil
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
     end
  end
  
  def create
  begin
    @user = User.from_omniauth(request.env['omniauth.auth'])
    session[:user_id] = @user.id
    flash[:success] = "Welcome, #{@user.name}!"
  rescue
    flash[:warning] = "There was an error while trying to authenticate you..."
  end
  redirect_to root_url
  end
   
    


  def destroy
    session[:user_id] = nil 
    @current_user = nil 
    flash[:notice] = 'Logged out successfully.'
    redirect_to root_url
  end
end