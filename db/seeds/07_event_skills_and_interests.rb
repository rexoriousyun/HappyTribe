# This file sets the initial interests and skills associated with each event

Event.find(1).interests << Interest.find(1)
Event.find(1).interests << Interest.find(5)
Event.find(1).skills << Skill.find(1)
Event.find(1).skills << Skill.find(4)

Event.find(2).interests << Interest.find(3)
Event.find(2).interests << Interest.find(1)
Event.find(2).skills << Skill.find(5)
Event.find(2).skills << Skill.find(6)

Event.find(3).interests << Interest.find(1)
Event.find(3).skills << Skill.find(7)

Event.find(4).interests << Interest.find(5)
Event.find(4).skills << Skill.find(3)

Event.find(5).interests << Interest.find(10)
Event.find(5).skills << Skill.find(8)

Event.find(6).interests << Interest.find(1)
Event.find(6).skills << Skill.find(4)

Event.find(7).interests << Interest.find(11)
Event.find(7).skills << Skill.find(10)

Event.find(8).interests << Interest.find(9)
Event.find(8).interests << Interest.find(8)
Event.find(8).skills << Skill.find(4)
Event.find(8).skills << Skill.find(10)

Event.find(9).skills << Skill.find(2)
Event.find(9).interests << Interest.find(2)