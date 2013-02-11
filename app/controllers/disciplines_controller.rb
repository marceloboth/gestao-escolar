class DisciplinesController < ApplicationController
  def index

  end

  def new
    @discipline = Discipline.new
  end

  def create
    @discipline = Discipline.new(params[:discipline])

    if @discipline.save
      redirect_to list_discipline_path,
        :notice => t("flash.discipline.create.notice")
    else
      render :new
    end
  end

end