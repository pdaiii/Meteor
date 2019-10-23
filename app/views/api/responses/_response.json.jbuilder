json.extract! response, :id, :body, :count, :story_id, :author_id, :created_at, :claps
json.author response.author.username