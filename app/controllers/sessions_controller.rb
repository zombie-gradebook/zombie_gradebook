class SessionsController < ApplicationController
  def new
  end

  def create
    student = Student.find_by_email(params[:email])
    parent = Parent.find_by_email(params[:email])
    teacher = Teacher.find_by_email(params[:email])
    if teacher && teacher.authenticate(params[:password])
      session[:user_id]= teacher.id
      session[:user_type]= "teacher"
      redirect_to teachers_path, notice: "Login successful"
    elsif
      parent && parent.authenticate(params[:password])
      session[:user_id]= parent.id
      session[:user_type]="parent"
      redirect_to parents_path, notice: "Login successful"
    elsif
      student && student.authenticate(params[:password])
      session[:user_id]=student.id
      session[:user_type]= "student"
      redirect_to students_path, notice: "Login successful"
    else
      redirect_to login_path, notice: "Invalid email/password combination"
    end
  end

  def destroy
    session[:user_id] = false
    session[:user_type] = false
    redirect_to root_path, notice: "You are now logged out."
  end

  private

  def set_params
    params.require(:sessions).permit(:email, :password)
  end
end
