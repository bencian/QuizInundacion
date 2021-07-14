# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

question = Question.create(question: 'Qué cosas agarrar en caso de una inundación?', reason: 'Es una buena idea estar preparado ante emergencias')
Answer.create(question: question, answer: 'Un kit de primeros auxilios', value: true)
Answer.create(question: question, answer: 'Un juguete', value: false)
Answer.create(question: question, answer: 'Una pelota', value: false)
Answer.create(question: question, answer: 'El control remoto', value: false)

question = Question.create(question: '', reason: '')
Answer.create(question: question, answer: '', value: true)
Answer.create(question: question, answer: '', value: false)
Answer.create(question: question, answer: '', value: false)
Answer.create(question: question, answer: '', value: false)
