# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  question = Question.create(question: "pregunta #{i}")
  Answer.create(question: question, answer: "#{i} - respuesta 1", value: true, reason: "#{i} - razon 1")
  Answer.create(question: question, answer: "#{i} - respuesta 2", value: false, reason: "#{i} - razon 2")
  Answer.create(question: question, answer: "#{i} - respuesta 3", value: false, reason: "#{i} - razon 3")
  Answer.create(question: question, answer: "#{i} - respuesta 4", value: false, reason: "#{i} - razon 4")
end
