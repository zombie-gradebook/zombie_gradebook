class GradesController < ApplicationController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?
  # before_action :teacher?, only: [:index, :new]

  # GET /grades
  # def index
  #   @grades = Grade.all
  # end

  # GET /grades/1
  def show
  end

  # GET /grades/new
  def new
    @grade = Grade.new
  end

  # GET /grades/1/edit
  def edit
  end

  # POST /grades
  def create
    @grade = Grade.new(grade_params)

    if @grade.save
      redirect_to @grade, notice: 'Grade was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /grades/1
  def update
    if @grade.update(grade_params)
      redirect_to @grade, notice: 'Grade was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /grades/1
  def destroy
    @grade.destroy
    redirect_to grades_url, notice: 'Grade was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # authorizes students to access desired pages
    def allow_access?
    #   unless session[:user_type]=="teacher" && session[:user_id] == @teacher.id
    #     redirect_to login_path, notice: "You don't have access to this"
    #   end
    # end

      # authorizes teacher to access desired pages
      unless session[:user_type]=="teacher"
        redirect_to login_path, notice: "You don't have access to this"
      end
    end

    # Only allow a trusted parameter "white list" through.
    def grade_params
      params.require(:grade).permit(:assignment_name, :student_id)
    end
end
