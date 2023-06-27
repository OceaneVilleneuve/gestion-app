# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Cleaning database..."
UserProject.destroy_all
User.destroy_all
Project.destroy_all
Task.destroy_all

d2 = DateTime.new(2023,11,06)
d1 = DateTime.new(2023,10,06)

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

oceane = User.create!(last_name: "Villeneuve", first_name: "Oceane",
  email: "oceane@email.com", password: "azerty")

  # file = File.open(Rails.root.join("app/assets/images/rou-reynolds-shikari.jpeg"))
  # reynolds.avatar.attach(io: file, filename: "user.jpeg", content_type: "image/jpeg")

band = Project.create!(name: "Create a band", description: "We are gonna search on social media some people for our band")

band_pro = UserProject.create!(user: oceane, project: band)

Task.create!(title: "Take a look", description: "Take a look on instagram for people",
limit_date: d1, status: "in progress", project: band)

Task.create!(title: "Contract", description: "Write some conntract for the people",
  limit_date: d1, status: "done", project: band)

Task.create!(title: "Group call", description: "Call each other to fix our next reunion",
  limit_date: d2, status: "not done", project: band)
