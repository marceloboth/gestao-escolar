class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])

    if @student.save
      redirect_to list_student_path,
        :notice => t("flash.student.create.notice")
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(params[:student])
      redirect_to list_student_path,
        :notice => t("flash.student.update.notice")
    else
      render :edit
    end
  end

  def remove
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to list_student_path,
      :notice => t("flash.student.remove.notice")
  end
end