# -*- encoding:utf-8 -*-
require "spec_helper"

describe "List students" do
  context "When exists data" do
    before do
      visit root_path
      click_link t("menu.student")

      FactoryGirl.create(:student)
    end

    it "display the title" do
      expect(page).to have_content(t("titles.student.list"))
    end

    it "show students" do
      page.should have_selector("tr > td", :minimum => 2)
    end
  end

  context "With blank rows" do
    before do
      visit root_path
      click_link t("menu.student")
    end

    it "display the title" do
      expect(page).to have_content(t("titles.student.list"))
    end

    it "show a blank table" do
      # page.should have_selector("tr > td", :count => 0)
    end
  end
end