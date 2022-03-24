FactoryBot.define do
  factory :province do
    name { "Connaught" }
    slug { "connaught" }
  end

  factory :county do
    name { "Leitrim" }
    slug { "leitrim" }
    province
  end
end
