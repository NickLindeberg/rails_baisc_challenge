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
      redirect_to new_student_path(student)
    end
  end

def show
  @student = Student.find(params[:id])
end

def edit
  @student = Student.find(params[:id])
end

def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    if @student.save
      redirect_to student_path
    else
      render :edit
    end
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy

    redirect_to students_path
  end

private

  def student_params
    params.require(:student).permit(:name)
  end

end
