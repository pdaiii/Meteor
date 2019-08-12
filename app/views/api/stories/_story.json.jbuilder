json.extract! story, :id, :title, :body, :count, :author_id, :created_at, :response_ids
json.author story.author.username
if (story.image.attached?) 
  json.image url_for(story.image) 
else
  json.image ''
end