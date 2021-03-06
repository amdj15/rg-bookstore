FactoryGirl.define do
  factory :author do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    biography { Faker::Lorem.paragraph(5) }

    factory :author_with_books do
      transient do
        books_count 5
      end

      after(:create) do |author, evaluator|
        create_list(:book, evaluator.books_count, author: author)
      end
    end
  end
end
