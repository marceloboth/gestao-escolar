# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "Report of classroom" do
  before do
    visit root_path
    click_link t('menu.report')

    fill_in t("form.report.search"), :with => "search classroom"
    #select report.type, :from => t('form.report.type')

    click_button t("helpers.submit.report.show")
  end

  context "with valid data" do
    it "redirect to the html report" do
      expect(current_path).to eql(show_report_path)
    end
  end

  context "when export to pdf" do
    it "redirect to the pdf file" do

    end
  end

  context "when export to xls" do
    it "redirect to the xls file" do

    end
  end

  context "with invalid data" do
    before  do

    end

    it "displays a blank table" do

    end

    it "displays message alert for blank result" do

    end
  end
end