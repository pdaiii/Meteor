json.extract! @response, :id, :body, :story_id, :author_id
json.author @response.author.username