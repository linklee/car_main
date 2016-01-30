require 'ffaker'

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
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
    admin = User.create!(name: "Example User",
     email: "admin@admin.com",
     password: "admin1",
     password_confirmation: "admin1",
     admin: true)


    3.times do |n|

     Ba.create!(  src: "http://placehold.it/350x150/006dcc?text=before",
      descr: "",
      title: "before",
      )
   end
   3.times do |n|

     Ba.create!(  src: "http://placehold.it/350x150/006dcc?text=after",
      descr: "",
      title: "after",
      )
   end
   PagePart.create!(  page_name: "contacts",
    text: "phone: 818-844-7529<br/>
    email: edwineyvazian@gmail.com<br/>
    location: 4557 Fountain Ave.Los Angeles Ca 90029"

    )
   PagePart.create!(  page_name: "services",
    text: "Our services")
   PagePart.create!(  page_name: "about",
    text: "About us")
 end
end