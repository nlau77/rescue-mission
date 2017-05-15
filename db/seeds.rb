# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.destroy_all
Question.create(title: "Is tomato a fruit or vegetable??", detail: "Well, is it? filler space filler spacefiller spacefiller spacefiller spacefiller spacefiller spacefiller space ")
Question.create(title: "How much is too much?", detail: "Not very much character filling spacefiller spacefiller spacefiller spacefiller spacefiller space")


Answer.destroy_all
5.times do
Answer.create(response: "I'm not sure. It might be both.", question: Question.first)
end

Answer.create(response: "Too tooo too too too too too much Too tooo too too too too too much Too tooo too too too too too much", question: Question.second)
Answer.create(response: "It was never enough.  Needs enough filler space to be validated", question: Question.second)
