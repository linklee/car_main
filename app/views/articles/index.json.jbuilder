json.array!(@articles) do |article|
  json.extract! article, :header, :day, :month, :link, :p, :string
  json.url article_url(article, format: :json)
end