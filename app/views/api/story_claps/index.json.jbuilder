@story_claps.each do |story_clap|
  json.set! story_clap.id do 
    json.partial! '/api/story_claps/story_clap', story_clap: story_clap
  end
end