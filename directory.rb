# empty array for students
@students = []

# print out the options for the interactive menu
def print_menu
	puts "1. Input students"
	puts "2. Show students"
	puts "3. Save the list to students.csv"
	puts "4. Load student list from students.csv"
  puts "9. Exit" 
end

# print out student information
def show_students
	print_header
	print_students
	print_footer
end

# interactive menu manager
def interactive_menu
  loop {
		# print menu options
		print_menu
		# get selection
    selection = STDIN.gets.chomp
		# choose proper action
    case selection
    when "1"
      @students = input_students
    when "2"
			show_students
		when "3"
			save_students
		when "4"
			load_students
    when "9"
      exit 
    else
      puts "Unknown option, please try again."
    end
	}
end

# student input routine
def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	# get first name
	name = STDIN.gets.chomp
	# while name is not empty, repeat this code
	while !name.empty?
		# add new hash to the array
		@students << {name: name, cohort: :november}
		puts "Now we have #{@students.count} students"
		# get another name
		name = STDIN.gets.chomp
	end
	@students
end

# print first part of student count
# just a header with an underline
def print_header
	puts "The students of Villains' Academy"
	puts "-" * 13
end

# print each student and corresponding cohort
def print_students
	@students.each { |s| puts "#{s[:name]} (#{s[:cohort]} cohort)" }
end

# print student count
def print_footer
	puts "Overall, we have #{@students.length} great students"
end

# save students to default file
def save_students
	file = File.open("students.csv", "w")
	@students.each do |student|
		data = [student[:name], student[:cohort]]
		csv_line = data.join(",")
		file.puts csv_line
	end
	file.close
end

# load students from given filepath, or defaults to students.csv
def load_students(path = "students.csv")
  file = File.open(path, 'r')
  file.readlines.each do |line|
  name, cohort = line.chomp.split(",")
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

# wrapper around load_students to handle non-existent files
def try_load_students
	filename = ARGV.first
	return if filename.nil?
	if File.exists?(filename)
		load_students(filename)
			puts "loaded #{@students.count} from #{filename}"
	else
		puts "Sorry, #{filename} doesn't exist."
		exit
	end
end

interactive_menu
