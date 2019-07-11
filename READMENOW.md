# Hogwarts Day One Guide
The Hogwarts Day One Guide is here to help prospective students through their first day as a student.

## Usage Guide

### Initial Setup

1. Fork and clone this repository to your local machine.
2. CD into the newly cloned directory
3. Type bundle install in the terminal to get all the required gems
4. In terminal, type in 'ruby bin/run.rb' to begin the app.

## Navigating the Database
Welcome to Hogwarts School of Witchcraft and Wizardry! This database was made with the intention of showing new students the important relationship between students, houses, and what we call values - your personal principles or code of behavior. Students may peruse this database while waiting to be sorted into houses to get a grasp of the history of each houses and some of their notable members.

  - Each value belongs to a student and to a house.
  - A student has many values.
  - A house has many values.
  - Through values, a student has many house-options and a house has many students-options.

Begin your house-sorting search by selecting one of 4 options: - Search by student - Search by house - Search by value - Exit the database

## Option One – Search by Student
Upon selecting this option, you'll be given a list of all students. Select one and you'll be brought to a menu for that student with the following options:

  - Filter by houses available to that student, showing values that belong to both the student and the house.
  - List all values (ordered alphabetically) that student possesses.
  - List all values (ordered based on their overall impact score) that student possesses.
  - Return to main menu.

Upon selecting a value, you'll be given a short description along with a decision to see more info or return to the main menu.

The value info page contains info including the value’s:

  - Name
  - Student
  - House
  - A brief reason for the value’s importance
  - Value’s overall success score in classes (does having this value help in class?)
You may return to the main menu from this page.

## Option Two - Filter by House
Upon selecting this option you'll be given a list of all houses. Select one and you'll be brought to a menu for that house with the following options:

- Filter by students that have values within that house, showing values that belong to both the house and the student.
- List all values (ordered alphabetically) that house possesses.
- List all values (ordered by overall success score) that house possesses. 
- Return to main menu.
- Upon selecting a value, you'll be given a short description along with a decision to see more info (see student info page above) or return to the main menu.

## Option Three - Search by Value
Upon selecting this option you'll be asked to type the full name value you're searching for.

Once a successful search has occured, you'll be given a short description of the value along with a decision to see more info (see company info page above) or return to the main menu.

That's it! You're now lining up to get sorted into your houses by the sorting hat. Have a great school year!