=begin
require 'csv'

puts 'Admin Account'
User.create(
   email: "admin@senkutech.cl",
   password: 'qwe123',
   password_confirmation: 'qwe123',
   kindUser: 1
)
puts '50 Standard Accounts'
50.times do
   User.create(
     name: Faker::Name.unique.name,
     name: Faker::Name.surname,
     email: Faker::Internet.email,
     password: '123456',
     password_confirmation: '123456',
     kindUser: 2
   )
end

puts 'Importing states from CSV...'
CSV.foreach(Rails.root.join('db/seeds/state.csv'), headers: true) do |row|
  State.create! do |state|
    state.id = row[0]
    state.state = row[1]
  end
end


puts 'Importing Books...'
100.times do
  Book.create(
    title: Faker::Book.unique.title,
    author: Faker::Book.author,
    publisher: Faker::Book.publisher,
    genre: Faker::Book.genre,
    synopsis: Faker::Lorem.paragraphs,
    published: Faker::Date.between(from: '2000-01-01', to: '2023-05-30'),
    state_id: 1
  )
end


#puts '10 Loans Books to user id 2...'
#10.times do 
#  loan = Loan.create(
#    user_id: 2,
#    book_id: Book.all.sample.id,
#    loanDate: Date.today
#  )
#end

puts 'Return Book...'

  loan.update(
    returnDate: Date.today
  )
=end
