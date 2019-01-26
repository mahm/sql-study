FactoryBot.define do
  factory :access_history do
    service_user { nil }
    service_channel { nil }
    book { nil }
  end
end
