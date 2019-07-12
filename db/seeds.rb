Student.destroy_all
House.destroy_all
Value.destroy_all

s1 = Student.create(name: 'Harry Potter', email_address: 'hpotter@hogwarts.edu')
s2 = Student.create(name: 'Draco Malfoy', email_address: 'dmalfoy@hogwarts.edu')
s3 = Student.create(name: 'Cedric Diggory', email_address: 'cdiggory@hogwarts.edu')
s4 = Student.create(name: 'Luna Lovegood', email_address: 'llovegood@hogwarts.edu')
s5 = Student.create(name: 'Hermione Granger', email_address: 'hgranger@hogwarts.edu')
s6 = Student.create(name: 'Pansy Parkinson', email_address: 'pparkinson@hogwarts.edu')
s7 = Student.create(name: 'Tom Riddle', email_address: 'triddle@hogwarts.edu')

h1 = House.create(name: 'Gryffindor', info: "\n'You might belong in Gryffindor,/Where dwell the brave at heart,/Their daring, nerve and chivalry/Set Gryffindors apart.’\n
Values: bravery, daring, nerve, and chivalry
Emblematic animal: lion
Colours: scarlet and gold
Recent Head of House: Minerva McGonagall
House ghost: Sir Nicholas de Mimsy-Porpington, also know as Nearly Headless Nick
Founder: Godric Gryffindor
Common room location: one of the highest towers at Howards, with the entrance being on the seventh floor in the east wing of the castle, guarded by The Fat Lady
Famous Gryffindors include Albus Dumbledore, Harry Potter, and Celestina Warbeck.")
h2 = House.create(name: 'Hufflepuff', info: "\n‘You might belong in Hufflepuff/Where they are just and loyal/Those patient Hufflepuffs are true/And unafraid of toil.’\n
Values: hard work, dedication, patience, loyalty, and fair play
Emblematic animal: badger
Colours: Yellow and Black
Recent Head of House: Pomona Sprout
House ghost: The Fat Friar
Founder: Helga Hufflepuff
Dormitories/common room location: somewhere in the basement, near the castle’s kitchens. It can be accessed by tapping the barrel two from the bottom, middle of the second rowin the rhythm of Helga Hufflepuff and is described as being a cosy and welcoming place with yellow hangings, fat armchairs, and underground tunnels that lead to the dormitories, which have perfectly round doors, similar to barrel tops
Famous Hufflepuffs include Hengist of Woodcroft (founder of Hogsmeade), Newt Scamander (author of Fantastic Beasts and Where to Find Them), and Artemisia Lufkin (first female minister for magic).")
h3 = House.create(name: 'Ravenclaw', info: "\n‘Or yet in wise old Ravenclaw/If you’ve a ready mind/Where those of wit and learning/Will always find their kind.’\n
Values: intelligence, knowledge, and wit
Emblematic animal: eagle
Colours are blue and bronze
Recent Head of House: Filius Flitwick
House ghost: the Grey Lady, who was the daughter of Rowena Ravenclaw, the house’s founder
Dormitories/common room location: a tower on the west side of the castle. Ravenclaw students must answer a riddle as opposed to giving a password to enter their dormitories. This riddle, however, can be answered by non-Ravenclaws
Famous Ravenclaws include Gilderoy Lockheart, Ignatia Wildsmith (inventor of Floo powder), and Garrick Ollivander.")
h4 = House.create(name: 'Slytherin', info: "\n‘Or perhaps in Slytherin/You’ll make your real friends/Those cunning folk use any means/To achieve their ends.’\n
Values: ambition, cunning and resourcefulness
Eblematic animal: serpent
Colours: emerald green and silver
Recent Head of House: Horace Slughorn
House ghost: The Bloody Baron
Founder: Salazar Slytherin
Dormitories/common room location: reached through a bare stone wall in the Dungeons. The Slytherin common room lies beneath the Black Lake. It is a long, low underground room with rough stone walls and silver lamps hanging from the ceiling
Famous Slytherins include Merlin, Tom Riddle, and Dolores Umbridge.")

Value.create(name: 'courage', student_id: s1.id, house_id: h1.id)
Value.create(name: 'ambition', student_id: s2.id, house_id: h4.id)
Value.create(name: 'loyalty', student_id: s3.id, house_id: h2.id)
Value.create(name: 'intelligence', student_id: s4.id, house_id: h3.id)
Value.create(name: 'bravery', student_id: s5.id, house_id: h1.id)
Value.create(name: 'resourcefulness', student_id: s6.id, house_id: h4.id)