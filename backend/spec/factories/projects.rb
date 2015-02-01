FactoryGirl.define do
  factory :project do
    sequence(:name) { |n| "#{n} - Troll Eric" }
    description "Because it's just so much fun."
  end
end
