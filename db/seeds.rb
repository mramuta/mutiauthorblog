require 'faker'

User.delete_all
Entry.delete_all


users = 100.times.map do
  User.create!( :username => Faker::Name.first_name,
                :password   => 'password' )
end


entries = 100.times.map do
  Entry.create!( :body => Faker::Lorem.paragraph,
                :author_id  => rand(User.first.id..User.last.id))
end
