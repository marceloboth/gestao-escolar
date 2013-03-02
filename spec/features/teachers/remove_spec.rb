# -*- encoding:utf-8 -*-
require "spec_helper"

describe "Remove teacher" do
  before do
      teacher = teachers(:fake_teacher)
      visit remove_teacher_path(teacher.id)
  end

  context "when confirm deletion" do
    before do
      click_button t("helpers.submit.teacher.remove")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_teacher_path)
    end

    it "show the remove message" do
      expect(page).to have_content(t("flash.teacher.remove.notice"))
    end
  end

  context "When cancel deletion" do
    before  do
      click_link t("helpers.submit.teacher.cancel")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_teacher_path)
    end
  end

end