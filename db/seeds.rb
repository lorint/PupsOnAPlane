# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Airport.destroy_all
Airport.create(code:"ATL", name:"Hartfield-Jackson")
Airport.create(code:"BUR", name:"Burbank")
Airport.create(code:"SNA", name:"John Wayne")
Airport.create(code:"ONT", name:"Ontario")

CrewMember.destroy_all
CrewMember.create(name: "Alvin")
CrewMember.create(name: "Simon")
CrewMember.create(name: "Theodore")
