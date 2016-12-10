FactoryGirl.define do
  factory :admin do
    sequence(:email) { |n| "admin#{n}@glownet.com" }
    password "password"
    password_confirmation "password"
  end
end
