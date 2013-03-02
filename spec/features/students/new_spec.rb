# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "New student" do

  context "with valid data" do
    before do
      classroom = classrooms(:fake_classroom)

      visit root_path
      click_link t("menu.student")
      click_link t("titles.student.new")

      fill_in t("form.student.name"), :with => "student"
      select classroom.name, :from => t("form.student.classroom")

      click_button t("helpers.submit.student.create")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_student_path)
    end

    it "show the sucess message" do
      expect(page).to have_content(t("flash.student.create.notice"))
    end
  end

  context "with invalid data" do
    before  do
      classroom = classrooms(:fake_classroom)

      visit root_path
      click_link t("menu.student")
      click_link t("titles.student.new")

      click_button t("helpers.submit.student.create")
    end

    it "displays register form" do
      expect(current_path).to eql(new_student_path)
    end

    it "displays error message" do
      expect(page).to have_content(t("form.error_message"))
    end
  end
end