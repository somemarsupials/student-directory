# put students into an array
students = [
   {name: "Dr. Hannibal Lecter", cohort: :november},
   {name: "Darth Vader", cohort: :november},
   {name: "Nurse Ratched", cohort: :november},
   {name: "Michael Corleone", cohort: :november},
   {name: "Alex DeLarge", cohort: :november},
   {name: "The Wicked Witch of the West", cohort: :november},
   {name: "Terminator", cohort: :november},
   {name: "Freddy Krueger", cohort: :november},
   {name: "The Joker", cohort: :november},
   {name: "Joffrey Baratheon", cohort: :november},
   {name: "Norman Bates", cohort: :november},
]

def print_header
	puts "The students of Villains' Academy"
	puts "-" * 13
end

def print_array(arr)
	arr.each { |s| puts "#{s[:name]} (#{s[:cohort]} cohort)" }
end

def print_footer(arr)
	puts "Overall, we have #{arr.length} great students"
end

# print introduction
print_header
print_array(students)
print_footer(students)
