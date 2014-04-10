require 'faker'

admin = [true, false]

# 5.times do 
#   User.create(name: Faker::Name.name, email: Faker::Internet.email, password_digest: "password", admin: admin.sample)
# end

# time = Time.new

# 5.times do 
#   Activity.create(time: time, description: Faker::Lorem.sentence, price: 2.00, category: Faker::Lorem.word, vendor: "Javad", user_id: rand(1..5))
# end

User.all.each do |user|
  rand(1..5).times do
    Registration.create(user_id: user.id, activity_id: rand(1..5), payment_status: admin.sample)
  end
end