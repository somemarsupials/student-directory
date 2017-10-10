# 9: correct students to student for 1 student

def declension(n) ### use this to get correct noun
	n == 1 ? "student" : "students"
end

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
		### modified here
		puts "Now we have #{students.count} #{declension(students.length)}"
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
	length = arr.length
	### modified here
	puts "Overall, we have #{length} great #{declension(length)}"
end

# print introduction
students = input_students
print_header
print_array(students)
print_footer(students)
