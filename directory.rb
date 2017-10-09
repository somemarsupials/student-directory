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

# print total student count
puts "The students of Villains' Academy"
puts "-" * 13
students.each { |s| puts s }
puts "Overall, we have #{students.length} great students"
