require 'spec_helper'

describe Student do
  context "validations" do
    it "requires name" do
      student = Student.create(:name => nil)
      expect(student).to have(1).error_on(:name)
    end

     it "requires classroom" do
      student = Student.create(:classroom_id => nil)
      expect(student).to have(1).error_on(:classroom)
    end
  end
end
