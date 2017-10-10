# 5: more information for students

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
		### more default information
		students << {name: name, cohort: :november, height: 182, age: 23}
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
	arr.each { |s| 
		### print more default information
		puts "#{s[:name]} (#{s[:cohort]} cohort, " +
			"#{s[:height]} cm, #{s[:age]} y.o.)" 
	}
end


def print_footer(arr)
	puts "Overall, we have #{arr.length} great students"
end

# print introduction
students = input_students
print_header
print_array(students)
print_footer(students)
