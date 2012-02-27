FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email)  { |n|  "person_#{n}@gmail.com" }
    password  "foobar"

    factory :admin do
	    admin true
    end
  end

  factory :essay do
	  content "A fake essay with content"
	  title "Inspiration"
	  user
  end
end
