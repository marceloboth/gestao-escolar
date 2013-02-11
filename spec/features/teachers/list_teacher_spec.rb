# -*- encoding:utf-8 -*-
require "spec_helper"

describe "List teachers" do
  context "When exists data" do
    before do
      visit root_path
      click_link t("menu.teacher")

      FactoryGirl.create(:teacher)
    end

    it "display the title" do
      expect(page).to have_content(t("titles.teacher.list"))
    end

    it "show teachers" do
      page.should have_selector("tr > td", :count => 2)
    end
  end

  context "With blank rows" do
    before do
      visit root_path
      click_link t("menu.teacher")
    end

    it "display the title" do
      expect(page).to have_content(t("titles.teacher.list"))
    end

    it "show a blank table" do
      # page.should have_selector("tr > td", :count => 0)
    end
  end
end