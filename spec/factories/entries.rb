FactoryBot.define do
  factory :entry do
    service_user { nil }
    body { "MyText" }
  end
end
