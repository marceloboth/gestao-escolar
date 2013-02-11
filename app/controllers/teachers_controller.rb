class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(params[:teacher])

    if @teacher.save
      redirect_to list_teacher_path,
        :notice => t("flash.teacher.create.notice")
    else
      render :new
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])

    if @teacher.update_attributes(params[:teacher])
      redirect_to list_teacher_path,
        :notice => t("flash.teacher.update.notice")
    else
      render :edit
    end
  end

  def remove
    @teacher = Teacher.find(params[:id])
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy

    redirect_to list_teacher_path,
      :notice => t("flash.teacher.remove.notice")
  end

end