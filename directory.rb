def interactive_menu
  students = []
  loop {
		puts "Menu:"
    puts "1. Input students"
    puts "2. Show students"
    puts "9. Exit" 
    selection = gets.chomp
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print_array(students)
      print_footer(students)
    when "9"
      exit 
    else
      puts "Unknown option, please try again."
    end
	}
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

interactive_menu
