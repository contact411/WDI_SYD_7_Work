require "json"

# Step 1: check file ezists?
unless File.exists?'student_database.txt'
  # Create the file
  File.open('student_database.txt', 'a+').close
else
  #step 5
  the_file_data = File.open('student_database.txt', 'r').read
  puts JSON(the_file_data) rescue []
end

#step 2: Get names

puts "Enter student names one at a time.. Press 'q' to quit"


name = gets.strip


if File.exists? 'student_database.txt'
  the_file_data = File.open('student_database.txt', 'r').read
  student_names = JSON(the_file_data) rescue []
else
  student_names = []
end
  

while name != 'q'
  student_names << name
  name = gets.strip
end

#step 3:  Convert to JSON
student_json = JSON.generate(student_names)


#step 4
File.open('student_database.txt', 'a+') do |sd|
  sd.write(student_json)
end

puts JSON.parse(File.open('student_database.txt', 'r').read)

### or

the_file_data = File.open('student_database.txt', 'r').read
puts JSON(the_file_data)

