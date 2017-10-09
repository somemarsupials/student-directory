# put students into an array
students = [
   "Dr. Hannibal Lecter",
   "Darth Vader",
   "Nurse Ratched",
   "Michael Corleone",
   "Alex DeLarge",
   "The Wicked Witch of the West",
   "Terminator",
   "Freddy Krueger",
   "The Joker",
   "Joffrey Baratheon",
   "Norman Bates",
	 ]

# print introduction
puts "The students of Villains' Academy"
puts "-" * 13

# print list of students
students.each { |s| puts s }

# print total student count
puts "Overall, we have #{students.length} great students"
