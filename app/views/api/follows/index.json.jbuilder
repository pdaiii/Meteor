@follows.each do |follow|
  json.set! follow.id do
    json.extract! follow, :followee, :follower 
  end
end