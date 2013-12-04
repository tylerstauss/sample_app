namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Tyler Stauss",
                 email: "tyler.e.stauss@gmail.com",
                 password: "tyler11",
                 password_confirmation: "tyler11",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end