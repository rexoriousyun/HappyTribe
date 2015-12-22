# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

scott_mission =  Organization.create(
  name: "The Scott Misson",
  email: "info@scottmission.com",
  website_url: "https://www.scottmission.com/",
  description: "The Scott Mission is a Christian non-denominational charity organization in Ontario, Canada, providing services to poor, homeless and vulnerable people.");
mount_sinai =  Organization.create(
  name: "Mount Sinai Hospital",
  email: "humanresources@mtsinai.on.ca",
  website_url: "https://www.mountsinai.on.ca/",
  description: "Mount Sinai Hospital Lobby Construction Floor Map. Construction is underway on our new lobby to better serve our patients and families.");
postmedia =  Organization.create(
  name: "Postmedia",
  email: "foodandwineexpo@sunmedia.ca",
  website_url: "http://www.postmedia.com/",
  description: "Postmedia Network Inc., a wholly owned subsidiary of Postmedia Network Canada Corp. (TSX:PNC.A, PNC.B), is a Canadian newsmedia company representing more than 200 brands across multiple print, online, and mobile platforms.");
toronto_humane =  Organization.create(
  name: "Toronto Humane Society",
  email: "volunteer@torontohumanesociety.com",
  website_url: "http://www.torontohumanesociety.com",
  description: "Features information about animal services, available animals for adoption, and fostering opportunities.");
sick_kids =  Organization.create(
  name: "Sick Kids",
  email: "sk.hr@sickkids.ca",
  website_url: "http://www.sickkids.ca/",
  description: "The Hospital for Sick Children, also known as SickKids, is a major paediatric hospital located on University Avenue in Toronto, Ontario, Canada.");
canada_running =  Organization.create(
  name: "Canada Running Series",
  email: "volunteer@canadarunningseries.com",
  website_url: "www.canadarunningseries.com",
  description: "The Canada Running Series, an annual road racing series showcasing the world's premiere distance runners and amateur athletics in Canada.");
breast_cancer =  Organization.create(
  name: "Canadian Breast Cancer Foundation",
  email:  "breastcancer@cbcf.org",
  website_url: "http://www.cbcf.org/",
  description: "Learn more about breast cancer, get involved in upcoming events, volunteer or read more about our work towards creating a future without breast cancer.");
heart_and_stroke =  Organization.create(
  name: "Heart and Stroke foundation",
  email:  "heartandstroke@hs.ca",
  website_url: "http://www.heartandstroke.on.ca/",
  description: "The Heart and Stroke Foundation is one of Canada’s largest and most effective health charities. Over the last 60 years we have invested more than $1.39 billion in heart and stroke research.");
toronto_environment = Organization.create(
  name: "Toronto Environmental Alliance",
  email: "Torontoenv@talliance.ca",
  website_url: "http://www.torontoenvironment.org/",
  description: "TEA focuses on actions to help Toronto prepare for the impacts of climate change by reducing energy use and investing in the right infrastructure.");



run_setup = Event.create(
  organization_id: breast_cancer.id,
  name: "Run for the cure",
  role: "Setup Volunteer",
  location: "111 Wellesley St W, Toronto, ON, M7A 1A2E",
  description: "Run for the Cure is a 5k or 1k walk or run that raises funds for Canadian Breast Cancer Foundation. It is the largest single-day, volunteer-led event in Canada in support of the breast cancer cause. Please help us set up for this event.",
  image_url: "http://i.imgur.com/7tZ7571.jpg"
  );
charity_dj = Event.create(
  organization_id: sick_kids.id,
  name: "Charity Fundraiser",
  role: "DJ",
  location: "555 University Ave, Toronto, ON M5G 1X8",
  description: "Time to get back into the Grove of the 70's and the wild and crazy times of the 80's. Help us in Supporting and raising Awareness and Money for Neurofibromatosis.",
  image_url: "http://i.imgur.com/uuZH6b9.jpg"
  );
bb_photographer = Event.create(
  organization_id: heart_and_stroke.id,
  name: "Big Bike Event",
  role: "Photographer",
  location: "1090 Don Mills Road, Toronto, ON M3C 3R6",
  description: "Come to the awesome big bike event and help us capture it!",
  image_url: "http://i.imgur.com/YnWnS8O.jpg"
  );
environment_sound_technician = Event.create(
  organization_id: toronto_environment.id,
  name: "Environmental Awareness Event",
  role: "Sound Technician",
  location: "30 Centurian Dr, Markham, ON L3R 8T6",
  description: "Come help us set up our audio equipment to spread awareness of environmental issues",
  image_url: "http://i.imgur.com/g8cM6mE.jpg"
  );
animal_trainer = Event.create(
  organization_id: toronto_humane.id,
  name: "Animal Awareness Event",
  role: "Animal Trainer",
  location: "110 Wellesley St W, Toronto, ON M7A 1A2",
  description: "Help us keep the animals in best behaviour as we raise animal awareness",
  image_url: "http://i.imgur.com/IEVGW6n.jpg"
  );
blood_admin = Event.create(
  organization_id: mount_sinai.id,
  name: "Blood Donation",
  role: "Administrator",
  location: "160 College St #230, Toronto, ON M5S 3E1",
  description: "The annual blood donation run by Mount Sinai Hospital. Currently recruiting alternative to organize for various timeslot.",
  image_url: "http://i.imgur.com/iU4YsEb.jpg?1"
  );
food_server = Event.create(
  organization_id: postmedia.id,
  name: "Gourmet Food & Wine Expo",
  role: "Server",
  location: "222 Bremner Blvd, Toronto, ON M5V 3L9",
  description: "The annual Gourmet Food & Wine Expo is held in November at the Metro Toronto Convention Centre, North Building. Each year the Expo offers 45,000 guests an unparalleled opportunity to sample over 1,500 fine wines, spirits and beers from around the globe. Town Media, a part of the Postmedia Network is a fully integrated publishing and communications company, producing several magazine titles and major events.",
  image_url: "http://i.imgur.com/ePRGURb.jpg?1"
  );
scott_food_bank = Event.create(
  organization_id: scott_mission.id,
  name: "Scott Mission Christmas Volunteer",
  role: "Food Bank Helper",
  location: "502 Spadina Ave, Toronto, ON M5S 2H1",
  description: "Volunteers are an essential part of the work that happens at The Scott Mission. In 2014, 2,574 volunteers logged a total of 26,164 hours and performed a variety of tasks: helping in the food bank, serving hot meals in our dining room and many other ways. We are doing it again!",
  image_url: "http://i.imgur.com/AIyVm6j.jpg"
  );
environment_garbage_picker = Event.create(
  organization_id: toronto_environment.id,
  name: "Let's Clean Up!",
  role: "Garbage Picker",
  location: "20 Centurian Dr, Markham, ON L3R 8T6",
  description: "Help us clean up the streets to show we care abotu the environment!",
  image_url: "http://i.imgur.com/g8cM6mE.jpg"
  );


timeslot_1 = Timeslot.create(
  start_time: Time.new(2016, 1, 15, 9, 0, 0),
  end_time: Time.new(2016, 1, 15, 12, 0, 0),
  capacity: 50,
  event_id: run_setup.id
  );
timeslot_2 = Timeslot.create(
  start_time: Time.new(2016, 1, 15, 12, 30, 0),
  end_time: Time.new(2016, 1, 15, 15, 0, 0),
  capacity: 70,
  event_id: run_setup.id
  );
timeslot_3 = Timeslot.create(
  start_time: Time.new(2016, 1, 15, 15, 0, 0),
  end_time: Time.new(2016, 1, 15, 18, 0, 0),
  capacity: 40,
  event_id: run_setup.id
  );
timeslot_4 = Timeslot.create(
  start_time: Time.new(2016, 1, 18, 9, 0, 0),
  end_time: Time.new(2016, 1, 18, 12, 0, 0),
  capacity: 20,
  event_id: charity_dj.id
  );
timeslot_5 = Timeslot.create(
  start_time: Time.new(2016, 1, 18, 12, 30, 0),
  end_time: Time.new(2016, 1, 18, 15, 0, 0),
  capacity: 30,
  event_id: charity_dj.id
  );
timeslot_6 = Timeslot.create(
  start_time: Time.new(2016, 1, 18, 15, 0, 0),
  end_time: Time.new(2016, 1, 18, 18, 0, 0),
  capacity: 15,
  event_id: charity_dj.id
  );
timeslot_7 = Timeslot.create(
  start_time: Time.new(2016, 1, 20, 9, 0, 0),
  end_time: Time.new(2016, 1, 20, 12, 0, 0),
  capacity: 20,
  event_id: bb_photographer.id
  );
timeslot_8 = Timeslot.create(
  start_time: Time.new(2016, 3, 15, 12, 30, 0),
  end_time: Time.new(2016, 3, 15, 15, 0, 0),
  capacity: 30,
  event_id: environment_sound_technician.id
  );
timeslot_9 = Timeslot.create(
  start_time: Time.new(2016, 3, 15, 15, 0, 0) ,
  end_time: Time.new(2016, 3, 15, 18, 0, 0),
  capacity: 15,
  event_id: environment_sound_technician.id
  );
timeslot_10 = Timeslot.create(
  start_time: Time.new(2016, 1, 25, 15, 0, 0),
  end_time: Time.new(2016, 1, 25, 18, 0, 0),
  capacity: 15,
  event_id: animal_trainer.id
  );
timeslot_11 = Timeslot.create(
  start_time: Time.new(2016, 1, 25, 17, 0, 0),
  end_time: Time.new(2016, 1, 25, 20, 0, 0),
  capacity: 15,
  event_id: animal_trainer.id
  );
timeslot_12 = Timeslot.create(
  start_time: Time.new(2016, 1, 22, 8, 0, 0) ,
  end_time: Time.new(2016, 1, 22, 11, 0, 0),
  capacity: 15,
  event_id: animal_trainer.id
  );
timeslot_13 = Timeslot.create(
  start_time: Time.new(2016, 2, 1, 11, 0, 0) ,
  end_time: Time.new(2016, 2, 1, 14, 0, 0),
  capacity: 15,
  event_id: blood_admin.id
  );
timeslot_14 = Timeslot.create(
  start_time: Time.new(2016, 2, 1, 15, 0, 0) ,
  end_time: Time.new(2016, 2, 1, 18, 0, 0),
  capacity: 15,
  event_id: blood_admin.id
  );
timeslot_15 = Timeslot.create(
  start_time: Time.new(2016, 12, 25, 8, 0 ,0),
  end_time: Time.new(2016, 12 ,25, 14, 0, 0),
  capacity: 20,
  event_id: food_server.id
  );
timeslot_16 = Timeslot.create(
  start_time: Time.new(2016, 12, 25, 14, 0 ,0),
  end_time: Time.new(2016, 12 ,25, 20, 0, 0),
  capacity: 20,
  event_id: food_server.id
  );
timeslot_17 = Timeslot.create(
  start_time: Time.new(2016, 11, 19, 16, 0 ,0),
  end_time: Time.new(2016, 11, 19, 19, 0, 0),
  capacity: 40,
  event_id: scott_food_bank.id
  );
timeslot_18 = Timeslot.create(
  start_time: Time.new(2016, 11, 19, 19, 0 ,0),
  end_time: Time.new(2016, 11, 19, 22, 0, 0),
  capacity: 40,
  event_id: scott_food_bank.id
  );
timeslot_19 = Timeslot.create(
  start_time: Time.new(2016, 11, 19, 22, 0 ,0),
  end_time: Time.new(2016, 11, 20, 1, 0, 0),
  capacity: 40,
  event_id: scott_food_bank.id
  );
timeslot_20 = Timeslot.create(
  start_time: Time.new(2016, 8, 19, 19, 0 ,0),
  end_time: Time.new(2016, 8, 19, 22, 0, 0),
  capacity: 40,
  event_id: environment_garbage_picker.id
  );
timeslot_21 = Timeslot.create(
  start_time: Time.new(2016, 8, 19, 22, 0 ,0),
  end_time: Time.new(2016, 8, 20, 1, 0, 0),
  capacity: 40,
  event_id: environment_garbage_picker.id
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
user_4 = User.create(
  first_name: "Grant",
  last_name: "Grantson",
  email: "ggg@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_5 = User.create(
  first_name: "Eric",
  last_name: "Ericson",
  email: "ee@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_6 = User.create(
  first_name: "Bryan",
  last_name: "Ericson",
  email: "be@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_7 = User.create(
  first_name: "Donald",
  last_name: "Ericson",
  email: "de@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );
user_8 = User.create(
  first_name: "Stacey",
  last_name: "Ericson",
  email: "se@gg.com",
  password: "blah",
  password_confirmation: "blah"
  );

health_care = Interest.create(
  name: "Health Care"
  );
environmentalism = Interest.create(
  name: "Environmentalism"
  );
child_care = Interest.create(
  name: "Child Care"
  );
senior_care = Interest.create(
  name: "Senior Care"
  );
womens_rights = Interest.create(
  name: "Women's Issues"
  );
lgbt = Interest.create(
  name: "LGBT"
  );
education = Interest.create(
  name: "Education"
  );
shelter_support = Interest.create(
  name: "Shelter Support"
  );
community_support = Interest.create(
  name: "Community Support"
  );
animal_rights = Interest.create(
  name: "Animal Rights"
  );
festivals = Interest.create(
  name: "Festivals"
  );

event_planning = Skill.create(
  name: "Event planning"
  );
cleaning = Skill.create(
  name: "Cleaning"
  );
programming = Skill.create(
  name: "Programming"
  );
administration = Skill.create(
  name: "Administration"
  );
audio_engineering = Skill.create(
  name: "Audio Engineering"
  );
musical_talent = Skill.create(
  name: "Musical Talent"
  );
photography = Skill.create(
  name: "Photography"
  );
animal_training = Skill.create(
  name: "Animal Training"
  );
fundraising = Skill.create(
  name: "Fundraising"
  );
cooking = Skill.create(
  name: "Cooking & Serving"
  );
first_aid = Skill.create(
  name: "First Aid & Medicine"
  );


run_setup.interests << health_care
run_setup.interests << womens_rights
run_setup.skills << event_planning
run_setup.skills << administration

charity_dj.interests << child_care
charity_dj.interests << health_care
charity_dj.skills << audio_engineering
charity_dj.skills << musical_talent

bb_photographer.interests << health_care
bb_photographer.skills << photography

environment_sound_technician.interests << environmentalism
environment_sound_technician.skills << audio_engineering

animal_trainer.interests << animal_rights
animal_trainer.skills << animal_training

blood_admin.interests << health_care
blood_admin.skills << administration

food_server.interests << festivals
food_server.skills << cooking

scott_food_bank.interests << community_support
scott_food_bank.interests << shelter_support
scott_food_bank.skills << administration
scott_food_bank.skills << cooking

environment_garbage_picker.skills << cleaning
environment_garbage_picker.interests << environmentalism

user_1.interests << womens_rights
user_1.interests << health_care
user_1.interests << senior_care
user_1.skills << animal_training
user_1.skills << event_planning

user_2.interests << environmentalism
user_2.interests << community_support
user_2.interests << senior_care
user_2.skills << administration
user_2.skills << cooking

user_3.interests << womens_rights
user_3.interests << festivals
user_3.skills << musical_talent
user_3.skills << event_planning
user_3.skills << audio_engineering

user_3.interests << lgbt
user_3.interests << child_care
user_3.skills << first_aid
user_3.skills << cleaning
user_3.skills << audio_engineering

user_4.interests << education
user_4.interests << shelter_support
user_4.skills << fundraising
user_4.skills << photography
user_4.skills << administration

user_4.interests << health_care
user_4.interests << environmentalism
user_4.skills << fundraising
user_4.skills << cleaning
user_4.skills << administration

user_5.interests << animal_rights
user_5.interests << child_care
user_5.skills << animal_training
user_5.skills << cleaning
user_5.skills << administration

user_5.interests << senior_care
user_5.interests << shelter_support
user_5.interests << community_support
user_5.skills << cooking
user_5.skills << event_planning
user_5.skills << administration

user_6.interests << womens_rights
user_6.interests << environmentalism
user_6.interests << health_care
user_6.skills << first_aid
user_6.skills << event_planning
user_6.skills << audio_engineering

user_7.interests << womens_rights
user_7.interests << environmentalism
user_7.interests << health_care
user_7.skills << programming
user_7.skills << event_planning
user_7.skills << fundraising

user_8.interests << child_care
user_8.interests << health_care
user_8.interests << community_support
user_8.skills << programming
user_8.skills << first_aid
user_8.skills << musical_talent