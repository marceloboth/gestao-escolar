# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "New discipline" do

  context "with valid data" do
    before do
      visit root_path
      click_link t("menu.discipline")
      click_link t("titles.discipline.new")

      click_button t("helpers.submit.discipline.create")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_discipline_path)
    end

    it "show the sucess message" do
      expect(page).to have_content(t("flash.discipline.create.notice"))
    end
  end

  context "with invalid data" do
    before  do
      visit root_path
      click_link t("menu.discipline")
      click_link t("titles.discipline.new")

      click_button t("helpers.submit.discipline.create")
    end

    it "displays register form" do
      expect(current_path).to eql(new_discipline_path)
    end

    it "displays error message" do
      expect(page).to have_content(t("form.error_message"))
    end
  end
end