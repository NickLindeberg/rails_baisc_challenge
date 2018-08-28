class StudentsController < ApplicationController
def index
  @students = Student.all
end

def new
  @student = Student.new
end

def create
    student = Student.new(student_params)
    if student.save
      flash[:success] = "You created #{student.name}"
      redirect_to students_path
    else
      flash.notice = "Student already exists!"
      redirect_to new_student_path
    end
  end

def show
  @student = Student.find(params[:id])
end

def edit

end

def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    if @student.save
      flash[:success] = "#{@student.name} updated!"
      redirect_to students_path
    else
      render :edit
    end
  end

private

  def student_params
    params.require(:student).permit(:name)
  end

end
