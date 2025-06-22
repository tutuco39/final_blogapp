# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Faker::Config.locale = 'en'

2.times do
  User.create!(
    account_name: Faker::Name.name,
    email: Faker::Internet.unique.email,
    password: 'password123',
  )
end

users = User.all

5.times do
  Article.create!(
    content: Faker::Lorem.sentence(word_count: 5),
    user_id: users.sample.id  # ランダムなユーザーと紐づけ
  )
end
