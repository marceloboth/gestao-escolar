FactoryGirl.define do
  factory :teacher do
    sequence(:name) {|n| "Teacher #{n}"}
  end

  preload do
    factory(:fake) { create(:teacher) }
  end
end