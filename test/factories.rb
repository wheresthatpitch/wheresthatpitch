FactoryBot.define do
  factory :province do
    name { "Connaught" }
    slug { "connaught" }
  end

  factory :county do
    name { "Leitrim" }
    slug { "leitrim" }
    province

    factory :county_with_clubs do
      transient do
        clubs_count { 5 }
      end

      after(:create) do |county, evaluator|
        create_list(:club, evaluator.clubs_count, county: county)

        county.reload
      end
    end
  end

  factory :club do
    name { Faker::Team.name }
    county
  end
end
