FactoryGirl.define do
  factory :teacher do
    name "Fake Teacher"
  end

  preload do
    factory(:fake) { create(:teacher) }
  end
end