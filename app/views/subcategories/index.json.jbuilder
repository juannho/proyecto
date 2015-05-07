json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, :id, :category_id, :nombre
  json.url subcategory_url(subcategory, format: :json)
end
