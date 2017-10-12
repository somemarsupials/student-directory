# empty array for students
@students = []

# default filepath
@path = ARGV.first || "students.csv"

# print out the options for the interactive menu
def print_menu
	puts "1. Input students"
	puts "2. Show students"
	puts "3. Save the list to file"
	puts "4. Load student list from file"
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
  loop do
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
			try_load_students
    when "9"
			puts "Exiting!"
      exit 
    else
      puts "Unknown option, please try again."
    end
	end
end

# input name and cohort as a student
# convert cohort to symbol is not already a symbol
def add_student(name, cohort)
	cohort = cohort.is_a?(Symbol) ? cohort : cohort.to_sym
	@students << {name: name, cohort: cohort}
end

# student input routine
def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	# get first name
	name = STDIN.gets.chomp
	# number of new students
	new = 0
	# while name is not empty, repeat this code
	while !name.empty?
		# add new hash to the array
		add_student(name, :november)
		puts "Now we have #{@students.count} students"
		# increment counter
		new += 1
		# get another name
		name = STDIN.gets.chomp
	end
	puts "Added #{new} new students!"
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

# get a file-name from user
def get_file_name
	puts "Please enter a filename or hit enter to use the default"
	puts "Hint: default is #{@path}"
	filename = gets.chomp
	filename == "" ? @path : filename
end

# save students to default file
def save_students
	path = get_file_name
	file = File.open(path, "w")
	@students.each do |student|
		data = [student[:name], student[:cohort]]
		file.puts(data.join(","))
	end
	file.close
	puts "Successfully wrote #{@students.count} students to #{path}"
end

# load students from given filepath, or defaults to students.csv
def load_students(path)
  file = File.open(path, "r")
  file.readlines.each do |line|
		add_student(*line.chomp.split(","))
  end
  file.close
end

# wrapper around load_students to handle non-existent files
# use default filepath if non specified
def try_load_students
	path = get_file_name
	if File.exists?(path)
		load_students(path)
		puts "loaded #{@students.count} from #{path}"
	else
		puts "Sorry, #{path} doesn't exist."
		exit
	end
end

interactive_menu
