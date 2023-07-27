json.extract! jogador, :id, :nome, :nacionalidade, :idade, :posicao, :overall, :url_image, :created_at, :updated_at
json.url jogador_url(jogador, format: :json)
