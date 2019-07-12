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

h1 = House.create(name: 'Gryffindor', info: "\n'You might belong in Gryffindor,/Where dwell the brave at heart,/Their daring, nerve and chivalry/Set Gryffindors apart.’

Gryffindor values bravery, daring, nerve, and chivalry. Its emblematic animal is the lion and its colours are scarlet and gold. Minerva McGonagall was the most recent Head of Gryffindor. Sir Nicholas de Mimsy-Porpington, also know as “Nearly Headless Nick”, was the house ghost. The founder of the house was Godric Gryffindor. Gryffindor corresponds with the element of Fire. The common room was located in one of the highest towers at Hogwarts, the entrance was situated on the seventh floor in the east wing of the castle and is guarded by a portrait of The Fat Lady. She permits entrance if given the correct password, which is changed numerous times throughout the school year. Famous Gryffindors include Albus Dumbledore, Harry Potter, and Celestina Warbeck.")
h2 = House.create(name: 'Hufflepuff', info: "\n‘You might belong in Hufflepuff/Where they are just and loyal/Those patient Hufflepuffs are true/And unafraid of toil.’

Hufflepuff values hard work, dedication, patience, loyalty, and fair play, Its emblematic animal is the badger, and Yellow and Black are its colours. Pomona Sprout was the Head of Hufflepuff during 1991-1998. [. . .]The Fat Friar is its ghost. The founder of the house was Helga Hufflepuff. Hufflepuff corresponds to the element of earth. The Hufflepuff dormitories and common roo are located somewhere in the basement, near the castle’s kitchens. It can be accessed by tapping the barrel two from the bottom, middle of the second rowin the rhythm of “Helga Hufflepuff” and is described as being a cosy and welcoming place with yellow hangings, fat armcharis, and underground tunnels that lead to the dormitories, which have perfectly round doors, similar to barrel tops. Fmaous Hufflepuffs include Hengist of Woodcroft (founder of Hogsmeade), Newt Scamander (author of Fantastic Beasts and Where to Find Them), and Artemisia Lufkin (first female minister for magic).")
h3 = House.create(name: 'Ravenclaw', info: "\n‘Or yet in wise old Ravenclaw/If you’ve a ready mind/Where those of wit and learning/Will always find their kind.’

Ravenclaw values intelligence, knowledge, and wit. Its emblematic animal is the eagle, and its colours are blue and bronze. The Ravenclaw Head of House in the 1990s was Filius Flitwick. The ghost of Ravenclaw is the Grey Lady, who was the daughter of Rowena Ravenclaw, the house’s founder. Ravenclaw corresponds to the element of air. The Ravenclaw common room and dormitories are located in a tower on the west side of the castle. Ravenclaw students must answer a riddle as opposed to giving a password to enter their dormitories. This riddle, however, can be answered by non-Ravenclaws. Famous Ravenclaws include Gilderoy Lockheart, Ignatia Wildsmith (inventor of Floo powder), and Garrick Ollivander.")
h4 = House.create(name: 'Slytherin', info: "\n‘Or perhaps in Slytherin/You’ll make your real friends/Those cunning folk use any means/To achieve their ends.’

Slytherin house values ambition, cunning and resourcefulness and was founded by Salazar Slytherin. Its emblematic animal is the serpent, and its colours are emerald green and silver. Professor Horace Slughorn was the Head of Slytherin during the 1997-1998 school year, replacing Severus Snape, who as well, replaced Slughorn as Potions Professor when he retired for the first time several years prior. The Bloody Baron is the house ghost. The founder of the hose was Salazar Slytherin. Slytherin corresponds roughly to the element of water. The Slytherin dormitories and common room are reached through a bare sone wall in the Dungeons. The Slytherin common room lies beneath the Black Lake. It is a long, low underground room with rough stone walls and silver lamps hanging from the ceiling. Famous Slytherins include Merlin, Tom Riddle, and Dolores Umbridge.")

Value.create(name: 'courage', student_id: s1.id, house_id: h1.id)
Value.create(name: 'ambition', student_id: s2.id, house_id: h4.id)
Value.create(name: 'loyalty', student_id: s3.id, house_id: h2.id)
Value.create(name: 'intelligence', student_id: s4.id, house_id: h3.id)
Value.create(name: 'bravery', student_id: s5.id, house_id: h1.id)
Value.create(name: 'resourcefulness', student_id: s6.id, house_id: h4.id)