# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
org_1 =  Organization.create(
  name: "Heart and stroke", 
  email: "heart@stroke.com", 
  website_url: "www.heart.ca", 
  description: "something");
org_2 =  Organization.create(
  name: "Fake Bamboo", 
  email: "Fake@bamboo.com", 
  website_url: "www.FBamboo.ca", 
  description: "something about fake bamboo");