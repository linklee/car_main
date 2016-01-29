require 'ffaker'

namespace :db do
  desc "Fill database with sample data"

  task populate: :environment do

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

