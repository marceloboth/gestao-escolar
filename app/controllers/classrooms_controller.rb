class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(params[:classroom])

    if @classroom.save
      redirect_to list_classroom_path,
        :notice => t("flash.classroom.create.notice")
    else
      render :new
    end
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def update
    @classroom = Classroom.find(params[:id])

    if @classroom.update_attributes(params[:classroom])
      redirect_to list_classroom_path,
        :notice => t("flash.classroom.update.notice")
    else
      render :edit
    end
  end

  def remove
    @classroom = Classroom.find(params[:id])
  end

  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy

    redirect_to list_classroom_path,
      :notice => t("flash.classroom.remove.notice")
  end

end