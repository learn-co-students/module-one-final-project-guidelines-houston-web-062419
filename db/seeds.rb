Student.destroy_all
House.destroy_all
Value.destroy_all

s1 = Student.create(name: 'Harry Potter', email_address: 'hpotter@hogwarts.edu')
s2 = Student.create(name: 'Draco Malfoy', email_address: 'dmalfoy@hogwarts.edu')
s3 = Student.create(name: 'Cedric Diggory', email_address: 'cdiggory@hogwarts.edu')
s4 = Student.create(name: 'Luna Lovegood', email_address: 'llovegood@hogwarts.edu')
s5 = Student.create(name: 'Hermione Granger', email_address: 'hgranger@hogwarts.edu')
s6 = Student.create(name: 'Pansy Parkinson', email_address: 'pparkinson@hogwarts.edu')

h1 = House.create(name: 'Gryffindor', info: '')
h2 = House.create(name: 'Hufflepuff', info: '')
h3 = House.create(name: 'Ravenclaw', info: '')
h4 = House.create(name: 'Slytherin', info: '')

Value.create(name: 'courage', student_id: s1.id, house_id: h1.id)
Value.create(name: 'ambition', student_id: s2.id, house_id: h4.id)
Value.create(name: 'loyalty', student_id: s3.id, house_id: h2.id)
Value.create(name: 'intelligence', student_id: s4.id, house_id: h3.id)
Value.create(name: 'bravery', student_id: s5.id, house_id: h1.id)
Value.create(name: 'resourcefulness', student_id: s6.id, house_id: h4.id)