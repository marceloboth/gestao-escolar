require 'spec_helper'

describe Teacher do
  context "validations" do
    it "requires name" do
      teacher = Teacher.create(:name => nil)
      expect(teacher).to have(1).error_on(:name)
    end
  end
end
