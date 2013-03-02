# -*- encoding:utf-8 -*-
require "spec_helper"

describe "Remove student" do
  before do
      student = students(:fake_student)
      visit remove_student_path(student.id)
  end

  context "when confirm deletion" do
    before do
      click_button t("helpers.submit.student.remove")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_student_path)
    end

    it "show the remove message" do
      expect(page).to have_content(t("flash.student.remove.notice"))
    end
  end

  context "When cancel deletion" do
    before  do
      click_link t("helpers.submit.student.cancel")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_student_path)
    end
  end

end