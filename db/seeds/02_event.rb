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