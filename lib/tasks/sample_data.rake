require 'ffaker'

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
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
    
        
  end
end

