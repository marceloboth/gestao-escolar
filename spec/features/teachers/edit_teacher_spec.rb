# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "Edit teacher" do
  before do
    teacher = teachers(:fake)
    visit edit_teacher_path(teacher.id)

    fill_in t("form.teacher.name"), :with => "Alter McMurray"
    click_button t("helpers.submit.teacher.update")
  end

  context "with valid data" do
    it "redirect to the list page" do
      expect(current_path).to eql(list_teacher_path)
    end

    it "show the sucess message" do
      expect(page).to have_content(t("flash.teacher.update.notice"))
    end
  end

  context "with invalid data" do
    before  do
      teacher = teachers(:fake)
      visit edit_teacher_path(teacher.id)

      fill_in t("form.teacher.name"), :with => nil
      click_button t("helpers.submit.teacher.update")
    end

    it "displays register form" do
      teacher = teachers(:fake)
      expect(current_path).to eql(edit_teacher_path(teacher.id))
    end

    it "displays error message" do
      expect(page).to have_content(t("form.error_message"))
    end
  end
end