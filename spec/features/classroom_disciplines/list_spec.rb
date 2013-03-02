# -*- encoding:utf-8 -*-
require "spec_helper"

describe "List classrom disciplines" do
  context "When exists data" do
    before do
      visit root_path
      click_link t("menu.classroom")
      click_link t("titles.classroom.new")

      fill_in t("form.classroom.name"), :with => "NAME"

      click_button t("helpers.submit.classroom.create")
    end

    it "display the title" do
      #expect(page).to have_content(t("titles.classroom.list"))
    end

    it "show classrooms" do
      #page.should have_selector("tr > td", :minimum => 2)
    end
  end

  context "When datatable are empty" do
    before do
      visit root_path
      click_link t("menu.classroom")
    end

    it "display the title" do
      #expect(page).to have_content(t("titles.classroom.list"))
    end

    it "show a blank table" do
      # page.should have_selector("tr > td", :count => 0)
    end
  end
end