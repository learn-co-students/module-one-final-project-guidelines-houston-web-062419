Student.destroy_all
House.destroy_all
Values.destroy_all

s1 = Student.create(name: 'Harry Potter')
s2 = Student.create(name: 'Draco Malfoy')
s3 = Student.create(name: 'Cedric Diggory')
s4 = Student.create(name: 'Luna Lovegood')
s5 = Student.create(name: 'Hermione Granger')
s6 = Student.creat(name: 'Pansy Parkinson')

h1 = House.create(name: 'Gryffindor')
h1 = House.create(name: 'Hufflepuff')
h1 = House.create(name: 'Ravenclaw')
h1 = House.create(name: 'Slytherin')

Value.create(courage, student_id: s1.id, house_id: h1.id)
Value.create(ambition, student_id: s2.id, house_id: h4.id)
Value.create(loyalty, student_id: s3.id, house_id: h2.id)
Value.create(intelligence, student_id: s4.id, house_id: h3.id)
Value.create(bravery, student_id: s5.id, house_id: h1.id)
Value.create(resourcefulness, student_id: s6.id, house_id: h4.id)