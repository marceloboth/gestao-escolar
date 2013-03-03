class ClassroomDisciplinesController < ApplicationController

  respond_to :js
  before_filter :load_classroom

  def create
    @classroom_discipline = ClassroomDiscipline.new(params[:classroom_discipline])
    @classroom_discipline.classroom_id = @classroom.id
    @classroom_discipline.save
    @classroom_disciplines = ClassroomDiscipline.all
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
    @classroom_disciplines = ClassroomDiscipline.all
    respond_with @classroom_discipline
  end

  def load_classroom
    @classroom = Classroom.find(2)
  end

end