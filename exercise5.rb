def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end


def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end

def print(students)
	student_counter = 0
	while student_counter < students.count do
		puts "at this point the counter is #{student_counter}"
		puts "#{students[student_counter][:name]} (#{students[student_counter][:cohort]} cohort)" 
		student_counter = student_counter + 1
	end
end


def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :June}
		puts "Now we have #{students.length} students"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

students = input_students
print_header
print(students)
print_footer(students)