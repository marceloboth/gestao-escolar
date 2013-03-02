FactoryGirl.define do
  factory :teacher do
    sequence(:name) {|n| "Teacher #{n}"}
  end

  preload do
    factory(:fake_teacher) { create(:teacher) }
  end
end