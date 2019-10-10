json.extract! response, :id, :body, :count, :story_id, :author_id, :created_at
json.author response.author.username