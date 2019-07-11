@responses.each do |response|
  json.set! response.id do
    json.extract! response, :id, :body, :story_id, :author_id
    json.author response.author.username
  end
end