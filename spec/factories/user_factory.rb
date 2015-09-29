FactoryGirl.define do
  factory :user do
    username  Faker::Internet.email
    password  Faker::Internet.password(8)
  end

  factory :new_user, class: User do
    username { Faker::Internet.email }
    password { Faker::Internet.password(8) }
  end

  factory :signup_user, class: User do
    username { Faker::Internet.email }
    password { Faker::Internet.password(8) }
    password_again {Faker::Internet.password(8)}
  end

end
