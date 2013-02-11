require 'spec_helper'

describe Discipline do
  context "validations" do
    it "requires name" do
      discipline = Discipline.create(:name => nil)
      expect(discipline).to have(1).error_on(:name)
    end

     it "requires teacher" do
      discipline = Discipline.create(:teacher_id => nil)
      expect(discipline).to have(1).error_on(:teacher)
    end
  end
end