# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "New classroom discipline" do

  context "with valid data" do
    before do
      visit root_path
      click_link t("menu.classroom")
      click_link t("titles.classroom.new")
      fill_in t("form.classroom.name"), :with => "NAME"
      click_button t("helpers.submit.classroom.create")

      discipline = disciplines(:fake_discipline)
      teacher = teachers(:fake_teacher)

      select discipline.name, :from => t("form.discipline.name")
      select teacher.teacher, :from => t("form.teacher.name")
      click_button t("helpers.submit.classroom_discipline.create")

    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_classroom_discipline_path)
    end

    it "show the sucess message" do
      expect(page).to have_content(t("flash.classroom_discipline.create.notice"))
    end
  end

  context "with invalid data" do
    before  do
      visit root_path
      click_link t("menu.classroom")
      click_link t("titles.classroom.new")

      click_button t("helpers.submit.classroom.create")
    end

    it "displays register form" do
      expect(current_path).to eql(new_classroom_path)
    end

    it "displays error message" do
      expect(page).to have_content(t("form.error_message"))
    end
  end
end