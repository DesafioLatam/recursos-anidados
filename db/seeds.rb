# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p = Post.new(name:"Aprendiendo a programar", content:"Lorem Ipsum ...")
p.tags << Tag.new(name:"Programación") 
p.save

p = Post.new(name:"Introducción a Ruby on Rails", content:"Lorem, Ruby, Rails")
p.tags << Tag.new(name:"Programación")
p.tags << Tag.new(name:"Ruby")
p.tags << Tag.new(name:"Rails")
p.save

p = Post.new(name:"el Patrón MVC", content:"MVC, y lorem ipsum")
p.tags << Tag.new(name:"Programación")
p.tags << Tag.new(name:"Ruby")
p.tags << Tag.new(name:"Rails")
p.tags << Tag.new(name:"MVC")
p.save

p = Post.new(name:"Aprendiendo Rails con desafiolatam", content:"Bootcamps lorem ipsum" )
p.tags << Tag.new(name:"Bootcamps")
p.tags << Tag.new(name:"Aprender")
p.save

p = Post.new(name:"Lógica para la programación", content:"Logica, tablas de lorem ipsum" )
p.tags << Tag.new(name:"Lógica")
p.tags << Tag.new(name:"Programación")
p.save


p = Post.new(name:"Escalando Rails", content:"Rails, tablas de lorem ipsum" )
p.tags << Tag.new(name:"Optimización")
p.tags << Tag.new(name:"Rails")
p.save
