# -*- encoding:utf-8 -*-
require "spec_helper"

describe  "Edit classroom" do
  before do
    classroom = classrooms(:fake_classroom)
    visit edit_classroom_path(classroom.id)

    fill_in t("form.classroom.name"), :with => "classroom alter"
    click_button t("helpers.submit.classroom.update")
  end

  context "with valid data" do
    it "redirect to the list page" do
      expect(current_path).to eql(list_classroom_path)
    end

    it "show the sucess message" do
      expect(page).to have_content(t("flash.classroom.update.notice"))
    end
  end

  context "with invalid data" do
    before  do
      classroom = classrooms(:fake_classroom)
      visit edit_classroom_path(classroom.id)

      fill_in t("form.classroom.name"), :with => nil
      click_button t("helpers.submit.classroom.update")
    end

    it "displays register form" do
      classroom = classrooms(:fake_classroom)
      expect(current_path).to eql(edit_classroom_path(classroom.id))
    end

    it "displays error message" do
      expect(page).to have_content(t("form.error_message"))
    end
  end
end