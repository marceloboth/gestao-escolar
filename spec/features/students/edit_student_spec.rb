# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "Edit student" do
  before do
    student = students(:fake_student)
    visit edit_student_path(student.id)

    fill_in t("form.student.name"), :with => "Alter name"
    click_button t("helpers.submit.student.update")
  end

  context "with valid data" do
    it "redirect to the list page" do
      expect(current_path).to eql(list_student_path)
    end

    it "show the sucess message" do
      expect(page).to have_content(t("flash.student.update.notice"))
    end
  end

  context "with invalid data" do
    before  do
      student = students(:fake_student)
      visit edit_student_path(student.id)

      fill_in t("form.student.name"), :with => nil
      click_button t("helpers.submit.student.update")
    end

    it "displays register form" do
      student = students(:fake_student)
      expect(current_path).to eql(edit_student_path(student.id))
    end

    it "displays error message" do
      expect(page).to have_content(t("form.error_message"))
    end
  end
end