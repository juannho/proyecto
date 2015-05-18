json.array!(@directories) do |directory|
  json.extract! directory, :id, :user_id, :category_id, :nombre, :descripcion, :direccion, :comuna, :ciudad, :region, :telefono, :codigo_area, :celular, :email, :foto_perfil, :foto_portada, :estado, :layout
  json.url directory_url(directory, format: :json)
end
