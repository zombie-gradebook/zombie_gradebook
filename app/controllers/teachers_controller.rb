class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?
  before_action :allow_access?, only: [:edit, :destroy]
  before_action :teacher?, only: [:index, :new]

  # GET /teachers
  def index
    @teachers = Teacher.all       #where(student_id: params[:teacher_id])

  end

  # GET /teachers/1
  def show
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
  end

  # GET /teachers/1/edit
  def edit
    @teacher.students.build
  end

  # POST /teachers
  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to @teacher, notice: 'Teacher was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /teachers/1
  def update
    if @teacher.update(teacher_params)
      redirect_to @teacher, notice: 'Teacher was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /teachers/1
  def destroy
    @teacher.destroy
    redirect_to teachers_url, notice: 'Teacher was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def teacher_params
    params.require(:teacher).permit(:name, :email, :password, :student_id,
      students_attributes: [:id, :name, :email, :password, :_destroy])
  end

  def allow_access?
    # authorizes teachers to access desired pages
    unless session[:user_type]=="teacher" && session[:user_id] == @teacher.id
      redirect_to login_path, notice: "You don't have access to this"
    end
  end

  def teacher?
    # authorizes teachers to access desired pages
    unless session[:user_type]=="teacher"
      redirect_to login_path, notice: "You don't have access to this"
    end
  end
end
