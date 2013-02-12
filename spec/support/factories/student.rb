FactoryGirl.define do
  factory :student do
    sequence(:name) {|n| "student #{n}"}
    association :classroom
  end

  preload do
    factory(:fake_student) { create(:student) }
  end
end