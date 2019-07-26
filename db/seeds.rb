# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'rubygems'
require 'httparty'

Truck.delete_all

trucks = HTTParty.get("https://data.sfgov.org/resource/rqzj-sfat.json")
puts trucks.length

data = []

 trucks.each do |n|
  
  truckBuilt = {
    		"applicant": n["applicant"],
    		"address":   n["address"],
    		"status":    n["status"],
    		"fooditems": n["fooditems"],
    		"dayshours": n["dayshours"],
    		"latitude":  n["latitude"],
    		"longitude": n["longitude"]
      }
      data << truckBuilt
end
Truck.create!(data)