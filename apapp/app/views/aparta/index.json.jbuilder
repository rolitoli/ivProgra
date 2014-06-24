json.array!(@aparta) do |apartum|
  json.extract! apartum, :id, :titulo, :descripcion, :ubicacion, :costo, :contacto
  json.url apartum_url(apartum, format: :json)
end
