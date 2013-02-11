FactoryGirl.define do
  factory :classroom do
    sequence(:name) {|n| "Classe #{n}"}
  end

  preload do
    factory(:fake) { create(:classroom) }
  end
end