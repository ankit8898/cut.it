FactoryGirl.define do
  factory :url do
    name {Faker::Internet.url}
    shortened {"http://shor.ty/abcd"}
  end
end
