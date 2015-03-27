FactoryGirl.define do
  factory :url do
    name {Faker::Internet.url}
    code {"abcd"}
  end
end
