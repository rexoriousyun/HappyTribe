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
  website_url: "http://www.heart.ca",
  description: "something");
org_2 =  Organization.create(
  name: "Fake Bamboo",
  email: "Fake@bamboo.com",
  website_url: "http://www.FBamboo.ca",
  description: "something about fake bamboo");
event_1 = Event.create(
  organization_id: 1,
  name: "Walk for the cure",
  location: "123 random drive",
  description: "Walking to cure heart disease",
  );
event_2 = Event.create(
  organization_id: 1,
  name: "Run for the cure",
  location: "123 specific drive",
  description: "Running to cure heart disease",
  );
event_3 = Event.create(
  organization_id: 2,
  name: "Do something great",
  location: "123 blah_blah_blah",
  description: "Great things!",
  );
event_4 = Event.create(
  organization_id: 2,
  name: "Be Amazing",
  location: "123 hey there street",
  description: "Be the best ever!",
  );
timeslot_1 = Timeslot.create(
  start_time: Time.new(2016, 1, 12, 9, 0, 0) ,
  end_time: Time.new(2016, 1, 12, 12, 0, 0),
  capacity: 50,
  event_id: event_1.id
  );
timeslot_2 = Timeslot.create(
  start_time: Time.new(2016, 1, 12, 12, 30, 0) ,
  end_time: Time.new(2016, 1, 12, 15, 0, 0),
  capacity: 70,
  event_id: event_1.id
  );
timeslot_3 = Timeslot.create(
  start_time: Time.new(2016, 1, 12, 15, 0, 0) ,
  end_time: Time.new(2016, 1, 12, 18, 0, 0),
  capacity: 40,
  event_id: event_1.id
  );

timeslot_4 = Timeslot.create(
  start_time: Time.new(2016, 1, 20, 9, 0, 0) ,
  end_time: Time.new(2016, 1, 20, 12, 0, 0),
  capacity: 20,
  event_id: event_2.id
  );
timeslot_5 = Timeslot.create(
  start_time: Time.new(2016, 1, 20, 12, 30, 0) ,
  end_time: Time.new(2016, 1, 20, 15, 0, 0),
  capacity: 30,
  event_id: event_2.id
  );
timeslot_6 = Timeslot.create(
  start_time: Time.new(2016, 1, 20, 15, 0, 0) ,
  end_time: Time.new(2016, 1, 20, 18, 0, 0),
  capacity: 15,
  event_id: event_2.id
  );
timeslot_7 = Timeslot.create(
  start_time: Time.new(2016, 1, 20, 9, 0, 0) ,
  end_time: Time.new(2016, 1, 20, 12, 0, 0),
  capacity: 20,
  event_id: event_3.id
  );
timeslot_8 = Timeslot.create(
  start_time: Time.new(2016, 1, 20, 12, 30, 0) ,
  end_time: Time.new(2016, 1, 20, 15, 0, 0),
  capacity: 30,
  event_id: event_4.id
  );
timeslot_9 = Timeslot.create(
  start_time: Time.new(2016, 1, 20, 15, 0, 0) ,
  end_time: Time.new(2016, 1, 20, 18, 0, 0),
  capacity: 15,
  event_id: event_4.id
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