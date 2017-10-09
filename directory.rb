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

def print_header
	puts "The students of Villains' Academy"
	puts "-" * 13
end

def print_array(arr)
	arr.each { |s| puts s }
end

def print_footer(arr)
	puts "Overall, we have #{arr.length} great students"
end

# print introduction
print_header
print_array(students)
print_footer(students)
