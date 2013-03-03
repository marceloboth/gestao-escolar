require 'spec_helper'

describe Discipline do
  context "validations" do
    it "requires name" do
      discipline = Discipline.create(:name => nil)
      expect(discipline).to have(1).error_on(:name)
    end
  end
end