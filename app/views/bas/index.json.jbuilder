json.array!(@bas) do |ba|
  json.extract! ba, :src, :descr, :title
  json.url ba_url(ba, format: :json)
end