FactoryGirl.define do
  factory :user do
    name "Rob vanBrandenburg"
    email "Rob@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end