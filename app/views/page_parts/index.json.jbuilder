json.array!(@page_parts) do |page_part|
  json.extract! page_part, :page_name, :text
  json.url page_part_url(page_part, format: :json)
end