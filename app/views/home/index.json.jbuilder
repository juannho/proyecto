json.array!(@directorios) do |directorio|
  json.extract! directorio, :id, :user_id, :nombre, :descripcion, :area, :telefono, :celular, :direccion, :comuna, :ciudad, :region, :categoria, :subcategoria, :estado, :ruta
  json.url directorio_url(directorio, format: :json)
end