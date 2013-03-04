class ClassroomDisciplinesController < ApplicationController

  respond_to :js

  def create
    @classroom_discipline = ClassroomDiscipline.new(params[:classroom_discipline])
    @classroom_discipline.save
    @classroom_disciplines = ClassroomDiscipline.where_classroom_id(@classroom_discipline.classroom_id)

    @classroom = Classroom.find(@classroom_discipline.classroom_id)
    respond_with @classroom_discipline
  end

  def update
    @classroom_discipline = ClassroomDiscipline.find(params[:id])
    @classroom_discipline.update_atributes(params[:classroom_discipline])
    respond_with @classroom_discipline
  end

  def destroy
    @classroom_discipline = ClassroomDiscipline.find(params[:id])
    @classroom_discipline.destroy
    @classroom_disciplines = ClassroomDiscipline.where_classroom_id(@classroom_discipline.classroom_id)
    respond_with @classroom_discipline
  end

end