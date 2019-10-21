# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create a main sample user.
20.times do |n|
    quote = Faker::Movies::HarryPotter.quote
    @q = Question.create!(text: "Who from Harry Potter said this: \n \"#{quote}")
    
    4.times do |o|
        chara = Faker::Movies::HarryPotter.character
        Answerchoice.create!(content: chara, question_id: @q.id)
    end
    Answerchoice.create!(content: "None of the above.", question_id: @q.id)
    
end
             
             