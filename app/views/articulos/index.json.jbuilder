json.array!(@articulos) do |articulo|
  json.extract! articulo, :id, :nombre, :precio, :descripcion, :imagen
  json.url articulo_url(articulo, format: :json)
end
