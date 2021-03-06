# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "New classroom discipline" do

  context "with valid data" do
    before do
      classroom = classrooms(:fake_classroom)
      visit show_classroom_path(classroom.id)

      discipline = disciplines(:fake_discipline)
      teacher = teachers(:fake_teacher)

      select discipline.name, :from => 'classroom_discipline[discipline_id]'
      select teacher.name, :from => 'classroom_discipline[teacher_id]'

      click_button t("helpers.submit.classroom_discipline.create")
    end

    it "redirect to the list page" do
      #expect(current_path).to eql(show_classroom_path(classroom.id))
    end

    it "show the sucess message" do
      #expect(page).to have_content(t("flash.classroom_discipline.create.notice"))
    end
  end

end