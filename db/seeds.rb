# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create a main sample user.



40.times do |m|
    fake_name = Faker::Name.name
    fake_email = Faker::Internet.email
    fake_pw = Faker::University.name
    poll_title = fake_name + "'s Poll"
    @harry = User.create!(name: fake_name, email: fake_email, permission:0, password: fake_pw, password_confirmation: fake_pw)
    @harry_poll = Poll.create!(title: poll_title, user_id: @harry.id)
    fake_name = Faker::Name.name
    fake_email = Faker::Internet.email
    fake_pw = Faker::University.name
    @hermione = User.create!(name: fake_name, email: fake_email, permission:0, password: fake_pw, password_confirmation: fake_pw)
    4.times do |n|
        quote = Faker::Movies::HarryPotter.quote
        @q = Question.create!(text: "Who from Harry Potter said this: \n \"#{quote}\"", poll_id: @harry_poll.id)
        3.times do |o|
            chara = Faker::Movies::HarryPotter.character
            @achoice = Answerchoice.create!(content: chara, question_id: @q.id)
            Userchoice.create!(answerchoice_id: @achoice.id, user_id: @harry.id)
            Userchoice.create!(answerchoice_id: @achoice.id, user_id: @hermione.id)
        
            
        end
        Answerchoice.create!(content: "None of the above.", question_id: @q.id)
    end
end






