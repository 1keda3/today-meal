FactoryBot.define do
  factory :tweet do
    title { "らーめん" }
    eat_time { "4/4夜" }
    time_taken { "3分" }
    recipe { "日進カップヌードル" }
    supplement { "ちょいたしがほしい" }
    association :user
    
  end
end
