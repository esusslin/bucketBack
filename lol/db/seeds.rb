# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Article.delete_all
Comment.delete_all

a = Article.create(title: "Charlie", text: "Lee")
b = Article.create(title: "hello", text: "lol")
c = Article.create(title: "boner", text: "hehehe")

Comment.create(article: a, commenter: "dirk", body:"hey chuck")
Comment.create(article: a, commenter: "darrel", body:"very chill article")
Comment.create(article: b, commenter: "dirk", body:"hey chuck")
Comment.create(article: b, commenter: "dirk", body:"hey chuck")
Comment.create(article: b, commenter: "dirk", body:"hey chuck")
Comment.create(article: c, commenter: "dirk", body:"hey chuck")