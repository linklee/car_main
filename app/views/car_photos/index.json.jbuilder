json.array!(@car_photos) do |car_photo|
  json.extract! car_photo, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8
  json.url car_photo_url(car_photo, format: :json)
end