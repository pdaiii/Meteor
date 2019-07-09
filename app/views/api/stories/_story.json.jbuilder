json.extract! story, :id, :title, :body, :author_id
json.author story.author.username
if (story.image.attached?) 
  json.image url_for(story.image) 
else
  json.image ''
end