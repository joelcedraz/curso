json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :autor, :comentario
  json.url comentario_url(comentario, format: :json)
end
