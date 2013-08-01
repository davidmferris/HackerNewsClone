FactoryGirl.define do

  factory :link do
    url 'www.google.com'
    title 'title'
  end

  factory :comment do
    text 'sample text'
    association :link
  end

  factory :user do
    name 'David'
    email 'davi@gmail.com'
    password 'password'
  end

end