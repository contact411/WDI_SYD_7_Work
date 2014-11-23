the_story = File.new('story.txt')

puts the_story


####  or

database = File.new('database.txt', 'a+')
database.write("Test... 1... 2.. 3..")
database.close


########   or

File.open('database.txt', 'a+') do |database|
  database.write("askdfjhasf")
  database.write("asdasdas")
end

