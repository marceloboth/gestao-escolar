# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "Edit discipline" do
  before do
    discipline = disciplines(:fake_discipline)
    visit edit_discipline_path(discipline.id)

    fill_in t("form.discipline.name"), :with => "Alter McMurray"
    click_button t("helpers.submit.discipline.update")
  end

  context "with valid data" do
    it "redirect to the list page" do
      expect(current_path).to eql(list_discipline_path)
    end

    it "show the sucess message" do
      expect(page).to have_content(t("flash.discipline.update.notice"))
    end
  end

  context "with invalid data" do
    before  do
      discipline = disciplines(:fake_discipline)
      visit edit_discipline_path(discipline.id)

      fill_in t("form.discipline.name"), :with => nil
      click_button t("helpers.submit.discipline.update")
    end

    it "displays register form" do
      discipline = disciplines(:fake_discipline)
      expect(current_path).to eql(edit_discipline_path(discipline.id))
    end

    it "displays error message" do
      expect(page).to have_content(t("form.error_message"))
    end
  end
end