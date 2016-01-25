require 'ffaker'

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    
         admin = User.create!(name: "Example User",
                              email: "admin@admin.com",
                              password: "admin1",
                              password_confirmation: "admin1",
                              admin: true)
         10.times do |n|
           name  = Faker::Name.name
           email = "example-#{n+1}@railstutorial.org"
           password  = "password"
           User.create!(name: name,
                        email: email,
                        password: password,
                        password_confirmation: password)
         end
    10.times do |n|
      photo1 = FFaker::Avatar.image
      photo2 = FFaker::Avatar.image
      name  = Faker::Name.name
      car_type = "Car"
      car_year = "1960"
      car_model = "Impala"
      car_manufacturer = "chevrolet"
      email = "example-#{n+1}@r.org"
      phone = Faker::PhoneNumber.phone_number
      status = "0"
      coords = "12. 12 .12"
      Lead.create!(name: name,
                   email: email,
                   photo1: photo1, photo2: photo2, car_type: car_type,
                   car_year: car_year, car_manufacturer: car_manufacturer,
                   phone: phone, status: status, car_model:car_model, coords: coords
                  )
    end
  end
end

