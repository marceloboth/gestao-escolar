require 'spec_helper'

describe Classroom do
  context "validations" do
    it "requires name" do
      classroom = Classroom.create(:name => nil)
      expect(classroom).to have(1).error_on(:name)
    end
  end
end
