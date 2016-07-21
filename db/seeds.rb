# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
100.times do |i|
  post = Post.new(name: "título #{i + 1}", content: "blaaa ! #{i}")
  post.comments.build(content:"Yo soy el comentario #{i}")
  post.save!
end
