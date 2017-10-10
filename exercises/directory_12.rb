# 12: only prints list for more than 0 students

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get first name
	name = gets.chomp
	# while name is not empty, repeat this code
	while !name.empty?
		# add new hash to the array
		students << {name: name, cohort: :november}
		puts "Now we have #{students.count} students"
		# get another name
		name = gets.chomp
	end
	students
end


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
students = input_students
if students.length > 0 ### conditional printing
	print_header
	print_array(students)
	print_footer(students)
else
	puts "No students!"
end
