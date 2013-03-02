# -*- encoding:utf-8 -*-
require "spec_helper"

describe "Remove classroom" do
  before do
      classroom = classrooms(:fake_classroom)
      visit remove_classroom_path(classroom.id)
  end

  context "when confirm deletion" do
    before do
      click_button t("helpers.submit.classroom.remove")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_classroom_path)
    end

    it "show the remove message" do
      expect(page).to have_content(t("flash.classroom.remove.notice"))
    end
  end

  context "When cancel deletion" do
    before  do
      click_link t("helpers.submit.classroom.cancel")
    end

    it "redirect to the list page" do
      expect(current_path).to eql(list_classroom_path)
    end
  end

end