# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
    name = Faker::Name.name
    description = Faker::FamilyGuy.quote
    image = File.open(File.join(Rails.root, "/app/assets/images/unity-icon.svg"))
    project = Project.new(name: name, description: description, image: image, git_url: "nothing", demo_url: "nothing")
    project.save!
end