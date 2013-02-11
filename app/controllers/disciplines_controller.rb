class DisciplinesController < ApplicationController
  def index
    @disciplines = Discipline.all
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

  def edit
    @discipline = Discipline.find(params[:id])
  end

  def update
    @discipline = Discipline.find(params[:id])

    if @discipline.update_attributes(params[:discipline])
      redirect_to list_discipline_path,
        :notice => t("flash.discipline.update.notice")
    else
      render :edit
    end
  end

  def remove
    @discipline = Discipline.find(params[:id])
  end

  def destroy
    @discipline = Discipline.find(params[:id])
    @discipline.destroy

    redirect_to list_discipline_path,
      :notice => t("flash.discipline.remove.notice")
  end
end