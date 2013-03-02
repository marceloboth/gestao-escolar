# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "New teacher" do

  context "with valid data" do
    before do
      visit root_path
      click_link t("menu.teacher")
      click_link t("titles.teacher.new")

      fill_in t("form.teacher.name"), :with => "McMurray"
      click_button t("helpers.submit.teacher.create")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_teacher_path)
    end

    it "show the sucess message" do
      expect(page).to have_content(t("flash.teacher.create.notice"))
    end
  end

  context "with invalid data" do
    before  do
      visit root_path
      click_link t("menu.teacher")
      click_link t("titles.teacher.new")
      click_button t("helpers.submit.teacher.create")
    end

    it "displays register form" do
      expect(current_path).to eql(new_teacher_path)
    end

    it "displays error message" do
      expect(page).to have_content(t("form.error_message"))
    end
  end
end