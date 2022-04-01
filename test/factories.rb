FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

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

    factory :county_with_pitches do
      transient do
        pitches_count { 5 }
      end

      after(:create) do |county, evaluator|
        create_list(:pitch, evaluator.pitches_count, county: county)

        county.reload
      end
    end
  end

  factory :club do
    name { Faker::Team.name }
    county

    after(:build) do |club|
      club.logo.attach(
        io: File.open(Rails.root.join('test', 'fixtures', 'files', 'test-image.jpg')),
        filename: 'test-image.jpg',
        content_type: 'image/jpeg'
      )
    end
  end

  factory :pitch do
    name { Faker::Team.name }
    county
  end
end
