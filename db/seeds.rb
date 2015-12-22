# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

org_1 =  Organization.create(
  name: "The Scott Misson",
  email: "info@scottmission.com",
  website_url: "https://www.scottmission.com/",
  description: "The Scott Mission is a Christian non-denominational charity organization in Ontario, Canada, providing services to poor, homeless and vulnerable people.");
org_2 =  Organization.create(
  name: "Mount Sinai Hospital",
  email: "humanresources@mtsinai.on.ca",
  website_url: "https://www.mountsinai.on.ca/",
  description: "Mount Sinai Hospital Lobby Construction Floor Map. Construction is underway on our new lobby to better serve our patients and families.");
org_3 =  Organization.create(
  name: "Postmedia",
  email: "foodandwineexpo@sunmedia.ca",
  website_url: "http://www.postmedia.com/",
  description: "Postmedia Network Inc., a wholly owned subsidiary of Postmedia Network Canada Corp. (TSX:PNC.A, PNC.B), is a Canadian newsmedia company representing more than 200 brands across multiple print, online, and mobile platforms.");
org_4 =  Organization.create(
  name: "Toronto Humane Society",
  email: "volunteer@torontohumanesociety.com",
  website_url: "http://www.torontohumanesociety.com",
  description: "Features information about animal services, available animals for adoption, and fostering opportunities.");
org_5 =  Organization.create(
  name: "Sick Kids",
  email: "sk.hr@sickkids.ca",
  website_url: "http://www.sickkids.ca/",
  description: "The Hospital for Sick Children, also known as SickKids, is a major paediatric hospital located on University Avenue in Toronto, Ontario, Canada.");
org_6 =  Organization.create(
  name: "Canada Running Series",
  email: "volunteer@canadarunningseries.com",
  website_url: "www.canadarunningseries.com",
  description: "The Canada Running Series, an annual road racing series showcasing the world's premiere distance runners and amateur athletics in Canada.");
org_7 =  Organization.create(
  name: "Canadian Breat Cancer Foundation",
  email:  "breastcancer@cbcf.org",
  website_url: "http://www.cbcf.org/",
  description: "Learn more about breast cancer, get involved in upcoming events, volunteer or read more about our work towards creating a future without breast cancer.");


event_1 = Event.create(
  organization_id: 7,
  name: "Run for the cure",
  role: "Setup Volunteer",
  location: "111 Wellesley St W, Toronto, ON, M7A 1A2E",
  description: "Run for the Cure is a 5k or 1k walk or run that raises funds for Canadian Breast Cancer Foundation. It is the largest single-day, volunteer-led event in Canada in support of the breast cancer cause. Please help us set up for this event.",
  image_url: "http://www.runguides.com/system/events/flyers/000/000/242/original/CIBC_Run_for_the_Cure.jpg?1428092170"
  );
event_2 = Event.create(
  organization_id: 5,
  name: "Charity Fundraiser",
  role: "DJ",
  location: " 555 University Ave, Toronto, ON M5G 1X8",
  description: "Time to get back into the Grove of the 70's and the wild and crazy times of the 80's. Help us in Supporting and raising Awareness and Money for Neurofibromatosis.",
  image_url: "http://i.imgur.com/TvRWQQL.jpg?1"
  );
event_3 = Event.create(
  organization_id: 6,
  name: "Big Bike Event",
  role: "Photographer",
  location: " 1090 Don Mills Road, Toronto, ON M3C 3R6",
  description: "Come to the awesome big bike event and help us capture it!",
  image_url: "http://i.imgur.com/uyy5K2e.png?1"
  );
event_4 = Event.create(
  organization_id: 3,
  name: "Environmental Awareness Event",
  role: "Sound Technician",
  location: "30 Centurian Dr, Markham, ON L3R 8T6",
  description: "Come help us set up our audio equipment to spread awareness of environmental issues",
  image_url: "http://i.imgur.com/Wv1IRuD.jpg?1"
  );
event_5 = Event.create(
  organization_id: 4,
  name: "Animal Awareness Event",
  role: "Animal Trainer",
  location: "110 Wellesley St W, Toronto, ON M7A 1A2",
  description: "Help us keep the animals in best behaviour as we raise animal awareness",
  image_url: "http://i.imgur.com/M1zvAI3.jpg?1"
  );
event_6 = Event.create(
  organization_id: 2,
  name: "Blood Donation",
  role: "Administrator",
  location: "160 College St #230, Toronto, ON M5S 3E1",
  description: "The annual blood donation run by Mount Sinai Hospital. Currently recruiting alternative to organize for various timeslot.",
  image_url: "http://i.imgur.com/iU4YsEb.jpg?1"
  );
event_7 = Event.create(
  organization_id: 3,
  name: "Gourmet Food & Wine Expo",
  role: "Server",
  location: "222 Bremner Blvd, Toronto, ON M5V 3L9",
  description: "The annual Gourmet Food & Wine Expo is held in November at the Metro Toronto Convention Centre, North Building. Each year the Expo offers 45,000 guests an unparalleled opportunity to sample over 1,500 fine wines, spirits and beers from around the globe. Town Media, a part of the Postmedia Network is a fully integrated publishing and communications company, producing several magazine titles and major events.",
  image_url: "http://i.imgur.com/ePRGURb.jpg?1"
  );
event_8 = Event.create(
  organization_id: 1,
  name: "Scott Mission Christmas Volunteer",
  role: "Food Bank Helper",
  location: "502 Spadina Ave, Toronto, ON M5S 2H1",
  description: "Volunteers are an essential part of the work that happens at The Scott Mission. In 2014, 2,574 volunteers logged a total of 26,164 hours and performed a variety of tasks: helping in the food bank, serving hot meals in our dining room and many other ways. We are doing it again!",
  image_url: "http://i.imgur.com/wuf9bZd.png?1"
  );


timeslot_1 = Timeslot.create(
  start_time: Time.new(2016, 1, 15, 9, 0, 0),
  end_time: Time.new(2016, 1, 15, 12, 0, 0),
  capacity: 50,
  event_id: event_1.id
  );
timeslot_2 = Timeslot.create(
  start_time: Time.new(2016, 1, 15, 12, 30, 0),
  end_time: Time.new(2016, 1, 15, 15, 0, 0),
  capacity: 70,
  event_id: event_1.id
  );
timeslot_3 = Timeslot.create(
  start_time: Time.new(2016, 1, 15, 15, 0, 0),
  end_time: Time.new(2016, 1, 15, 18, 0, 0),
  capacity: 40,
  event_id: event_1.id
  );
timeslot_4 = Timeslot.create(
  start_time: Time.new(2016, 1, 18, 9, 0, 0),
  end_time: Time.new(2016, 1, 18, 12, 0, 0),
  capacity: 20,
  event_id: event_2.id
  );
timeslot_5 = Timeslot.create(
  start_time: Time.new(2016, 1, 18, 12, 30, 0),
  end_time: Time.new(2016, 1, 18, 15, 0, 0),
  capacity: 30,
  event_id: event_2.id
  );
timeslot_6 = Timeslot.create(
  start_time: Time.new(2016, 1, 18, 15, 0, 0),
  end_time: Time.new(2016, 1, 18, 18, 0, 0),
  capacity: 15,
  event_id: event_2.id
  );
timeslot_7 = Timeslot.create(
  start_time: Time.new(2016, 1, 20, 9, 0, 0),
  end_time: Time.new(2016, 1, 20, 12, 0, 0),
  capacity: 20,
  event_id: event_3.id
  );
timeslot_8 = Timeslot.create(
  start_time: Time.new(2016, 3, 15, 12, 30, 0),
  end_time: Time.new(2016, 3, 15, 15, 0, 0),
  capacity: 30,
  event_id: event_4.id
  );
timeslot_9 = Timeslot.create(
  start_time: Time.new(2016, 3, 15, 15, 0, 0) ,
  end_time: Time.new(2016, 3, 15, 18, 0, 0),
  capacity: 15,
  event_id: event_4.id
  );
timeslot_10 = Timeslot.create(
  start_time: Time.new(2016, 1, 25, 15, 0, 0),
  end_time: Time.new(2016, 1, 25, 18, 0, 0),
  capacity: 15,
  event_id: event_5.id
  );
timeslot_11 = Timeslot.create(
  start_time: Time.new(2016, 1, 25, 17, 0, 0),
  end_time: Time.new(2016, 1, 25, 20, 0, 0),
  capacity: 15,
  event_id: event_5.id
  );
timeslot_12 = Timeslot.create(
  start_time: Time.new(2016, 1, 22, 8, 0, 0) ,
  end_time: Time.new(2016, 1, 22, 11, 0, 0),
  capacity: 15,
  event_id: event_5.id
  );
timeslot_13 = Timeslot.create(
  start_time: Time.new(2016, 2, 1, 11, 0, 0) ,
  end_time: Time.new(2016, 2, 1, 14, 0, 0),
  capacity: 15,
  event_id: event_6.id
  );
timeslot_14 = Timeslot.create(
  start_time: Time.new(2016, 2, 1, 15, 0, 0) ,
  end_time: Time.new(2016, 2, 1, 18, 0, 0),
  capacity: 15,
  event_id: event_6.id
  );
timeslot_15 = Timeslot.create(
  start_time: Time.new(2016, 12, 25, 8, 0 ,0),
  end_time: Time.new(2016, 12 ,25, 14, 0, 0),
  capacity: 20,
  event_id: event_8.id
  );
timeslot_16 = Timeslot.create(
  start_time: Time.new(2016, 12, 25, 14, 0 ,0),
  end_time: Time.new(2016, 12 ,25, 20, 0, 0),
  capacity: 20,
  event_id: event_8.id
  );
timeslot_17 = Timeslot.create(
  start_time: Time.new(2016, 11, 19, 16, 0 ,0),
  end_time: Time.new(2016, 11, 19, 19, 0, 0),
  capacity: 40,
  event_id: event_7.id
  );
timeslot_18 = Timeslot.create(
  start_time: Time.new(2016, 11, 19, 19, 0 ,0),
  end_time: Time.new(2016, 11, 19, 22, 0, 0),
  capacity: 40,
  event_id: event_7.id
  );
timeslot_19 = Timeslot.create(
  start_time: Time.new(2016, 11, 19, 22, 0 ,0),
  end_time: Time.new(2016, 11, 20, 1, 0, 0),
  capacity: 40,
  event_id: event_7.id
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
  name: "Women Rights"
  );
interest_6 = Interest.create(
  name: "LGBT"
  );
interest_7 = Interest.create(
  name: "Education"
  );
interest_8 = Interest.create(
  name: "Shelter Support"
  );
interest_9 = Interest.create(
  name: "Community Support"
  );
interest_10 = Interest.create(
  name: "Animal Rights"
  );
interest_11 = Interest.create(
  name: "Festivals"
  );

skill_1 = Skill.create(
  name: "Event planning"
  );
skill_2 = Skill.create(
  name: "Clean up"
  );
skill_3 = Skill.create(
  name: "Programming"
  );
skill_4 = Skill.create(
  name: "Administration"
  );
skill_5 = Skill.create(
  name: "Audio Engineer"
  );
skill_6 = Skill.create(
  name: "Musician"
  );
skill_7 = Skill.create(
  name: "Photography"
  );
skill_8 = Skill.create(
  name: "Animal Training"
  );
skill_9 = Skill.create(
  name: "Fundraising"
  );
skill_10 = Skill.create(
  name: "Culinary Art"
  );
skill_11 = Skill.create(
  name: "Medicine"
  );


event_1.interests << interest_1
event_1.interests << interest_9
event_1.skills << skill_1
event_1.skills << skill_2
event_1.skills << skill_4

event_2.interests << interest_1
event_2.interests << interest_3
event_2.interests << interest_9
event_2.skills << skill_5
event_2.skills << skill_6
event_2.skills << skill_9

event_3.interests << interest_1
event_3.interests << interest_11
event_3.skills << skill_7

event_4.interests << interest_2
event_4.interests << interest_9
event_4.skills << skill_5

event_5.interests << interest_10
event_5.skills << skill_8

event_6.interests << interest_1
event_6.interests << interest_7
event_6.skills << skill_1
event_6.skills << skill_4
event_6.skills << skill_11

event_7.interests << interest_11
event_7.skills << skill_2
event_7.skills << skill_10

event_8.interests << interest_8
event_8.interests << interest_9
event_8.skills << skill_2
event_8.skills << skill_10

user_1.interests << interest_1
user_1.interests << interest_5
user_1.interests << interest_11

user_1.skills << skill_5
user_1.skills << skill_6

user_2.interests << interest_1
user_2.interests << interest_2
user_1.interests << interest_10

user_2.skills << skill_2
user_2.skills << skill_9

user_3.interests << interest_3
user_3.interests << interest_7
user_1.interests << interest_9

user_3.skills << skill_10
user_3.skills << skill_11
