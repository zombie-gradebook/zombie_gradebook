class SessionsController < ApplicationController
  def new
  end

  def create
    teacher = Teacher.find_by_email(params[:email])
    if teacher && teacher.authenticate(params[:password])
      session[:logged_in_teacher]= true
      redirect_to teachers_path, notice: "Login successful"
    else
      redirect_to login_path, notice: "Invalid email/password combination"
    end
  end

  def destroy
    session[:logged_in_teacher] = false
    redirect_to root_path, notice: "You are now logged out."
  end

  private

  def set_params
    params.require(:sessions).permit(:email, :password)
  end
end
