require 'spec_helper'

describe ClassroomDiscipline do
  context "validations" do
    it "requires classroom" do
      class_discipline = ClassroomDiscipline.create(:classroom_id => nil)
      expect(class_discipline).to have(1).error_on(:classroom)
    end

     it "requires discipline" do
      class_discipline = ClassroomDiscipline.create(:discipline_id => nil)
      expect(class_discipline).to have(1).error_on(:discipline)
    end
  end
end
