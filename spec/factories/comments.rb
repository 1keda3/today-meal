FactoryBot.define do
  factory :comment do
    text {"美味しい"}
    association :user
    association :tweet
  end
end
