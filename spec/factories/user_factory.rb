FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }

	factory :user do
		email "peter@example.com"
	    password "1234567890"
	    first_name "Peter"
	    last_name "Example"
	    admin false
	end

		factory :admin, class: User do
		email "james@example.com"
	    password "123123"
	    first_name "xin"
	    last_name "li"
	    admin true
	end

end