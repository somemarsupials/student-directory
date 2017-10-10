# 7: allow user to enter cohort

def input_students
	puts "Please enter names and cohorts of the students."
	puts "Either use comma-separated values or use the form 'x=y, w=z' to"
	puts "supply specific values."
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get first name
	info = gets.chomp
	# while name is not empty, repeat this code
	while !info.empty? ### more complicated user input
		hash = {}
		entries = info.split(',')
		expected = {name: "no name", cohort: "november"}
		entries.each { |s|
			if s.include? "="
				key, value = s.split("=").map { |_s| _s.strip }
				key = key.to_sym
				if !expected[key].nil?
					hash[key] = value
				else
					next
				end
			else
				hash[expected.shift[0]] = s.strip
			end
		}
		hash = expected.merge(hash)
		# add new hash to the array
		students << hash
		puts "Now we have #{students.count} students"
		# get another name
		info = gets.chomp
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
print_header
print_array(students)
print_footer(students)
