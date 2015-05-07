json.array!(@views) do |view|
  json.extract! view, :id, :directory_id, :fecha, :hora
  json.url view_url(view, format: :json)
end
