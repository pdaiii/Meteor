# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ApplicationRecord.transaction do
  User.destroy_all
  Story.destroy_all

  User.create!(
    username: 'Guest User',
    password: 'password'
  );

  Story.create!(
    title: 'First',
    body: 'Story',
    image: 'https://c402277.ssl.cf1.rackcdn.com/photos/2325/images/hero_full/mountains-hero.jpg?1345838509',
    author_id: 1
  );
end