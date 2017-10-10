# 2: only students with specific letter

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


def print_array(arr, letter) ### letter as parameter
	arr.each { |s| 
		if s[:name].start_with? letter ### only print if starts with correct letter
			puts "#{s[:name]} (#{s[:cohort]} cohort)" 
		end
	}
end


def print_footer(arr)
	puts "Overall, we have #{arr.length} great students"
end

# get letter from user
puts "Enter a letter... " ### get letter!
letter = gets.chomp[0]

# print introduction
students = input_students
print_header
print_array(students, letter)
print_footer(students)
