FactoryGirl.define do
  factory :discipline do
    sequence(:name) {|n| "Discipline #{n}"}
    association :teacher
  end

  preload do
    factory(:fake_discipline) { create(:discipline) }
  end
end