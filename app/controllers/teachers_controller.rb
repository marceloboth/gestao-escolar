class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(params[:teacher])

    if @teacher.save
      redirect_to "/teachers/list",
        :notice => t("flash.teacher.create.notice")
    else
      render :new
    end
  end

  def list

  end
end