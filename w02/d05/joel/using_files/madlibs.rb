print "Would you like to create a MadLibs? (y/n)"
start_again = gets.strip.downcase

if start_again == 'y'
  if File.exists? 'madlibs.txt'
    File.unlink('madlibs.txt')
  end
end


### Step 1... Do we even have a file?
unless File.exist? 'madlibs.txt'
  file = File.new('madlibs.txt', 'a+')
  file.close


  ### Step 2
  print 'Verb ending in "ing": '
  verb_ing_1 = gets.strip

  print 'Verb ending in "ing": '
  verb_ing_2 = gets.strip

  print 'Verb ending in "ed": '
  verb_ed = gets.strip

  print 'Place: '
  place = gets.strip

  print 'Verb: '
  verb_1 = gets.strip.to_i

  print 'Verb: '
  verb_2 = gets.strip.to_i

  # Step 3:  Write the data, yo!
  File.open('madlibs.txt', 'a+') do |madlibs_file|
    madlibs_file.write("Tommorrow is a new day full of new suprises and new adventures. Such as #{verb_ing_1} and #{verb_ing_2}. Tommorrow leads you to the life you haven`t #{verb_ed} yet. So why not plan to live today with the most adventurious and positive outlook. Because today is yesterday`s tommorrow and we all know that it`s good to do things differently. So let`s go to #{place} and #{verb_1} with someone cool. Or you could just let it #{verb_2} right by.")
  end

else
  #step 4: getting jiggy wit it.. Display the file
  file = File.new('madlibs.txt', 'r')
  puts file.read
end