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
opp_1 = Opportunity.create(
  organization_id: 1,
  name: "Walk for the cure",
  location: "123 random drive",
  start_time: Time.new(2016, 1, 12, 6, 0, 0) ,
  end_time: Time.new(2016, 1, 12, 12, 0, 0),
  description: "Walking to cure heart disease",
  max_capacity: 10
  );
opp_2 = Opportunity.create(
  organization_id: 1,
  name: "Walk for the cure",
  location: "123 random drive",
  start_time: Time.new(2016, 1, 12, 6, 0, 0) ,
  end_time: Time.new(2016, 1, 12, 12, 0, 0),
  description: "Walking to cure heart disease",
  max_capacity: 10
  );