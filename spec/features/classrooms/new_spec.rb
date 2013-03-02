# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "New classroom" do

  context "with valid data" do
    before do
      visit root_path
      click_link t("menu.classroom")
      click_link t("titles.classroom.new")

      fill_in t("form.classroom.name"), :with => "NAME"

      click_button t("helpers.submit.classroom.create")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(show_classroom_path(5))
    end

    it "show the sucess message" do
      expect(page).to have_content(t("flash.classroom.create.notice"))
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