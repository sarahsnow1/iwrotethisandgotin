namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(name: "Sarah Lensing",
		 email: "sarahlensing@gmail.com",
 		 password: "foobar",
		 password_confirmation: "foobar")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
		   email: email,
		   password: password,
		   password_confirmation: password)
    end

  	users = User.all(limit: 6)
  	1.times do
	  	content = Faker::Lorem.sentence(490)
	  	users.each { |user| user.essays.create!(content: content, title: "My essay") }
  	end
  end
end

