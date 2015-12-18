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
  website_url: "http://www.heartandstroke.on.ca/",
  description: "Helping prevent Heart Disease and Strokes");
org_2 =  Organization.create(
  name: "Sick Kids",
  email: "sk@sickkids.com",
  website_url: "http://www.sickkids.ca/index.html",
  description: "Helps sick children");
org_3 =  Organization.create(
  name: "Toronto Environmental Alliance",
  email: "talliance@talliance.com",
  website_url: "http://www.torontoenvironment.org/",
  description: "Helps sick children");
event_1 = Event.create(
  organization_id: 1,
  name: "Walk for the cure",
  role: "Setup Volunteer",
  location: "123 random drive",
  description: "Walking to cure heart disease. Help us setup the registration desk"
  );
event_2 = Event.create(
  organization_id: 2,
  name: "Charity Fundraiser",
  role: "DJ",
  location: "123 specific drive",
  description: "Come be a DJ at the Disco and help raise money for sick kids"
  );
event_3 = Event.create(
  organization_id: 1,
  name: "Big Bike Event",
  role: "Photographer",  
  location: "123 blahblahblah",
  description: "Come to the awesome big bike event and help us capture it!"
  );
event_4 = Event.create(
  organization_id: 3,
  name: "Environmental Awareness Event",
  role: "Sound Technician",
  location: "123 hey there street",
  description: "Come help us set up our audio equipment to spread awareness of environmental issues"
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
  first_name: "Margaret",
  last_name: "K",
  email: "mgt@kim.com",
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
user_3 = User.create(
  first_name: "Greg",
  last_name: "Gregson",
  email: "gg@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );

interest_1 = Interest.create(
  name: "Health Care"
  );
interest_2 = Interest.create(
  name: "Environmentalism"
  );
interest_3 = Interest.create(
  name: "Child Care"
  );
interest_4 = Interest.create(
  name: "Senior Care"
  );
interest_5 = Interest.create(
  name: "Women Issues"
  );
interest_6 = Interest.create(
  name: "LGBT"
  );
interest_7 = Interest.create(
  name: "Education"
  );
interest_8 = Interest.create(
  name: "Homeless Help"
  );
interest_9 = Interest.create(
  name: "Community Support"
  );
interest_10 = Interest.create(
  name: "Animal Rights"
  );

skill_1 = Skill.create(
  name: "Organizing"
  );
skill_2 = Skill.create(
  name: "Recycling"
  );
skill_3 = Skill.create(
  name: "Programming"
  );
skill_4 = Skill.create(
  name: "Administration"
  );
skill_5 = Skill.create(
  name: "Sound Equipment"
  );
skill_6 = Skill.create(
  name: "DJ"
  );
skill_7 = Skill.create(
  name: "Photography"
  );

event_1.interests << interest_1
event_1.skills << skill_1
event_1.skills << skill_4

event_2.interests << interest_1
event_2.interests << interest_3
event_2.skills << skill_6

event_3.interests << interest_1
event_3.skills << skill_7

event_4.interests << interest_2
event_2.skills << skill_5

user_1.interests << interest_1
user_2.interests << interest_1
user_3.interests << interest_1

user_1.interests << interest_5
user_2.interests << interest_5

user_3.interests << interest_4