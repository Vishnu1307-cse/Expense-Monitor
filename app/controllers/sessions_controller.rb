class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id  # Store user ID in session
      redirect_to expenses_index_path, notice: "Logged in successfully!"  # 🔥 Redirect to expenses
    else
      flash[:alert] = "Invalid username or password"
      render :new
    end
  end

  def new
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out successfully!"
  end
end
