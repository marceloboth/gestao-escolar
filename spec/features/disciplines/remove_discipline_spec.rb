# -*- encoding:utf-8 -*-
require "spec_helper"

describe "Remove discipline" do
  before do
      discipline = disciplines(:fake_discipline)
      visit remove_discipline_path(discipline.id)
  end

  context "when confirm deletion" do
    before do
      click_button t("helpers.submit.discipline.remove")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_discipline_path)
    end

    it "show the remove message" do
      expect(page).to have_content(t("flash.discipline.remove.notice"))
    end
  end

  context "When cancel deletion" do
    before  do
      click_link t("helpers.submit.discipline.cancel")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_discipline_path)
    end
  end

end