class ReportsController < ApplicationController

  def show

  end

  def new

  end

  def create
    @info = params[:report]
    if @info.type == 'classroom'
      @report = Classroom.report("c.name LIKE '%info.search%'")
    else
      @report = Classroom.report("t.name LIKE '%info.search%'")

    redirect_to show_classroom_path(@classroom.id)
  end

end