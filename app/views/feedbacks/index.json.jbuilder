json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :k, :name, :location, :yelp_url
  json.url feedback_url(feedback, format: :json)
end