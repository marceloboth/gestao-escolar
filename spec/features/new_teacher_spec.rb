# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "New teacher" do
  before do
    visit "/"
    click_link t("menu.teacher")

    fill_in t("form.teacher.name"), :with => "McMurray"
    click_button t("helpers.submit.teacher.create")
  end

  context "with valid data" do
    it "redirect to the list page" do
      expect(current_path).to eql("/teachers/list")
    end

    it "show the sucess message" do
      expect(page).to have_content(t("flash.teacher.create.notice"))
    end
  end

  context "with invalid data" do
    before  do
      visit "/"
      click_link t("menu.teacher")
      click_button t("helpers.submit.teacher.create")
    end

    it "displays register form" do
      expect(current_path).to eql("/teachers")
    end

    it "displays error message" do
      expect(page).to have_content("Verifique seu formulário para continuar")
    end
  end
end