# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Stadium.delete_all
Like.delete_all

count = 1

3.times do
  Stadium.create(name: "Stadium #{count}", city: "City #{count}", country: "Country #{count}", clubs: "Clubs #{count}", bio: "Stadium #{count}")
  count += 1
end

