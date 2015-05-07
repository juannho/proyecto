json.array!(@links) do |link|
  json.extract! link, :id, :directory_id, :tipo, :url
  json.url link_url(link, format: :json)
end
