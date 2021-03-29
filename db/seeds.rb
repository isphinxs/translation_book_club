# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

members = Member.create([{ name: "Sam" }, { name: "Jordan" }])
authors = Author.create([{ name: "Alia Trabucco Zeran"}, { name: "Negar Djavadi" }])
languages = Language.create([{ name: "Spanish" }, { name: "French" }])
publishers = Publisher.create([{ name: "Coffee House Press" }, { name: "Europa Editions"}])
books = Book.create([{ name: "The Remainder" }, { name: "Disoriental" }])

members.first.books << books.first
authors.first.books << books.first
languages.first.books << books.first
publishers.first.books << books.first

members.last.books << books.last
authors.last.books << books.last
languages.last.books << books.last
publishers.last.books << books.last