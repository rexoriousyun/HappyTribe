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
  description: "Walking to cure heart disease",
  );
opp_2 = Opportunity.create(
  organization_id: 1,
  name: "Run for the cure",
  location: "123 specific drive",
  description: "Running to cure heart disease",
  );
timeslot_1 = Timeslot.create(
  start_time: Time.new(2016, 1, 12, 9, 0, 0) ,
  end_time: Time.new(2016, 1, 12, 12, 0, 0),
  capacity: 50,
  opportunity_id: opp_1.id
  );
timeslot_2 = Timeslot.create(
  start_time: Time.new(2016, 1, 12, 12, 30, 0) ,
  end_time: Time.new(2016, 1, 12, 15, 0, 0),
  capacity: 70,
  opportunity_id: opp_1.id
  );
timeslot_3 = Timeslot.create(
  start_time: Time.new(2016, 1, 12, 15, 0, 0) ,
  end_time: Time.new(2016, 1, 12, 18, 0, 0),
  capacity: 40,
  opportunity_id: opp_1.id
  );


user_1 = User.create(
  first_name: "Betty",
  last_name: "Maker",
  email: "betty@maker.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_2 = User.create(
  first_name: "John",
  last_name: "Doe",
  email: "john@doe.com",
  password: "blah",
  password_confirmation: "blah"
  );