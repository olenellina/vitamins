class SessionsController < ApplicationController
  def create
    # Build the auth_hash from the Github hash object
    auth_hash = request.env['omniauth.auth']

    # Check to see if we received the auth_hash from Github.
    if auth_hash == nil
      flash[:notice] = "Login Failed"
      return redirect_to root_path
    end

    @user = User.find_by(uid: auth_hash[:uid], provider: 'github')

    if @user == nil
      # If user doesn't match any record in the DB, attempt to create a new user.
      # The method to create the new User (build_from_github) is defined in the
      # User model.
      @user = User.build_from_github(auth_hash)
    end

    session[:user_id] = @user.id

    flash[:notice] = "Successfully Logged In"
    redirect_to vitamins_index_path

  end


  def destroy
    session[:user_id] = nil

    flash[:notice] = "Successfully Logged Out"
    redirect_to root_path
  end
end
